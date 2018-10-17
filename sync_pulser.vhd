----------------------------------------------------------------------------------
-- Organisation:	 HTBL Hollabrunn
-- Authors:			 Mattthias Preymann & Jakob Mayer
-- 
-- Create Date:    04/13/2018 
-- Project Name:   TLC5958
-- Target Devices: xc2c128-6VQ100
-- Module Name:    sync_pulser
-- Description: 	 Sync a static high signal to a single clock endge
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sync_pulser is
    Port ( clk : in  STD_LOGIC;
           insig : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  nen_ctr : in std_logic;
			  hlf   : out  std_logic;
           q : out  STD_LOGIC);
end sync_pulser;

architecture Behavioral of sync_pulser is

type StateType is ( IDLE, TRIG, SLEEP );
signal curState : StateType;
signal nextState : StateType;

--signal prev : std_logic;
signal q_sig : std_logic;
signal hlf_sig : std_logic;

begin

q <= q_sig;
--q_sig <= insig and not prev;
hlf <= hlf_sig;
--
--flipflop : process( clk, reset )
--begin
--
--	if( reset = '1' ) then
--		prev <= '0';
--		hlf_sig <= '0';
--		
--	elsif( clk' event and clk= '1' ) then
--		prev <= insig;
--		
--		if( q_sig = '1' and nen_ctr = '1' ) then
--			hlf_sig <= not hlf_sig;
--		end if;
--		
--		if( nen_ctr = '0' ) then -- set to low by default
--			hlf_sig <= '0';
--		end if;
--		
--	end if;
--
--end process flipflop;

 SYNC : process( clk, reset ) 
 begin
 
	if( reset = '1' ) then
		hlf_sig <= '0';
		curState <= IDLE;
		
	elsif( clk ' event and clk = '1' ) then
		
		curState <= nextState;
		
		if( nen_ctr = '0' ) then
			hlf_sig <=  '0';
			
		elsif( q_sig = '1' ) then
			hlf_sig <= not hlf_sig;
		end if;
		
	end if;
 
 end process SYNC;


 COMB : process( curState, insig ) 
 begin
	
	nextState <= curState;
	q_sig <= '0';
	
	case curState is
		when IDLE =>
			if( insig = '1' ) then
				nextState <= TRIG;
			end if;
		
		when TRIG =>
			nextState <= SLEEP;
			q_sig <= '1';
		
		when SLEEP =>
			if( insig = '0' ) then
				nextState <= IDLE;
			end if;
			
	end case;
	
 end process COMB;

end Behavioral;

