----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    serial_input
-- Description: 	 Load address and sync frame data
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity serial_input is
    Port ( proc_rcv_en : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           addr_sel : in  STD_LOGIC_VECTOR (3 downto 0);
           mode_data : out  STD_LOGIC_VECTOR (2 downto 0);
           latch_out1 : out  STD_LOGIC;
			  latch_out2 : out  STD_LOGIC;
           sel : out  STD_LOGIC;
			  done : out std_logic;
           sdprev_ignore : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
			  zero : out std_logic;
           proc_latch : in  STD_LOGIC);
end serial_input;

architecture Behavioral of serial_input is

-- Component declarations
component serial_counter_new is
    Port ( reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ovf : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
			  mode_data_reset : in STD_LOGIC;
			  panel_select : in std_logic;
			  zero : out std_logic;
           latch1 : out  STD_LOGIC;
			  latch2 : out  STD_LOGIC;
           sml_eight : out  STD_LOGIC);
end component serial_counter_new;

component serial_shifter is
    Port ( sclk : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
           enable : in  STD_LOGIC;
           brecv : out  STD_LOGIC;
			  mode_data_reset : in std_logic;
           reset : in  STD_LOGIC);
end component serial_shifter;

component address_comp is
    Port ( addr_sel : in  STD_LOGIC_VECTOR (3 downto 0);
           serial_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  mode_data : out  STD_LOGIC_VECTOR (2 downto 0);
           addr_valid : out  STD_LOGIC;
           sdprev_disable : out  STD_LOGIC;
			  vsync_cmd : out std_logic;
			  byte_rcvd : in std_logic);
end component address_comp;

-- Local signal declarations
signal ctr_sync_reset : std_logic;
signal latch1 : std_logic;
signal latch2 : std_logic;
signal ctr_done : std_logic;
signal ctr_sml_eight : std_logic;
signal ctr_zero : std_logic;

signal serial_dout : std_logic_vector( 7 downto 0 );
signal serial_byte_rcvd : std_logic;

signal panel_select : std_logic;
signal vsync_cmd : std_logic;
signal mode_data_reset : std_logic;

begin
	
	sel  <= panel_select;
	done <= ctr_done;
	zero <= ctr_zero;

	ctr_sync_reset <= reset; --or ( clk and ctr_done and ( not proc_rcv_en ) );

	latch_out1 <= ( latch1 and panel_select ) when proc_rcv_en = '1' else proc_latch;
	latch_out2 <= ( latch2 and panel_select ) when proc_rcv_en = '1' else proc_latch;
	
	mode_data_reset <= '1' when ( vsync_cmd = '1' and panel_select = '1' and proc_rcv_en = '0' ) else '0';
	
	counter : serial_counter_new
	port map( 
		reset		 => ctr_sync_reset,
		sclk		 => sclk,
		ovf		 => ctr_done,
		zero		 => ctr_zero,
		even_odd	 => even_odd,
		latch1	 => latch1,
		latch2	 => latch2,
		mode_data_reset => mode_data_reset,
		panel_select => panel_select,
		sml_eight => ctr_sml_eight
	);
	
	shifter : serial_shifter
	port map( 
		sclk		=> sclk,
		sdin		=> sdin,
		dout		=> serial_dout,
		brecv		=> serial_byte_rcvd,
		reset		=> reset,
		mode_data_reset => mode_data_reset,
		enable	=> ctr_sml_eight
	);
	
	comparator : address_comp
	port map(
		addr_sel 		=> addr_sel,
		serial_in		=> serial_dout,
		mode_data		=> mode_data,
		addr_valid 		=> panel_select,
		sdprev_disable => sdprev_ignore,
		vsync_cmd      => vsync_cmd,
		byte_rcvd		=> serial_byte_rcvd
	);
		
end Behavioral;

