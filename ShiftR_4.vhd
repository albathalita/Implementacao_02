library ieee;
use ieee.std_logic_1164.all;

entity shiftR4 is
    port (A2, B: in  std_logic_vector(7 downto 0);
	  O2: out std_logic_vector(7 downto 0));
end shiftR4;

architecture log of shiftR4 is

    signal shifted_R : std_logic_vector(7 downto 0);
    signal B_2: std_logic;

begin
	B_2<= B(2);
	O2(7)<= ('0' and (B_2))or(not(B_2) and A2(7));
	O2(6)<= ('0' and (B_2))or(not(B_2) and A2(6));
	O2(5)<= ('0' and (B_2))or(not(B_2) and A2(5));
	O2(4)<= ('0' and (B_2))or(not(B_2) and A2(4));
	O2(3)<= (A2(7) and (B_2))or(not(B_2) and A2(3));
	O2(2)<= (A2(6) and (B_2))or(not(B_2) and A2(2));
	O2(1)<= (A2(5) and (B_2))or(not(B_2) and A2(1));
	O2(0)<= (A2(4) and (B_2))or(not(B_2) and A2(0));
end log;