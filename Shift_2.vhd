	library ieee;
use ieee.std_logic_1164.all;

entity shift2 is
    port (A1, B: in  std_logic_vector(7 downto 0);
	  C0: in std_logic;
	  O1: out std_logic_vector(7 downto 0);
	  C1: out std_logic);
end shift2;

architecture log of shift2 is

    signal shifted_L : std_logic_vector(7 downto 0);
    signal carry : std_logic;
    signal B_1: std_logic;

begin
	B_1 <= B(1);
	C1 <= (C0 and not(B_1))or(B_1 and A1(6));
	O1(7)<= (A1(7)and not(B_1))or(B_1 and A1(5));
	O1(6)<= (A1(6)and not(B_1))or(B_1 and A1(4));
	O1(5)<= (A1(5)and not(B_1))or(B_1 and A1(3));
	O1(4)<= (A1(4)and not(B_1))or(B_1 and A1(2));
	O1(3)<= (A1(3)and not(B_1))or(B_1 and A1(1));
	O1(2)<= (A1(2)and not(B_1))or(B_1 and A1(0));
	O1(1)<= (A1(1)and not(B_1))or(B_1 and '0');
	O1(0)<= (A1(0)and not(B_1))or(B_1 and '0');
end log;