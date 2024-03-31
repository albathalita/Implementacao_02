library ieee;
use ieee.std_logic_1164.all;


entity Permuta is
	port (  A : in std_logic_vector(7 downto 0);
		O : out std_logic_vector(7 downto 0));
end Permuta;

architecture log of Permuta is
	

begin	
 
	O(7) <= A(3);
	O(6) <= A(2);
	O(5) <= A(1);
	O(4) <= A(0);
	O(3) <= A(7);
	O(2) <= A(6);
	O(1) <= A(5);
	O(0) <= A(4);
 
 
end log;