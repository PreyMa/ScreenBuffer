----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:48:29 04/12/2018 
-- Design Name: 
-- Module Name:    grayscale_div - Behavioral 
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

entity tick_cnt is
    Port ( gclk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : out  STD_LOGIC);
end tick_cnt;

architecture Behavioral of tick_cnt is
signal cnt : integer range 0 to 3;
begin

process( clk , reset ) 
begin
	if( reset = '1') then
		cnt <= 0;
		tick <= '0';
	elsif( clk'event and clk = '1') then
		if( cnt = 3 ) then
			cnt <= 0;
			tick <= '1';
		else
			tick <= '0';
			cnt <= cnt + 1;
		end if;
	end if;
end process;

end Behavioral;

