----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    serial_counter
-- Description: 	 Count serial bits received and emit TLC latch signals
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity serial_counter is
	 generic( width : natural := 17 );
    Port ( reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ovf : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
           modu : out  STD_LOGIC;
			  zero : out std_logic;
           sml_eight : out  STD_LOGIC);
end serial_counter;

architecture Behavioral of serial_counter is

	signal counter : unsigned( width downto 0 );

	begin

	count_proc : process( reset, sclk ) 
		begin
			
		if( reset = '1' ) then
			counter <= ( others => '0' );
		
		elsif( sclk' event and sclk = '1' ) then
			counter <= counter +1;
			
			if( counter = to_unsigned( 110592, width ) ) then
				counter <= (others => '0' );
			end if;			
		end if;
			
		end process count_proc;
	
	even_odd <= counter(0);
	sml_eight <= '1' when counter < to_unsigned( 8, width ) else '0';
	ovf <= '1' when counter = to_unsigned( 110592, width ) else '0';
	zero <= '1' when counter = to_unsigned( 0, width ) else '0';

	-- create tlc latch signal for every 9 pixels send to each path consisting of 48 bits
	-- plus a single offset of 8 bits for the panel address byte
	modu <=  '1' when ( counter = to_unsigned( 869, width ) ) else 
				'1' when ( counter = to_unsigned( 870, width ) ) else 
				'1' when ( counter = to_unsigned( 1733, width ) ) else 
				'1' when ( counter = to_unsigned( 1734, width ) ) else 
				'1' when ( counter = to_unsigned( 2597, width ) ) else 
				'1' when ( counter = to_unsigned( 2598, width ) ) else 
				'1' when ( counter = to_unsigned( 3461, width ) ) else 
				'1' when ( counter = to_unsigned( 3462, width ) ) else 
				'1' when ( counter = to_unsigned( 4325, width ) ) else 
				'1' when ( counter = to_unsigned( 4326, width ) ) else 
				'1' when ( counter = to_unsigned( 5189, width ) ) else 
				'1' when ( counter = to_unsigned( 5190, width ) ) else 
				'1' when ( counter = to_unsigned( 6053, width ) ) else 
				'1' when ( counter = to_unsigned( 6054, width ) ) else 
				'1' when ( counter = to_unsigned( 6917, width ) ) else 
				'1' when ( counter = to_unsigned( 6918, width ) ) else 
				'1' when ( counter = to_unsigned( 7781, width ) ) else 
				'1' when ( counter = to_unsigned( 7782, width ) ) else 
				'1' when ( counter = to_unsigned( 8645, width ) ) else 
				'1' when ( counter = to_unsigned( 8646, width ) ) else 
				'1' when ( counter = to_unsigned( 9509, width ) ) else 
				'1' when ( counter = to_unsigned( 9510, width ) ) else 
				'1' when ( counter = to_unsigned( 10373, width ) ) else 
				'1' when ( counter = to_unsigned( 10374, width ) ) else 
				'1' when ( counter = to_unsigned( 11237, width ) ) else 
				'1' when ( counter = to_unsigned( 11238, width ) ) else 
				'1' when ( counter = to_unsigned( 12101, width ) ) else 
				'1' when ( counter = to_unsigned( 12102, width ) ) else 
				'1' when ( counter = to_unsigned( 12965, width ) ) else 
				'1' when ( counter = to_unsigned( 12966, width ) ) else 
				'1' when ( counter = to_unsigned( 13829, width ) ) else 
				'1' when ( counter = to_unsigned( 13830, width ) ) else 
				'1' when ( counter = to_unsigned( 14693, width ) ) else 
				'1' when ( counter = to_unsigned( 14694, width ) ) else 
				'1' when ( counter = to_unsigned( 15557, width ) ) else 
				'1' when ( counter = to_unsigned( 15558, width ) ) else 
				'1' when ( counter = to_unsigned( 16421, width ) ) else 
				'1' when ( counter = to_unsigned( 16422, width ) ) else 
				'1' when ( counter = to_unsigned( 17285, width ) ) else 
				'1' when ( counter = to_unsigned( 17286, width ) ) else 
				'1' when ( counter = to_unsigned( 18149, width ) ) else 
				'1' when ( counter = to_unsigned( 18150, width ) ) else 
				'1' when ( counter = to_unsigned( 19013, width ) ) else 
				'1' when ( counter = to_unsigned( 19014, width ) ) else 
				'1' when ( counter = to_unsigned( 19877, width ) ) else 
				'1' when ( counter = to_unsigned( 19878, width ) ) else 
				'1' when ( counter = to_unsigned( 20741, width ) ) else 
				'1' when ( counter = to_unsigned( 20742, width ) ) else 
				'1' when ( counter = to_unsigned( 21605, width ) ) else 
				'1' when ( counter = to_unsigned( 21606, width ) ) else 
				'1' when ( counter = to_unsigned( 22469, width ) ) else 
				'1' when ( counter = to_unsigned( 22470, width ) ) else 
				'1' when ( counter = to_unsigned( 23333, width ) ) else 
				'1' when ( counter = to_unsigned( 23334, width ) ) else 
				'1' when ( counter = to_unsigned( 24197, width ) ) else 
				'1' when ( counter = to_unsigned( 24198, width ) ) else 
				'1' when ( counter = to_unsigned( 25061, width ) ) else 
				'1' when ( counter = to_unsigned( 25062, width ) ) else 
				'1' when ( counter = to_unsigned( 25925, width ) ) else 
				'1' when ( counter = to_unsigned( 25926, width ) ) else 
				'1' when ( counter = to_unsigned( 26789, width ) ) else 
				'1' when ( counter = to_unsigned( 26790, width ) ) else 
				'1' when ( counter = to_unsigned( 27653, width ) ) else 
				'1' when ( counter = to_unsigned( 27654, width ) ) else 
				'1' when ( counter = to_unsigned( 28517, width ) ) else 
				'1' when ( counter = to_unsigned( 28518, width ) ) else 
				'1' when ( counter = to_unsigned( 29381, width ) ) else 
				'1' when ( counter = to_unsigned( 29382, width ) ) else 
				'1' when ( counter = to_unsigned( 30245, width ) ) else 
				'1' when ( counter = to_unsigned( 30246, width ) ) else 
				'1' when ( counter = to_unsigned( 31109, width ) ) else 
				'1' when ( counter = to_unsigned( 31110, width ) ) else 
				'1' when ( counter = to_unsigned( 31973, width ) ) else 
				'1' when ( counter = to_unsigned( 31974, width ) ) else 
				'1' when ( counter = to_unsigned( 32837, width ) ) else 
				'1' when ( counter = to_unsigned( 32838, width ) ) else 
				'1' when ( counter = to_unsigned( 33701, width ) ) else 
				'1' when ( counter = to_unsigned( 33702, width ) ) else 
				'1' when ( counter = to_unsigned( 34565, width ) ) else 
				'1' when ( counter = to_unsigned( 34566, width ) ) else 
				'1' when ( counter = to_unsigned( 35429, width ) ) else 
				'1' when ( counter = to_unsigned( 35430, width ) ) else 
				'1' when ( counter = to_unsigned( 36293, width ) ) else 
				'1' when ( counter = to_unsigned( 36294, width ) ) else 
				'1' when ( counter = to_unsigned( 37157, width ) ) else 
				'1' when ( counter = to_unsigned( 37158, width ) ) else 
				'1' when ( counter = to_unsigned( 38021, width ) ) else 
				'1' when ( counter = to_unsigned( 38022, width ) ) else 
				'1' when ( counter = to_unsigned( 38885, width ) ) else 
				'1' when ( counter = to_unsigned( 38886, width ) ) else 
				'1' when ( counter = to_unsigned( 39749, width ) ) else 
				'1' when ( counter = to_unsigned( 39750, width ) ) else 
				'1' when ( counter = to_unsigned( 40613, width ) ) else 
				'1' when ( counter = to_unsigned( 40614, width ) ) else 
				'1' when ( counter = to_unsigned( 41477, width ) ) else 
				'1' when ( counter = to_unsigned( 41478, width ) ) else 
				'1' when ( counter = to_unsigned( 42341, width ) ) else 
				'1' when ( counter = to_unsigned( 42342, width ) ) else 
				'1' when ( counter = to_unsigned( 43205, width ) ) else 
				'1' when ( counter = to_unsigned( 43206, width ) ) else 
				'1' when ( counter = to_unsigned( 44069, width ) ) else 
				'1' when ( counter = to_unsigned( 44070, width ) ) else 
				'1' when ( counter = to_unsigned( 44933, width ) ) else 
				'1' when ( counter = to_unsigned( 44934, width ) ) else 
				'1' when ( counter = to_unsigned( 45797, width ) ) else 
				'1' when ( counter = to_unsigned( 45798, width ) ) else 
				'1' when ( counter = to_unsigned( 46661, width ) ) else 
				'1' when ( counter = to_unsigned( 46662, width ) ) else 
				'1' when ( counter = to_unsigned( 47525, width ) ) else 
				'1' when ( counter = to_unsigned( 47526, width ) ) else 
				'1' when ( counter = to_unsigned( 48389, width ) ) else 
				'1' when ( counter = to_unsigned( 48390, width ) ) else 
				'1' when ( counter = to_unsigned( 49253, width ) ) else 
				'1' when ( counter = to_unsigned( 49254, width ) ) else 
				'1' when ( counter = to_unsigned( 50117, width ) ) else 
				'1' when ( counter = to_unsigned( 50118, width ) ) else 
				'1' when ( counter = to_unsigned( 50981, width ) ) else 
				'1' when ( counter = to_unsigned( 50982, width ) ) else 
				'1' when ( counter = to_unsigned( 51845, width ) ) else 
				'1' when ( counter = to_unsigned( 51846, width ) ) else 
				'1' when ( counter = to_unsigned( 52709, width ) ) else 
				'1' when ( counter = to_unsigned( 52710, width ) ) else 
				'1' when ( counter = to_unsigned( 53573, width ) ) else 
				'1' when ( counter = to_unsigned( 53574, width ) ) else 
				'1' when ( counter = to_unsigned( 54437, width ) ) else 
				'1' when ( counter = to_unsigned( 54438, width ) ) else 
				'1' when ( counter = to_unsigned( 55301, width ) ) else 
				'1' when ( counter = to_unsigned( 55302, width ) ) else 
				'1' when ( counter = to_unsigned( 56165, width ) ) else 
				'1' when ( counter = to_unsigned( 56166, width ) ) else 
				'1' when ( counter = to_unsigned( 57029, width ) ) else 
				'1' when ( counter = to_unsigned( 57030, width ) ) else 
				'1' when ( counter = to_unsigned( 57893, width ) ) else 
				'1' when ( counter = to_unsigned( 57894, width ) ) else 
				'1' when ( counter = to_unsigned( 58757, width ) ) else 
				'1' when ( counter = to_unsigned( 58758, width ) ) else 
				'1' when ( counter = to_unsigned( 59621, width ) ) else 
				'1' when ( counter = to_unsigned( 59622, width ) ) else 
				'1' when ( counter = to_unsigned( 60485, width ) ) else 
				'1' when ( counter = to_unsigned( 60486, width ) ) else 
				'1' when ( counter = to_unsigned( 61349, width ) ) else 
				'1' when ( counter = to_unsigned( 61350, width ) ) else 
				'1' when ( counter = to_unsigned( 62213, width ) ) else 
				'1' when ( counter = to_unsigned( 62214, width ) ) else 
				'1' when ( counter = to_unsigned( 63077, width ) ) else 
				'1' when ( counter = to_unsigned( 63078, width ) ) else 
				'1' when ( counter = to_unsigned( 63941, width ) ) else 
				'1' when ( counter = to_unsigned( 63942, width ) ) else 
				'1' when ( counter = to_unsigned( 64805, width ) ) else 
				'1' when ( counter = to_unsigned( 64806, width ) ) else 
				'1' when ( counter = to_unsigned( 65669, width ) ) else 
				'1' when ( counter = to_unsigned( 65670, width ) ) else 
				'1' when ( counter = to_unsigned( 66533, width ) ) else 
				'1' when ( counter = to_unsigned( 66534, width ) ) else 
				'1' when ( counter = to_unsigned( 67397, width ) ) else 
				'1' when ( counter = to_unsigned( 67398, width ) ) else 
				'1' when ( counter = to_unsigned( 68261, width ) ) else 
				'1' when ( counter = to_unsigned( 68262, width ) ) else 
				'1' when ( counter = to_unsigned( 69125, width ) ) else 
				'1' when ( counter = to_unsigned( 69126, width ) ) else 
				'1' when ( counter = to_unsigned( 69989, width ) ) else 
				'1' when ( counter = to_unsigned( 69990, width ) ) else 
				'1' when ( counter = to_unsigned( 70853, width ) ) else 
				'1' when ( counter = to_unsigned( 70854, width ) ) else 
				'1' when ( counter = to_unsigned( 71717, width ) ) else 
				'1' when ( counter = to_unsigned( 71718, width ) ) else 
				'1' when ( counter = to_unsigned( 72581, width ) ) else 
				'1' when ( counter = to_unsigned( 72582, width ) ) else 
				'1' when ( counter = to_unsigned( 73445, width ) ) else 
				'1' when ( counter = to_unsigned( 73446, width ) ) else 
				'1' when ( counter = to_unsigned( 74309, width ) ) else 
				'1' when ( counter = to_unsigned( 74310, width ) ) else 
				'1' when ( counter = to_unsigned( 75173, width ) ) else 
				'1' when ( counter = to_unsigned( 75174, width ) ) else 
				'1' when ( counter = to_unsigned( 76037, width ) ) else 
				'1' when ( counter = to_unsigned( 76038, width ) ) else 
				'1' when ( counter = to_unsigned( 76901, width ) ) else 
				'1' when ( counter = to_unsigned( 76902, width ) ) else 
				'1' when ( counter = to_unsigned( 77765, width ) ) else 
				'1' when ( counter = to_unsigned( 77766, width ) ) else 
				'1' when ( counter = to_unsigned( 78629, width ) ) else 
				'1' when ( counter = to_unsigned( 78630, width ) ) else 
				'1' when ( counter = to_unsigned( 79493, width ) ) else 
				'1' when ( counter = to_unsigned( 79494, width ) ) else 
				'1' when ( counter = to_unsigned( 80357, width ) ) else 
				'1' when ( counter = to_unsigned( 80358, width ) ) else 
				'1' when ( counter = to_unsigned( 81221, width ) ) else 
				'1' when ( counter = to_unsigned( 81222, width ) ) else 
				'1' when ( counter = to_unsigned( 82085, width ) ) else 
				'1' when ( counter = to_unsigned( 82086, width ) ) else 
				'1' when ( counter = to_unsigned( 82949, width ) ) else 
				'1' when ( counter = to_unsigned( 82950, width ) ) else 
				'1' when ( counter = to_unsigned( 83813, width ) ) else 
				'1' when ( counter = to_unsigned( 83814, width ) ) else 
				'1' when ( counter = to_unsigned( 84677, width ) ) else 
				'1' when ( counter = to_unsigned( 84678, width ) ) else 
				'1' when ( counter = to_unsigned( 85541, width ) ) else 
				'1' when ( counter = to_unsigned( 85542, width ) ) else 
				'1' when ( counter = to_unsigned( 86405, width ) ) else 
				'1' when ( counter = to_unsigned( 86406, width ) ) else 
				'1' when ( counter = to_unsigned( 87269, width ) ) else 
				'1' when ( counter = to_unsigned( 87270, width ) ) else 
				'1' when ( counter = to_unsigned( 88133, width ) ) else 
				'1' when ( counter = to_unsigned( 88134, width ) ) else 
				'1' when ( counter = to_unsigned( 88997, width ) ) else 
				'1' when ( counter = to_unsigned( 88998, width ) ) else 
				'1' when ( counter = to_unsigned( 89861, width ) ) else 
				'1' when ( counter = to_unsigned( 89862, width ) ) else 
				'1' when ( counter = to_unsigned( 90725, width ) ) else 
				'1' when ( counter = to_unsigned( 90726, width ) ) else 
				'1' when ( counter = to_unsigned( 91589, width ) ) else 
				'1' when ( counter = to_unsigned( 91590, width ) ) else 
				'1' when ( counter = to_unsigned( 92453, width ) ) else 
				'1' when ( counter = to_unsigned( 92454, width ) ) else 
				'1' when ( counter = to_unsigned( 93317, width ) ) else 
				'1' when ( counter = to_unsigned( 93318, width ) ) else 
				'1' when ( counter = to_unsigned( 94181, width ) ) else 
				'1' when ( counter = to_unsigned( 94182, width ) ) else 
				'1' when ( counter = to_unsigned( 95045, width ) ) else 
				'1' when ( counter = to_unsigned( 95046, width ) ) else 
				'1' when ( counter = to_unsigned( 95909, width ) ) else 
				'1' when ( counter = to_unsigned( 95910, width ) ) else 
				'1' when ( counter = to_unsigned( 96773, width ) ) else 
				'1' when ( counter = to_unsigned( 96774, width ) ) else 
				'1' when ( counter = to_unsigned( 97637, width ) ) else 
				'1' when ( counter = to_unsigned( 97638, width ) ) else 
				'1' when ( counter = to_unsigned( 98501, width ) ) else 
				'1' when ( counter = to_unsigned( 98502, width ) ) else 
				'1' when ( counter = to_unsigned( 99365, width ) ) else 
				'1' when ( counter = to_unsigned( 99366, width ) ) else 
				'1' when ( counter = to_unsigned( 100229, width ) ) else 
				'1' when ( counter = to_unsigned( 100230, width ) ) else 
				'1' when ( counter = to_unsigned( 101093, width ) ) else 
				'1' when ( counter = to_unsigned( 101094, width ) ) else 
				'1' when ( counter = to_unsigned( 101957, width ) ) else 
				'1' when ( counter = to_unsigned( 101958, width ) ) else 
				'1' when ( counter = to_unsigned( 102821, width ) ) else 
				'1' when ( counter = to_unsigned( 102822, width ) ) else 
				'1' when ( counter = to_unsigned( 103685, width ) ) else 
				'1' when ( counter = to_unsigned( 103686, width ) ) else 
				'1' when ( counter = to_unsigned( 104549, width ) ) else 
				'1' when ( counter = to_unsigned( 104550, width ) ) else 
				'1' when ( counter = to_unsigned( 105413, width ) ) else 
				'1' when ( counter = to_unsigned( 105414, width ) ) else 
				'1' when ( counter = to_unsigned( 106277, width ) ) else 
				'1' when ( counter = to_unsigned( 106278, width ) ) else 
				'1' when ( counter = to_unsigned( 107141, width ) ) else 
				'1' when ( counter = to_unsigned( 107142, width ) ) else 
				'1' when ( counter = to_unsigned( 108005, width ) ) else 
				'1' when ( counter = to_unsigned( 108006, width ) ) else 
				'1' when ( counter = to_unsigned( 108869, width ) ) else 
				'1' when ( counter = to_unsigned( 108870, width ) ) else 
				'1' when ( counter = to_unsigned( 109733, width ) ) else 
				'1' when ( counter = to_unsigned( 109734, width ) ) else 
				'1' when ( counter = to_unsigned( 110597, width ) ) else 
				'1' when ( counter = to_unsigned( 110598, width ) ) else 
				'0';

end Behavioral;

