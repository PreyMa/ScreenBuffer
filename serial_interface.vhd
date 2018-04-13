----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    serial_interface
-- Description: 	 Multiplex the different serial signals and activate tlc paths
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_interface is
    Port ( Proc_rcv_en : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           Proc_mosi : in  STD_LOGIC;
           even_odd : in  STD_LOGIC;
           Proc_wr_a : in  STD_LOGIC;
           Proc_wr_b : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           Proc_sclk : in  STD_LOGIC;
           mosi_a : out  STD_LOGIC;
           sclk_a : out  STD_LOGIC;
           mosi_b : out  STD_LOGIC;
           sclk_b : out  STD_LOGIC);
end serial_interface;

architecture Behavioral of serial_interface is

signal serial_clock : std_logic;
signal serial_mosi : std_logic;
signal cache_a_en : std_logic;
signal cache_b_en : std_logic;

begin

serial_clock 	<= sclk when proc_rcv_en = '1' else proc_sclk;
serial_mosi		<= sdin when proc_rcv_en = '1' else proc_mosi;
cache_a_en		<= even_odd 		  when proc_rcv_en = '1' else proc_wr_a;
cache_b_en		<= ( not even_odd ) when proc_rcv_en = '1' else proc_wr_b;

mosi_a <= serial_mosi  and cache_a_en;
sclk_a <= serial_clock and cache_a_en;
mosi_b <= serial_mosi  and cache_b_en; 
sclk_b <= serial_clock and cache_b_en;
end Behavioral;

