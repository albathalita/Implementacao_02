library ieee;
use ieee.std_logic_1164.all;

entity shift4 is
    port (A2, B: in  std_logic_vector(7 downto 0);
	  C1: in std_logic;
	  O2: out std_logic_vector(7 downto 0);
	  C2: out std_logic);
end shift4;

architecture log of shift4 is

    signal shifted_L : std_logic_vector(7 downto 0);
    signal carry : std_logic;
    signal B_2: std_logic;

begin
	B_2 <= B(2);
	C2 <= (C1 and not(B_2))or(B_2 and A2(4));
	O2(7)<= (A2(7)and not(B_2))or(B_2 and A2(3));
	O2(6)<= (A2(6)and not(B_2))or(B_2 and A2(2));
	O2(5)<= (A2(5)and not(B_2))or(B_2 and A2(1));
	O2(4)<= (A2(4)and not(B_2))or(B_2 and A2(0));
	O2(3)<= (A2(3)and not(B_2))or(B_2 and '0');
	O2(2)<= (A2(2)and not(B_2))or(B_2 and '0');
	O2(1)<= (A2(1)and not(B_2))or(B_2 and '0');
	O2(0)<= (A2(0)and not(B_2))or(B_2 and '0');
end log;
