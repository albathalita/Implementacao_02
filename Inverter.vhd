library ieee;
use ieee.std_logic_1164.all;


entity Inverter is
	port (  A : in std_logic_vector(7 downto 0); 
		O: out std_logic_vector(7 downto 0));
end Inverter;

architecture log of Inverter is
	

begin	
 
  O(0) <= A(7);
  O(1) <= A(6);
  O(2) <= A(5);
  O(3) <= A(4);
  O(4) <= A(3);
  O(5) <= A(2);
  O(6) <= A(1);
  O(7) <= A(0);
 
 
end log;