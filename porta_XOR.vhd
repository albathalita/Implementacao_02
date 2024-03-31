library ieee;
use ieee.std_logic_1164.all;

entity porta_XOR is
	port (	A, B:  in std_logic_vector(7 downto 0);
		O: out std_logic_vector(7 downto 0));
end porta_XOR;

architecture logic of porta_XOR is

begin
	O(7) <= A(7) xor B(7);
	O(6) <= A(6) xor B(6);
	O(5) <= A(5) xor B(5);
	O(4) <= A(4) xor B(4);
	O(3) <= A(3) xor B(3);
	O(2) <= A(2) xor B(2);
	O(1) <= A(1) xor B(1);
	O(0) <= A(0) xor B(0);

end logic;