----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    serial_shifter
-- Description: 	 Shift in address to parallel
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_shifter is
    Port ( sclk : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
           enable : in  STD_LOGIC;
           brecv : out  STD_LOGIC;
			  mode_data_reset : in std_logic;
           reset : in  STD_LOGIC);
end serial_shifter;

architecture Behavioral of serial_shifter is

signal reg : std_logic_vector ( 7 downto 0 );

begin

dout <= reg;
brecv <= not enable;

shift : process( reset, sclk, mode_data_reset) 
begin
	
	if( (reset = '1') or (mode_data_reset = '1') ) then
		reg <= ( others => '0' );
	
	elsif( sclk' event and sclk= '1' ) then
		if( enable = '1' ) then
			reg <= reg( 6 downto 0 ) & sdin;
		
		end if;
	end if;
end process shift;

end Behavioral;

