library ieee;
use ieee.std_logic_1164.all;

entity porta_NOT is
	port (	A: in std_logic_vector(7 downto 0);
		O: out std_logic_vector(7 downto 0));
end porta_NOT;

architecture logic of porta_NOT is

begin
	O(7) <= not(A(7));
	O(6) <= not(A(6));
	O(5) <= not(A(5));
	O(4) <= not(A(4));
	O(3) <= not(A(3));
	O(2) <= not(A(2));
	O(1) <= not(A(1));
	O(0) <= not(A(0));

end logic;