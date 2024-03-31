library ieee;
use ieee.std_logic_1164.all;

entity porta_OR is
	port (	A, B:  in std_logic_vector(7 downto 0);
		O: out std_logic_vector(7 downto 0));
end porta_OR;

architecture logic of porta_OR is

begin
	O(7) <= A(7) or B(7);
	O(6) <= A(6) or B(6);
	O(5) <= A(5) or B(5);
	O(4) <= A(4) or B(4);
	O(3) <= A(3) or B(3);
	O(2) <= A(2) or B(2);
	O(1) <= A(1) or B(1);
	O(0) <= A(0) or B(0);

end logic;