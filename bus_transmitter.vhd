----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    bus_transmitter
-- Description: 	 Channel through all serial ouput signals to the single SDOUT
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bus_transmitter is
    Port ( panel_select : in  STD_LOGIC;
           even_odd : in  STD_LOGIC;
           miso_a : in  STD_LOGIC;
           miso_b : in  STD_LOGIC;
           sdprev : in  STD_LOGIC;
           sdprev_ignore : in  STD_LOGIC;
           sdout : out  STD_LOGIC);
end bus_transmitter;

architecture Behavioral of bus_transmitter is

signal miso : std_logic;

begin

miso <= miso_a when even_odd = '1' else miso_b;
sdout <= miso when panel_select = '1' else ( sdprev and ( not sdprev_ignore ) );

end Behavioral;

