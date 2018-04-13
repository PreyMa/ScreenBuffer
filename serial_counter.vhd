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

entity serial_counter is
	 generic( width : natural := 17 );
    Port ( reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ovf : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
           modu : out  STD_LOGIC;
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

	modu <= '1' when ( counter = to_unsigned( 861, width ) ) else 
	'1' when ( counter = to_unsigned( 862, width ) ) else 
	'1' when ( counter = to_unsigned( 1725, width ) ) else 
	'1' when ( counter = to_unsigned( 1726, width ) ) else 
	'1' when ( counter = to_unsigned( 2589, width ) ) else 
	'1' when ( counter = to_unsigned( 2590, width ) ) else 
	'1' when ( counter = to_unsigned( 3453, width ) ) else 
	'1' when ( counter = to_unsigned( 3454, width ) ) else 
	'1' when ( counter = to_unsigned( 4317, width ) ) else 
	'1' when ( counter = to_unsigned( 4318, width ) ) else 
	'1' when ( counter = to_unsigned( 5181, width ) ) else 
	'1' when ( counter = to_unsigned( 5182, width ) ) else 
	'1' when ( counter = to_unsigned( 6045, width ) ) else 
	'1' when ( counter = to_unsigned( 6046, width ) ) else 
	'1' when ( counter = to_unsigned( 6909, width ) ) else 
	'1' when ( counter = to_unsigned( 6910, width ) ) else 
	'1' when ( counter = to_unsigned( 7773, width ) ) else 
	'1' when ( counter = to_unsigned( 7774, width ) ) else 
	'1' when ( counter = to_unsigned( 8637, width ) ) else 
	'1' when ( counter = to_unsigned( 8638, width ) ) else 
	'1' when ( counter = to_unsigned( 9501, width ) ) else 
	'1' when ( counter = to_unsigned( 9502, width ) ) else 
	'1' when ( counter = to_unsigned( 10365, width ) ) else 
	'1' when ( counter = to_unsigned( 10366, width ) ) else 
	'1' when ( counter = to_unsigned( 11229, width ) ) else 
	'1' when ( counter = to_unsigned( 11230, width ) ) else 
	'1' when ( counter = to_unsigned( 12093, width ) ) else 
	'1' when ( counter = to_unsigned( 12094, width ) ) else 
	'1' when ( counter = to_unsigned( 12957, width ) ) else 
	'1' when ( counter = to_unsigned( 12958, width ) ) else 
	'1' when ( counter = to_unsigned( 13821, width ) ) else 
	'1' when ( counter = to_unsigned( 13822, width ) ) else 
	'1' when ( counter = to_unsigned( 14685, width ) ) else 
	'1' when ( counter = to_unsigned( 14686, width ) ) else 
	'1' when ( counter = to_unsigned( 15549, width ) ) else 
	'1' when ( counter = to_unsigned( 15550, width ) ) else 
	'1' when ( counter = to_unsigned( 16413, width ) ) else 
	'1' when ( counter = to_unsigned( 16414, width ) ) else 
	'1' when ( counter = to_unsigned( 17277, width ) ) else 
	'1' when ( counter = to_unsigned( 17278, width ) ) else 
	'1' when ( counter = to_unsigned( 18141, width ) ) else 
	'1' when ( counter = to_unsigned( 18142, width ) ) else 
	'1' when ( counter = to_unsigned( 19005, width ) ) else 
	'1' when ( counter = to_unsigned( 19006, width ) ) else 
	'1' when ( counter = to_unsigned( 19869, width ) ) else 
	'1' when ( counter = to_unsigned( 19870, width ) ) else 
	'1' when ( counter = to_unsigned( 20733, width ) ) else 
	'1' when ( counter = to_unsigned( 20734, width ) ) else 
	'1' when ( counter = to_unsigned( 21597, width ) ) else 
	'1' when ( counter = to_unsigned( 21598, width ) ) else 
	'1' when ( counter = to_unsigned( 22461, width ) ) else 
	'1' when ( counter = to_unsigned( 22462, width ) ) else 
	'1' when ( counter = to_unsigned( 23325, width ) ) else 
	'1' when ( counter = to_unsigned( 23326, width ) ) else 
	'1' when ( counter = to_unsigned( 24189, width ) ) else 
	'1' when ( counter = to_unsigned( 24190, width ) ) else 
	'1' when ( counter = to_unsigned( 25053, width ) ) else 
	'1' when ( counter = to_unsigned( 25054, width ) ) else 
	'1' when ( counter = to_unsigned( 25917, width ) ) else 
	'1' when ( counter = to_unsigned( 25918, width ) ) else 
	'1' when ( counter = to_unsigned( 26781, width ) ) else 
	'1' when ( counter = to_unsigned( 26782, width ) ) else 
	'1' when ( counter = to_unsigned( 27645, width ) ) else 
	'1' when ( counter = to_unsigned( 27646, width ) ) else 
	'1' when ( counter = to_unsigned( 28509, width ) ) else 
	'1' when ( counter = to_unsigned( 28510, width ) ) else 
	'1' when ( counter = to_unsigned( 29373, width ) ) else 
	'1' when ( counter = to_unsigned( 29374, width ) ) else 
	'1' when ( counter = to_unsigned( 30237, width ) ) else 
	'1' when ( counter = to_unsigned( 30238, width ) ) else 
	'1' when ( counter = to_unsigned( 31101, width ) ) else 
	'1' when ( counter = to_unsigned( 31102, width ) ) else 
	'1' when ( counter = to_unsigned( 31965, width ) ) else 
	'1' when ( counter = to_unsigned( 31966, width ) ) else 
	'1' when ( counter = to_unsigned( 32829, width ) ) else 
	'1' when ( counter = to_unsigned( 32830, width ) ) else 
	'1' when ( counter = to_unsigned( 33693, width ) ) else 
	'1' when ( counter = to_unsigned( 33694, width ) ) else 
	'1' when ( counter = to_unsigned( 34557, width ) ) else 
	'1' when ( counter = to_unsigned( 34558, width ) ) else 
	'1' when ( counter = to_unsigned( 35421, width ) ) else 
	'1' when ( counter = to_unsigned( 35422, width ) ) else 
	'1' when ( counter = to_unsigned( 36285, width ) ) else 
	'1' when ( counter = to_unsigned( 36286, width ) ) else 
	'1' when ( counter = to_unsigned( 37149, width ) ) else 
	'1' when ( counter = to_unsigned( 37150, width ) ) else 
	'1' when ( counter = to_unsigned( 38013, width ) ) else 
	'1' when ( counter = to_unsigned( 38014, width ) ) else 
	'1' when ( counter = to_unsigned( 38877, width ) ) else 
	'1' when ( counter = to_unsigned( 38878, width ) ) else 
	'1' when ( counter = to_unsigned( 39741, width ) ) else 
	'1' when ( counter = to_unsigned( 39742, width ) ) else 
	'1' when ( counter = to_unsigned( 40605, width ) ) else 
	'1' when ( counter = to_unsigned( 40606, width ) ) else 
	'1' when ( counter = to_unsigned( 41469, width ) ) else 
	'1' when ( counter = to_unsigned( 41470, width ) ) else 
	'1' when ( counter = to_unsigned( 42333, width ) ) else 
	'1' when ( counter = to_unsigned( 42334, width ) ) else 
	'1' when ( counter = to_unsigned( 43197, width ) ) else 
	'1' when ( counter = to_unsigned( 43198, width ) ) else 
	'1' when ( counter = to_unsigned( 44061, width ) ) else 
	'1' when ( counter = to_unsigned( 44062, width ) ) else 
	'1' when ( counter = to_unsigned( 44925, width ) ) else 
	'1' when ( counter = to_unsigned( 44926, width ) ) else 
	'1' when ( counter = to_unsigned( 45789, width ) ) else 
	'1' when ( counter = to_unsigned( 45790, width ) ) else 
	'1' when ( counter = to_unsigned( 46653, width ) ) else 
	'1' when ( counter = to_unsigned( 46654, width ) ) else 
	'1' when ( counter = to_unsigned( 47517, width ) ) else 
	'1' when ( counter = to_unsigned( 47518, width ) ) else 
	'1' when ( counter = to_unsigned( 48381, width ) ) else 
	'1' when ( counter = to_unsigned( 48382, width ) ) else 
	'1' when ( counter = to_unsigned( 49245, width ) ) else 
	'1' when ( counter = to_unsigned( 49246, width ) ) else 
	'1' when ( counter = to_unsigned( 50109, width ) ) else 
	'1' when ( counter = to_unsigned( 50110, width ) ) else 
	'1' when ( counter = to_unsigned( 50973, width ) ) else 
	'1' when ( counter = to_unsigned( 50974, width ) ) else 
	'1' when ( counter = to_unsigned( 51837, width ) ) else 
	'1' when ( counter = to_unsigned( 51838, width ) ) else 
	'1' when ( counter = to_unsigned( 52701, width ) ) else 
	'1' when ( counter = to_unsigned( 52702, width ) ) else 
	'1' when ( counter = to_unsigned( 53565, width ) ) else 
	'1' when ( counter = to_unsigned( 53566, width ) ) else 
	'1' when ( counter = to_unsigned( 54429, width ) ) else 
	'1' when ( counter = to_unsigned( 54430, width ) ) else 
	'1' when ( counter = to_unsigned( 55293, width ) ) else 
	'1' when ( counter = to_unsigned( 55294, width ) ) else 
	'1' when ( counter = to_unsigned( 56157, width ) ) else 
	'1' when ( counter = to_unsigned( 56158, width ) ) else 
	'1' when ( counter = to_unsigned( 57021, width ) ) else 
	'1' when ( counter = to_unsigned( 57022, width ) ) else 
	'1' when ( counter = to_unsigned( 57885, width ) ) else 
	'1' when ( counter = to_unsigned( 57886, width ) ) else 
	'1' when ( counter = to_unsigned( 58749, width ) ) else 
	'1' when ( counter = to_unsigned( 58750, width ) ) else 
	'1' when ( counter = to_unsigned( 59613, width ) ) else 
	'1' when ( counter = to_unsigned( 59614, width ) ) else 
	'1' when ( counter = to_unsigned( 60477, width ) ) else 
	'1' when ( counter = to_unsigned( 60478, width ) ) else 
	'1' when ( counter = to_unsigned( 61341, width ) ) else 
	'1' when ( counter = to_unsigned( 61342, width ) ) else 
	'1' when ( counter = to_unsigned( 62205, width ) ) else 
	'1' when ( counter = to_unsigned( 62206, width ) ) else 
	'1' when ( counter = to_unsigned( 63069, width ) ) else 
	'1' when ( counter = to_unsigned( 63070, width ) ) else 
	'1' when ( counter = to_unsigned( 63933, width ) ) else 
	'1' when ( counter = to_unsigned( 63934, width ) ) else 
	'1' when ( counter = to_unsigned( 64797, width ) ) else 
	'1' when ( counter = to_unsigned( 64798, width ) ) else 
	'1' when ( counter = to_unsigned( 65661, width ) ) else 
	'1' when ( counter = to_unsigned( 65662, width ) ) else 
	'1' when ( counter = to_unsigned( 66525, width ) ) else 
	'1' when ( counter = to_unsigned( 66526, width ) ) else 
	'1' when ( counter = to_unsigned( 67389, width ) ) else 
	'1' when ( counter = to_unsigned( 67390, width ) ) else 
	'1' when ( counter = to_unsigned( 68253, width ) ) else 
	'1' when ( counter = to_unsigned( 68254, width ) ) else 
	'1' when ( counter = to_unsigned( 69117, width ) ) else 
	'1' when ( counter = to_unsigned( 69118, width ) ) else 
	'1' when ( counter = to_unsigned( 69981, width ) ) else 
	'1' when ( counter = to_unsigned( 69982, width ) ) else 
	'1' when ( counter = to_unsigned( 70845, width ) ) else 
	'1' when ( counter = to_unsigned( 70846, width ) ) else 
	'1' when ( counter = to_unsigned( 71709, width ) ) else 
	'1' when ( counter = to_unsigned( 71710, width ) ) else 
	'1' when ( counter = to_unsigned( 72573, width ) ) else 
	'1' when ( counter = to_unsigned( 72574, width ) ) else 
	'1' when ( counter = to_unsigned( 73437, width ) ) else 
	'1' when ( counter = to_unsigned( 73438, width ) ) else 
	'1' when ( counter = to_unsigned( 74301, width ) ) else 
	'1' when ( counter = to_unsigned( 74302, width ) ) else 
	'1' when ( counter = to_unsigned( 75165, width ) ) else 
	'1' when ( counter = to_unsigned( 75166, width ) ) else 
	'1' when ( counter = to_unsigned( 76029, width ) ) else 
	'1' when ( counter = to_unsigned( 76030, width ) ) else 
	'1' when ( counter = to_unsigned( 76893, width ) ) else 
	'1' when ( counter = to_unsigned( 76894, width ) ) else 
	'1' when ( counter = to_unsigned( 77757, width ) ) else 
	'1' when ( counter = to_unsigned( 77758, width ) ) else 
	'1' when ( counter = to_unsigned( 78621, width ) ) else 
	'1' when ( counter = to_unsigned( 78622, width ) ) else 
	'1' when ( counter = to_unsigned( 79485, width ) ) else 
	'1' when ( counter = to_unsigned( 79486, width ) ) else 
	'1' when ( counter = to_unsigned( 80349, width ) ) else 
	'1' when ( counter = to_unsigned( 80350, width ) ) else 
	'1' when ( counter = to_unsigned( 81213, width ) ) else 
	'1' when ( counter = to_unsigned( 81214, width ) ) else 
	'1' when ( counter = to_unsigned( 82077, width ) ) else 
	'1' when ( counter = to_unsigned( 82078, width ) ) else 
	'1' when ( counter = to_unsigned( 82941, width ) ) else 
	'1' when ( counter = to_unsigned( 82942, width ) ) else 
	'1' when ( counter = to_unsigned( 83805, width ) ) else 
	'1' when ( counter = to_unsigned( 83806, width ) ) else 
	'1' when ( counter = to_unsigned( 84669, width ) ) else 
	'1' when ( counter = to_unsigned( 84670, width ) ) else 
	'1' when ( counter = to_unsigned( 85533, width ) ) else 
	'1' when ( counter = to_unsigned( 85534, width ) ) else 
	'1' when ( counter = to_unsigned( 86397, width ) ) else 
	'1' when ( counter = to_unsigned( 86398, width ) ) else 
	'1' when ( counter = to_unsigned( 87261, width ) ) else 
	'1' when ( counter = to_unsigned( 87262, width ) ) else 
	'1' when ( counter = to_unsigned( 88125, width ) ) else 
	'1' when ( counter = to_unsigned( 88126, width ) ) else 
	'1' when ( counter = to_unsigned( 88989, width ) ) else 
	'1' when ( counter = to_unsigned( 88990, width ) ) else 
	'1' when ( counter = to_unsigned( 89853, width ) ) else 
	'1' when ( counter = to_unsigned( 89854, width ) ) else 
	'1' when ( counter = to_unsigned( 90717, width ) ) else 
	'1' when ( counter = to_unsigned( 90718, width ) ) else 
	'1' when ( counter = to_unsigned( 91581, width ) ) else 
	'1' when ( counter = to_unsigned( 91582, width ) ) else 
	'1' when ( counter = to_unsigned( 92445, width ) ) else 
	'1' when ( counter = to_unsigned( 92446, width ) ) else 
	'1' when ( counter = to_unsigned( 93309, width ) ) else 
	'1' when ( counter = to_unsigned( 93310, width ) ) else 
	'1' when ( counter = to_unsigned( 94173, width ) ) else 
	'1' when ( counter = to_unsigned( 94174, width ) ) else 
	'1' when ( counter = to_unsigned( 95037, width ) ) else 
	'1' when ( counter = to_unsigned( 95038, width ) ) else 
	'1' when ( counter = to_unsigned( 95901, width ) ) else 
	'1' when ( counter = to_unsigned( 95902, width ) ) else 
	'1' when ( counter = to_unsigned( 96765, width ) ) else 
	'1' when ( counter = to_unsigned( 96766, width ) ) else 
	'1' when ( counter = to_unsigned( 97629, width ) ) else 
	'1' when ( counter = to_unsigned( 97630, width ) ) else 
	'1' when ( counter = to_unsigned( 98493, width ) ) else 
	'1' when ( counter = to_unsigned( 98494, width ) ) else 
	'1' when ( counter = to_unsigned( 99357, width ) ) else 
	'1' when ( counter = to_unsigned( 99358, width ) ) else 
	'1' when ( counter = to_unsigned( 100221, width ) ) else 
	'1' when ( counter = to_unsigned( 100222, width ) ) else 
	'1' when ( counter = to_unsigned( 101085, width ) ) else 
	'1' when ( counter = to_unsigned( 101086, width ) ) else 
	'1' when ( counter = to_unsigned( 101949, width ) ) else 
	'1' when ( counter = to_unsigned( 101950, width ) ) else 
	'1' when ( counter = to_unsigned( 102813, width ) ) else 
	'1' when ( counter = to_unsigned( 102814, width ) ) else 
	'1' when ( counter = to_unsigned( 103677, width ) ) else 
	'1' when ( counter = to_unsigned( 103678, width ) ) else 
	'1' when ( counter = to_unsigned( 104541, width ) ) else 
	'1' when ( counter = to_unsigned( 104542, width ) ) else 
	'1' when ( counter = to_unsigned( 105405, width ) ) else 
	'1' when ( counter = to_unsigned( 105406, width ) ) else 
	'1' when ( counter = to_unsigned( 106269, width ) ) else 
	'1' when ( counter = to_unsigned( 106270, width ) ) else 
	'1' when ( counter = to_unsigned( 107133, width ) ) else 
	'1' when ( counter = to_unsigned( 107134, width ) ) else 
	'1' when ( counter = to_unsigned( 107997, width ) ) else 
	'1' when ( counter = to_unsigned( 107998, width ) ) else 
	'1' when ( counter = to_unsigned( 108861, width ) ) else 
	'1' when ( counter = to_unsigned( 108862, width ) ) else 
	'1' when ( counter = to_unsigned( 109725, width ) ) else 
	'1' when ( counter = to_unsigned( 109726, width ) ) else 
	'1' when ( counter = to_unsigned( 110589, width ) ) else 
	'1' when ( counter = to_unsigned( 110590, width ) ) else 
	'0';

end Behavioral;

