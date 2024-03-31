library ieee;
use ieee.std_logic_1164.all;

entity mux is 
	port( KEY: in std_logic_vector(3 downto 0);
	      ADD, SUB, MUL, INC, DEC, SHL, SHR, SWP, SWA, P_AND, P_OR, P_XOR, P_NOT: in std_logic_vector(7 downto 0);
	      O: out std_logic_vector(7 downto 0));
end mux;

architecture log of mux is

begin 

    O(7) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(7)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(7)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(7)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(7)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(7)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(7)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(7)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(7)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(7)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(7) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (7) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(7) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(7) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));

    O(6) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(6)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(6)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(6)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(6)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(6)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(6)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(6)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(6)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(6)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(6) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (6) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(6) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(6) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));

    O(5) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(5)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(5)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(5)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(5)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(5)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(5)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(5)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(5)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(5)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(5) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (5) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(5) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(5) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));

    O(4) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(4)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(4)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(4)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(4)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(4)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(4)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(4)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(4)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(4)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(4) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (4) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(4) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(4) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));

    O(3) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(3)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(3)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(3)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(3)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(3)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(3)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(3)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(3)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(3)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(3) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (3) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(3) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(3) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));

    O(2) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(2)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(2)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(2)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(2)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(2)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(2)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(2)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(2)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(2)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(2) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (2) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(2) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(2) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));

    O(1) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(1)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(1)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(1)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(1)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(1)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(1)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(1)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(1)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(1)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(1) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (1) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(1) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(1) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));

    O(0) <= 	( '0'      and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( ADD(0)   and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SUB(0)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( MUL(0)   and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( INC(0)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( DEC(0)   and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( '0'      and not(KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( SHL(0)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( SHR(0)   and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( SWP(0)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( SWA(0)   and    (KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
		( P_AND(0) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
		( P_OR (0) and    (KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
		( P_XOR(0) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and not(KEY(0))) or
		( P_NOT(0) and    (KEY(3)) and    (KEY(2)) and    (KEY(1)) and    (KEY(0)));
end log;