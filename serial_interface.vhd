----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    serial_interface
-- Description: 	 Multiplex the different serial signals and activate tlc paths
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_interface is
    Port ( Proc_rcv_en : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           Proc_mosi : in  STD_LOGIC;
           even_odd : in  STD_LOGIC;
			  ctr_zero : in std_logic;
           Proc_wr_a : in  STD_LOGIC;
           Proc_wr_b : in  STD_LOGIC;
           proc_sclk : in  STD_LOGIC;
			  panel_select : in std_logic;
			  reset : in std_logic;
			  sclk : in std_logic;
           mosi_a : out  STD_LOGIC;
           sclk_a : out  STD_LOGIC;
           mosi_b : out  STD_LOGIC;
           sclk_b : out  STD_LOGIC);
end serial_interface;

architecture Behavioral of serial_interface is

signal flipflop_a : std_logic;
signal flipflop_b : std_logic;
signal ff_a_en : std_logic;
signal ff_b_en : std_logic;

begin

flipflops : process(sclk, reset) 
begin

	if( sclk' event and sclk = '1' ) then
		if( even_odd = '0' ) then 					-- save value for a, when next even_odd will be '1' after sclk edge
			flipflop_a <= sdin;						-- stretch value a
			ff_a_en <= panel_select or ff_a_en;	-- enable value after first cycle
		else
			flipflop_b <= sdin;
			ff_b_en <= panel_select or ff_b_en;
		end if;
		
		if( ctr_zero = '1' ) then 					-- synchronous reset on frame begin
			flipflop_a <= '0';
			flipflop_b <= '0';
			
			ff_a_en <= '0';
			ff_b_en <= '0';
		end if;
	end if;
	
	if( reset = '1' ) then							-- asynchronous reset via frame bus
		flipflop_a <= '0';
		flipflop_b <= '0';
		
		ff_a_en <= '0';
		ff_b_en <= '0';
	end if;
	
end process flipflops;

-- either pass thorugh the processor serial data when receive_enable is low
-- or use the streched out signal from the flipflop if the panel is selected
mosi_a <= (proc_mosi and proc_wr_a) when proc_rcv_en = '0' else (flipflop_a	and panel_select);
sclk_a <= (proc_sclk and proc_wr_a) when proc_rcv_en = '0' else (not even_odd	and panel_select and ff_a_en );

mosi_b <= (proc_mosi and proc_wr_b) when proc_rcv_en = '0' else (flipflop_b   and panel_select);
sclk_b <= (proc_sclk and proc_wr_b) when proc_rcv_en = '0' else (even_odd 		and panel_select and ff_b_en );

end Behavioral;

