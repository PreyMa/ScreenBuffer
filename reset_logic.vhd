----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    reset_logic
-- Description: 	 Create the reset signal based on the serial clocj input
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity reset_logic is
	 generic( log_pulse_length : natural := 16 );
    Port ( sclk : in  STD_LOGIC;
           tick : in  STD_LOGIC;
           gclk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end reset_logic;

architecture Behavioral of reset_logic is

signal reg : unsigned ( log_pulse_length-1 downto 0 );
signal qsig : std_logic;

begin

qsig <= '1' when ( ( not reg ) = 0 ) else '0';
q    <= qsig;

ctr: process( gclk, sclk )
begin
	
	if( gclk'event and gclk= '1' ) then
	
		if( sclk = '0' ) then
			reg <= ( others => '0' );
			
		elsif( tick= '1' ) then
			if( qsig = '0' ) then
				reg<= reg+1 ;
			end if;
		end if;
	end if;
end process ctr;

end Behavioral;

