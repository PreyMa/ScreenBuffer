----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    grayscale_counter
-- Description: 	 Count grayscale clocks and update line
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity grayscale_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : in  STD_LOGIC;
           line_select : out  STD_LOGIC_VECTOR (7 downto 0);
           grayscale_clk : out  STD_LOGIC);
end grayscale_counter;

architecture Behavioral of grayscale_counter is

signal cnt_gclk : integer range 0 to 128;
signal cnt_lines : integer range 0 to 7;
signal grayclk : std_logic;
signal line_en : std_logic;

begin
															-- Output grayscale clock
grayscale_clk <= grayclk;

toggle: process( clk, reset, tick)
begin
if( reset = '1') then								-- Reset grayscale toggle flip-flop
	grayclk <= '0';									-- Reset output enable flag
	line_en <= '0';
elsif( clk'event and clk = '1') then
	if( tick = '1' ) then							
		line_en <= '1';								-- Set enable output flag after first clock
		grayclk <= not grayclk;						-- Toggle grayscale clock to create 50:50 signal
	end if;
end if;
end process toggle;


count: process(clk, reset) 
begin
if( reset = '1' ) then
	cnt_gclk <= 128;									-- Reset cycle counter
	cnt_lines <= 7;									-- Reset line counter
	
elsif ( clk'event and clk = '1') then
	-- if( tick = '1' and grayclk = '0' ) then   running in positive edge only mode
	if( tick = '1' and grayclk = '0') then 							-- running in double edge mode
		if( cnt_gclk = 128 ) then					-- Cycle counter overflow
			cnt_gclk <= 0;
			
			if( cnt_lines = 7) then					-- Line counter overflow
				cnt_lines <= 0;
			else
				cnt_lines <= cnt_lines +1;		
			end if;
			
		else 
			cnt_gclk <= cnt_gclk +1;
		end if;
	end if;
end if;
end process count;

line_select <= "11111111" when reset = '1' else								-- Async line select
					"11111110" when cnt_lines = 0 and line_en = '1' else
					"11111101" when cnt_lines = 1 and line_en = '1' else
					"11111011" when cnt_lines = 2 and line_en = '1' else
					"11110111" when cnt_lines = 3 and line_en = '1' else
					"11101111" when cnt_lines = 4 and line_en = '1' else
					"11011111" when cnt_lines = 5 and line_en = '1' else
					"10111111" when cnt_lines = 6 and line_en = '1' else
					"01111111" when cnt_lines = 7 and line_en = '1' else
					"11111111";

end Behavioral;

