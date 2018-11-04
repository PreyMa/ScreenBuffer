--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:13:51 11/03/2018
-- Design Name:   
-- Module Name:   C:/Matura_2_0/Screenbuffer_V2/CPLD_FIN/CPLD_BUFF/System_TB.vhd
-- Project Name:  CPLD_BUFF
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: topmodule
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY System_TB IS
END System_TB;
 
ARCHITECTURE behavior OF System_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT topmodule
    PORT(
         gclk : IN  std_logic;
         sdin : IN  std_logic;
         sdout : OUT  std_logic;
         sdprev : IN  std_logic;
         sclk : IN  std_logic;
         sdprev_en : OUT  std_logic;
         proc_rcv_en : IN  std_logic;
         proc_wr_a : IN  std_logic;
         proc_wr_b : IN  std_logic;
         proc_latch : IN  std_logic;
         proc_sclk : IN  std_logic;
         proc_mosi : IN  std_logic;
         proc_grclk_en : IN  std_logic;
         addr_sel : IN  std_logic_vector(3 downto 0);
         miso_a : IN  std_logic;
         miso_b : IN  std_logic;
         mosi_a : OUT  std_logic;
         mosi_b : OUT  std_logic;
         tsclk_a : OUT  std_logic;
         tsclk_b : OUT  std_logic;
         latch_out1 : OUT  std_logic;
         latch_out2 : OUT  std_logic;
         grayscale_clk : OUT  std_logic;
         line_select : OUT  std_logic_vector(7 downto 0);
         mode_data : OUT  std_logic_vector(2 downto 0);
         reset : OUT  std_logic;
         done : OUT  std_logic;
         panel_select : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal gclk : std_logic := '0';
   signal sdin : std_logic := '0';
   signal sdprev : std_logic := '0';
   signal sclk : std_logic := '0';
   signal proc_rcv_en : std_logic := '0';
   signal proc_wr_a : std_logic := '0';
   signal proc_wr_b : std_logic := '0';
   signal proc_latch : std_logic := '0';
   signal proc_sclk : std_logic := '0';
   signal proc_mosi : std_logic := '0';
   signal proc_grclk_en : std_logic := '1';
   signal addr_sel : std_logic_vector(3 downto 0) := (others => '0');
   signal miso_a : std_logic := '0';
   signal miso_b : std_logic := '0';

	--Input Control
	signal sclk_temp, sclk_val : std_logic := '0';
	signal sclk_man :std_logic := '0';
 	--Outputs
   signal sdout : std_logic;
   signal sdprev_en : std_logic;
   signal mosi_a : std_logic;
   signal mosi_b : std_logic;
   signal tsclk_a : std_logic;
   signal tsclk_b : std_logic;
   signal latch_out1 : std_logic;
   signal latch_out2 : std_logic;
   signal grayscale_clk : std_logic;
   signal line_select : std_logic_vector(7 downto 0);
   signal mode_data : std_logic_vector(2 downto 0);
   signal reset : std_logic;
   signal done : std_logic;
   signal panel_select : std_logic;

   -- Clock period definitions
   constant gclk_period : time := 10 ns;
   constant sclk_period : time := 20 ns;
   constant proc_sclk_period : time := 10 ns;
   constant grayscale_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: topmodule PORT MAP (
          gclk => gclk,
          sdin => sdin,
          sdout => sdout,
          sdprev => sdprev,
          sclk => sclk,
          sdprev_en => sdprev_en,
          proc_rcv_en => proc_rcv_en,
          proc_wr_a => proc_wr_a,
          proc_wr_b => proc_wr_b,
          proc_latch => proc_latch,
          proc_sclk => proc_sclk,
          proc_mosi => proc_mosi,
          proc_grclk_en => proc_grclk_en,
          addr_sel => addr_sel,
          miso_a => miso_a,
          miso_b => miso_b,
          mosi_a => mosi_a,
          mosi_b => mosi_b,
          tsclk_a => tsclk_a,
          tsclk_b => tsclk_b,
          latch_out1 => latch_out1,
          latch_out2 => latch_out2,
          grayscale_clk => grayscale_clk,
          line_select => line_select,
          mode_data => mode_data,
          reset => reset,
          done => done,
          panel_select => panel_select
        );

   -- Clock process definitions
   gclk_process :process
   begin
		gclk <= '0';
		wait for gclk_period/2;
		gclk <= '1';
		wait for gclk_period/2;
   end process;
 
   sclk_process :process
   begin
		sclk_temp <= '0';
		wait for sclk_period/2;
		sclk_temp <= '1';
		wait for sclk_period/2;
   end process;
	
	sclk <= sclk_temp when sclk_man = '0' else sclk_val;
--   proc_sclk_process :process
--   begin
--		proc_sclk <= '0';
--		wait for proc_sclk_period/2;
--		proc_sclk <= '1';
--		wait for proc_sclk_period/2;
--   end process;
 
--   grayscale_clk_process :process
--   begin
--		grayscale_clk <= '0';
--		wait for grayscale_clk_period/2;
--		grayscale_clk <= '1';
--		wait for grayscale_clk_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		--sclk_man <= '1';
		--sclk_val <= '1';
      --wait for 3 ms;	
		sclk_man <= '0';
		proc_rcv_en <= '1';
      wait for gclk_period*10;
		
      -- insert stimulus here 

      wait;
   end process;

END;
