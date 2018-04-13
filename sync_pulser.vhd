----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    sync_pulser
-- Description: 	 Sync a static high signal to a single clock endge
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sync_pulser is
    Port ( clk : in  STD_LOGIC;
           insig : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC);
end sync_pulser;

architecture Behavioral of sync_pulser is

signal prev : std_logic;

begin

q <= insig and not prev;

flipflop : process( clk, reset )
begin

	if( reset = '1' ) then
		prev <= '0';
		
	elsif( clk' event and clk= '1' ) then
		prev <= insig;
	end if;

end process flipflop;

end Behavioral;

