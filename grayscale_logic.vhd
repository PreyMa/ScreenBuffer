----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    grayscale_logic
-- Description: 	 Create the grayscale clock and line selection signal
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity grayscale_logic is
    Port ( reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           proc_sclk : in  STD_LOGIC;
           proc_wr_a : in  STD_LOGIC;
           proc_wr_b : in  STD_LOGIC;
           proc_rcv_en : in  STD_LOGIC;
           proc_grclk_en : in  STD_LOGIC;
           tick : out  STD_LOGIC;
           line_sel : out  STD_LOGIC_VECTOR (7 downto 0);
           grayscale_clock : out  STD_LOGIC);
end grayscale_logic;

architecture Behavioral of grayscale_logic is

-- Component declarations
component tick_gen is
    Port ( gclk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : out  STD_LOGIC);
end component tick_gen;

component grayscale_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : in  STD_LOGIC;
           line_select : out  STD_LOGIC_VECTOR (7 downto 0);
           grayscale_clk : out  STD_LOGIC);
end component grayscale_counter;

component sync_pulser is
    Port ( clk : in  STD_LOGIC;
           insig : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  nen_ctr : in std_logic;
			  hlf   : out  std_logic;
           q : out  STD_LOGIC);
end component sync_pulser;

-- Local signal declarations
signal ticksig : std_logic;
signal sync_proc_sclk : std_logic;
signal tick_sel : std_logic;
signal ctr_tick : std_logic;
signal ctr_en : std_logic;
signal ctr_reset : std_logic;
signal grclk_ctr_sig : std_logic;
signal proc_sclk_hlf : std_logic;

begin

	tick <= ticksig;
	
	tick_sel <= proc_wr_a and proc_wr_b and proc_rcv_en;					-- check if proc emits grclks
	
	ctr_reset 	<= reset or ( clk and ( not proc_grclk_en ) );			-- reset the ctr
	ctr_en		<= sync_proc_sclk when tick_sel = '1' else ticksig;	-- select ctr tick 
	ctr_tick		<= proc_grclk_en and ctr_en;									-- enable the ctr via proc_grclk_en 
	
	grayscale_clock <= proc_sclk_hlf when tick_sel = '1' else grclk_ctr_sig;	-- select grayscale clock signal


	pulser : sync_pulser
	port map( 
		clk 	=> clk,
		insig => proc_sclk,
		reset => reset,
		nen_ctr => tick_sel,
		hlf => proc_sclk_hlf,
		q		=> sync_proc_sclk
	);
	
	tgen : tick_gen
	port map(
		gclk => clk,
		tick => ticksig,
		reset => reset
	);
	
	ctr : grayscale_counter
	port map(
		clk	=> clk,
		tick	=> ctr_tick,
		reset => ctr_reset,
		line_select => line_sel,
		grayscale_clk => grclk_ctr_sig
	);

end Behavioral;

