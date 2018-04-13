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
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           addr_sel : in  STD_LOGIC_VECTOR (3 downto 0);
           mode_data : out  STD_LOGIC_VECTOR (2 downto 0);
           latch : out  STD_LOGIC;
           sel : out  STD_LOGIC;
			  done : out std_logic;
           sdprev_ignore : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
           proc_latch : in  STD_LOGIC);
end serial_input;

architecture Behavioral of serial_input is

-- Component declarations
component serial_counter is
    Port ( reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
           ovf : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
           modu : out  STD_LOGIC;
           sml_eight : out  STD_LOGIC);
end component serial_counter;

component serial_shifter is
    Port ( sclk : in  STD_LOGIC;
           sdin : in  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (7 downto 0);
           enable : in  STD_LOGIC;
           brecv : out  STD_LOGIC;
           reset : in  STD_LOGIC);
end component serial_shifter;

component address_comp is
    Port ( addr_sel : in  STD_LOGIC_VECTOR (3 downto 0);
           serial_in : in  STD_LOGIC_VECTOR (7 downto 0);
			  mode_data : out  STD_LOGIC_VECTOR (2 downto 0);
           addr_valid : out  STD_LOGIC;
           sdprev_disable : out  STD_LOGIC;
			  byte_rcvd : in std_logic);
end component address_comp;

-- Local signal declarations
signal ctr_sync_reset : std_logic;
signal ctr_mod : std_logic;
signal ctr_done : std_logic;
signal ctr_sml_eight : std_logic;

signal serial_dout : std_logic_vector( 7 downto 0 );
signal serial_byte_rcvd : std_logic;

signal panel_select : std_logic;

begin

	sel  <= panel_select;
	done <= ctr_done;

	ctr_sync_reset <= reset or ( clk and ctr_done and ( not proc_rcv_en ) );

	latch <= ( ctr_mod and panel_select ) when proc_rcv_en = '1' else proc_latch;
	
	counter : serial_counter 
	port map( 
		reset		 => ctr_sync_reset,
		sclk		 => sclk,
		ovf		 => ctr_done,
		even_odd	 => even_odd,
		modu		 => ctr_mod,
		sml_eight => ctr_sml_eight
	);
	
	shifter : serial_shifter
	port map( 
		sclk		=> sclk,
		sdin		=> sdin,
		dout		=> serial_dout,
		brecv		=> serial_byte_rcvd,
		reset		=> reset,
		enable	=> ctr_sml_eight
	);
	
	comparator : address_comp
	port map(
		addr_sel 		=> addr_sel,
		serial_in		=> serial_dout,
		mode_data		=> mode_data,
		addr_valid 		=> panel_select,
		sdprev_disable => sdprev_ignore,
		byte_rcvd		=> serial_byte_rcvd
	);
		
end Behavioral;

