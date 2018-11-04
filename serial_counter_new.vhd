----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:48:54 10/31/2018 
-- Design Name: 
-- Module Name:    serial_counter_new - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

entity serial_counter_new is
	 generic( width : natural := 17 );
    Port ( reset : in  STD_LOGIC;
           sclk : in  STD_LOGIC;
			  mode_data_reset : in std_logic;
			  panel_select : in std_logic;
           ovf : out  STD_LOGIC;
           even_odd : out  STD_LOGIC;
           latch1 : out  STD_LOGIC;
			  latch2 : out	 STD_LOGIC;
			  zero : out std_logic;
           sml_eight : out  STD_LOGIC);
end serial_counter_new;

architecture count of serial_counter_new is
-- States
type STATES is (getHeader, waitbuff, getData);
signal STATE, NEXT_STATE : STATES;

-- Counters
signal bitcount : unsigned(9 downto 0);
signal latchcount : unsigned(6 downto 0);
signal ovfReg : std_logic;

-- Signals
signal inc_Latch, inc_Bit, res_Latch, res_Bit, tglOvf : std_logic;
begin

ovf <= ovfReg;

sync: process(sclk, reset, mode_data_reset)
	begin
		
		if( reset = '1' or mode_data_reset = '1') then
			STATE <= getHeader;
			bitcount <= (others => '0');
			latchcount <= (others => '0');
		
		elsif( sclk'event and sclk = '1') then
			STATE <= NEXT_STATE;
			
			-- Latchcounter
			if( res_Latch = '1' ) then
				latchcount <= (others => '0');
				
			elsif ( inc_Latch = '1' ) then
				latchcount <= latchcount + 1;
			end if;
			
			-- Bitcounter
			if( res_Bit = '1' ) then
				bitcount <= (others => '0');
				
			elsif ( inc_Bit = '1' ) then
				bitcount <= bitcount + 1;
			end if;
			
			-- Overflow T-FlipFlop
			if( tglOvf = '1' ) then
				ovfReg <= not ovfReg;
			end if;
			
		end if;
	end process sync;
		
		
comb: process(STATE, latchcount, bitcount, panel_select )
		begin
			tglOvf <= '0';
			even_odd <= '0';
			inc_Latch <= '0';
			inc_Bit <= '0';
			res_Latch <= '0';
			res_Bit <= '0';
			latch1 <= '0';
			latch2 <= '0';
			zero <= '0';
			sml_eight <= '0';
			NEXT_STATE <= STATE;
			
		case STATE is 
			
			when getHeader =>
				
				sml_eight <= '1';
				if( bitcount = 0) then
					zero <= '1';
				end if;
				
				-- increment
				if( bitcount = 7) then
					res_Bit <= '1';
					NEXT_STATE <= waitBuff;
				else
				
					inc_Bit <= '1';
				end if;
				
			when waitBuff =>
				
				even_odd <= bitcount(0);
				
				if( bitcount = 1) then
					res_Bit <= '1';
					NEXT_STATE <= getData;
				else
					inc_Bit <= '1';
				end if;
				
			when getData =>
				even_odd <= bitcount(0);
				
--			 				8	 8	  8   0
--							6	 6	  6   0
--							1	 2   3	0
--	CLk in		 _|-|_|-|_|-|_|-|_|-|_|

--	BankA	Sclk	 _|---|___|---|___|---|
--			Latch	 _____|-------|__

--	BankB	Sclk    -|___|---|___|---|___|
--			Latch	 _________|-------|____


--			Latch1	 1 1 1 
--			Latch2        2 2 2
--			Flank #   860 862	0
--							861 863	

				-- Generate Latch Signals A/B
				if( bitcount = 861 ) then
					latch1 <= '1';
				end if;
				
				if( bitcount = 862 ) then
					latch1 <= '1';
					latch2 <= '1';
				end if;
				
				if( bitcount = 863 ) then 
					latch2 <= '1';
				end if;
				
				-- Increment Latchcount when row done
				if( bitcount = 863) then
					res_Bit <= '1';
					inc_Latch <= '1';
					
					-- Reset when full frame done
					if( latchcount = 127 ) then
						NEXT_STATE <= getHeader;
						res_Latch <= '1';
						
						-- Send interrupt signal
						if( panel_select = '1' ) then
							tglOvf <= '1';
						end if;
					end if;
					
				else
					inc_Bit <= '1';
				end if;
		end case;
		
		end process comb;
end architecture count;