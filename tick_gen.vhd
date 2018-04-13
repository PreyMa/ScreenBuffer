----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    tick_gen
-- Description: 	 Create tick signal for the system timing
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tick_gen is
    Port ( gclk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           tick : out  STD_LOGIC);
end tick_gen;

architecture Behavioral of tick_gen is
signal cnt : integer range 0 to 3;
begin

process( gclk , reset ) 
begin
	if( reset = '1') then
		cnt <= 0;
		tick <= '0';
	elsif( gclk'event and gclk = '1') then
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

