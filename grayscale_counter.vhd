----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:53:46 04/12/2018 
-- Design Name: 
-- Module Name:    grayscale_counter - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity grayscale_counter is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : in  STD_LOGIC;
           line_select : out  STD_LOGIC_VECTOR (7 downto 0);
           grayscale_clk : out  STD_LOGIC);
end grayscale_counter;

architecture Behavioral of grayscale_counter is
signal cnt_gclk : integer range 0 to 256;
signal cnt_lines : integer range 0 to 7;
signal grayclk : std_logic;
signal line_en : std_logic;
begin

																--Grayscale clock ausgeben
grayscale_clk <= grayclk;

toggle: process( clk, reset, tick)
begin
if( reset = '1') then
	grayclk <= '0';
	line_en <= '0';
elsif( clk'event and clk = '1') then
if( tick = '1' ) then
	line_en <= '1';
	grayclk <= not grayclk;
end if;
end if;
end process toggle;


count: process(clk, reset) 
begin
if( reset = '1' ) then
	cnt_gclk <= 256;											--Reset Zyclencounter
	cnt_lines <= 7;											--Reset Linecounter
	
elsif ( clk'event and clk = '1') then
	if( tick = '1' and grayclk = '0' ) then
	if( cnt_gclk = 256 ) then							--Zyclencounter overflow
		cnt_gclk <= 0;
		
		if( cnt_lines = 7) then							--Linecounter overflow
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

line_select <= "11111111" when reset = '1' else								-- Async Line select
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

