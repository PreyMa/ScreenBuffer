----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    topmodule
-- Description: 	 Topmodule mapping all components together
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity topmodule is
    Port ( gclk : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           sdout : out  STD_LOGIC;
           sdprev : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
			  sdprev_en : out std_logic;
           proc_rcv_en : in  STD_LOGIC;
           proc_wr_a : in  STD_LOGIC;
           proc_wr_b : in  STD_LOGIC;
           proc_latch : in  STD_LOGIC;
           proc_sclk : in  STD_LOGIC;
           proc_mosi : in  STD_LOGIC;
           proc_grclk_en : in  STD_LOGIC;
			  addr_sel : in std_logic_vector( 3 downto 0 );
           miso_a : in  STD_LOGIC;
           miso_b : in  STD_LOGIC;
           mosi_a : out  STD_LOGIC;
           mosi_b : out  STD_LOGIC;
           tsclk_a : out  STD_LOGIC;
           tsclk_b : out  STD_LOGIC;
           latch_out1 : out  STD_LOGIC;
			  latch_out2 : out  STD_LOGIC;
           grayscale_clk : out  STD_LOGIC;
           line_select : out  STD_LOGIC_VECTOR (7 downto 0);
           mode_data : out  STD_LOGIC_VECTOR (2 downto 0);
           reset : out  STD_LOGIC;
           done : out  STD_LOGIC;
           panel_select : out  STD_LOGIC);
end topmodule;

architecture Behavioral of topmodule is

-- Component declarations
component bus_transmitter is
    Port ( panel_select : in  STD_LOGIC;
           even_odd : in  STD_LOGIC;
           miso_a : in  STD_LOGIC;
           miso_b : in  STD_LOGIC;
           sdprev : in  STD_LOGIC;
           sdprev_ignore : in  STD_LOGIC;
           sdout : out  STD_LOGIC);
end component bus_transmitter;

component grayscale_logic is
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
end component grayscale_logic;

component reset_logic is
	 generic( log_pulse_length : natural := 16 );
    Port ( sclk : in  STD_LOGIC;
           tick : in  STD_LOGIC;
           gclk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end component reset_logic;

component serial_input is
    Port ( proc_rcv_en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           addr_sel : in  STD_LOGIC_VECTOR (3 downto 0);
           mode_data : out  STD_LOGIC_VECTOR (2 downto 0);
           latch_out1 : out  STD_LOGIC;
			  latch_out2 : out  STD_LOGIC;
           sel : out  STD_LOGIC;
			  done : out std_logic;
           sdprev_ignore : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
			  zero : out std_logic;
           proc_latch : in  STD_LOGIC);
end component serial_input;

component serial_interface is
    Port ( Proc_rcv_en : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           Proc_mosi : in  STD_LOGIC;
           even_odd : in  STD_LOGIC;
			  ctr_zero : in std_logic;
           Proc_wr_a : in  STD_LOGIC;
           Proc_wr_b : in  STD_LOGIC;
           Proc_sclk : in  STD_LOGIC;
			  panel_select : in std_logic;
			  sclk : in std_logic;
			  reset : in std_logic;
           mosi_a : out  STD_LOGIC;
           sclk_a : out  STD_LOGIC;
           mosi_b : out  STD_LOGIC;
           sclk_b : out  STD_LOGIC);
end component serial_interface;

-- Local mapping signal declarations
signal panel_sel : std_logic;
signal even_odd : std_logic;
signal sdprev_ignore : std_logic;
signal tick : std_logic;
signal greset : std_logic;
signal zero : std_logic;

begin

	panel_select <= 	  panel_sel;
	reset 		 <= 	  greset;
	sdprev_en	 <= not sdprev_ignore;

	grclkgen : grayscale_logic
	port map(
		reset				 => greset,
		clk				 => gclk,
		tick 				 => tick,
		proc_sclk		 => proc_sclk,
		proc_rcv_en		 => proc_rcv_en,
		proc_wr_a		 => proc_wr_a,
		proc_wr_b		 => proc_wr_b,
		proc_grclk_en	 => proc_grclk_en,
		line_sel			 => line_select,
		grayscale_clock => grayscale_clk
	);

	trans	: bus_transmitter
	port map(
		panel_select	=> panel_sel,
		even_odd			=> even_odd,
		miso_a			=> miso_a,
		miso_b			=> miso_b,
		sdprev			=> sdprev,
		sdprev_ignore	=> sdprev_ignore,
		sdout				=> sdout
	);

	serinf : serial_interface
	port map(
		proc_rcv_en  => proc_rcv_en,
		sdin			 => sdin,
		proc_mosi	 => proc_mosi,
		even_odd		 => even_odd,
		ctr_zero		 => zero,
		proc_wr_a	 => proc_wr_a,
		proc_wr_b	 => proc_wr_b,
		proc_sclk	 => proc_sclk,
		panel_select => panel_sel,
		sclk			 => sclk,
		reset			 => greset,
		mosi_a		 => mosi_a,
		mosi_b		 => mosi_b,
		sclk_a		 => tsclk_a,
		sclk_b		 => tsclk_b
	);

	res : reset_logic
	port map(
		tick => tick,
		gclk => gclk,
		sclk => sclk,
		q	  => greset
	);
	
	ser_in : serial_input
	port map(
		proc_rcv_en 	=> proc_rcv_en,
		reset				=> greset,
		sdin 				=> sdin,
		sclk 				=> sclk,
		addr_sel 		=> addr_sel,
		mode_data 		=> mode_data,
		latch_out1 		=> latch_out1,
		latch_out2 		=> latch_out2,
		sel 				=> panel_sel,
		done				=> done,
		sdprev_ignore 	=> sdprev_ignore,
		even_odd 		=> even_odd,
		zero				=> zero,
		proc_latch 		=> proc_latch
	);

end Behavioral;

