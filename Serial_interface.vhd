----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:56:11 04/13/2018 
-- Design Name: 
-- Module Name:    Serial_interface - Behavioral 
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Serial_interface is
    Port ( Proc_recv_en : in  STD_LOGIC;
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
end Serial_interface;

architecture Behavioral of Serial_interface is
signal mplex1 : std_logic;
signal mplex2 : std_logic;
signal mplex3 : std_logic;
--signal mplex4 : std_logic;
signal mplex5 : std_logic;
begin

mplex1 <= (sdin and Proc_recv_en) or (Proc_mosi and not Proc_recv_en);
mplex2 <= (even_odd and Proc_recv_en) or (Proc_wr_a and not Proc_recv_en);
mplex3 <= (sclk and Proc_recv_en) or (Proc_sclk and not Proc_recv_en);
--mplex4 <= (sdin and Proc_recv_en) or (Proc_mosi and not Proc_recv_en);
mplex5 <= (not even_odd and Proc_recv_en) or (Proc_wr_b and not Proc_recv_en);

mosi_a <= mplex1 and mplex2;
sclk_a <= mplex2 and mplex3;
mosi_b <= mplex1 and mplex5; 
sclk_b <= mplex3 and mplex5;
end Behavioral;

