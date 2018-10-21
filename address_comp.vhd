----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    address_comp
-- Description: 	 Compare address to selection and check parity
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity address_comp is
    Port ( addr_sel : in  STD_LOGIC_VECTOR (3 downto 0);
           serial_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  mode_data : out  STD_LOGIC_VECTOR (2 downto 0);
           addr_valid : out  STD_LOGIC;
           sdprev_disable : out  STD_LOGIC;
			  byte_rcvd : in std_logic);
end address_comp;

architecture Behavioral of address_comp is

signal input_parity : std_logic;

begin
	input_parity <= 	serial_in(6) xor serial_in(5) xor serial_in(4) xor 
							serial_in(3) xor serial_in(2) xor serial_in(1) xor
							serial_in(0);
							
	mode_data <= serial_in( 6 downto 4 );
	
	sdprev_disable <= '1' when ( addr_sel = "0000" ) else '0';
	
	addr_valid <= '1' when ( byte_rcvd = '1' ) and ( addr_sel = serial_in( 3 downto 0 ) ) and ( input_parity = serial_in(7) ) else '0';

end Behavioral;

