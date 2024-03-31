library ieee;
use ieee.std_logic_1164.all;

entity shiftR2 is
    port (A1, B: in  std_logic_vector(7 downto 0);
	  O1: out std_logic_vector(7 downto 0));
end shiftR2;

architecture log of shiftR2 is

    signal shifted_R : std_logic_vector(7 downto 0);
    signal B_1: std_logic;

begin
	B_1<= B(1);
	O1(7)<= ('0' and (B_1))or(not(B_1) and A1(7));
	O1(6)<= ('0' and (B_1))or(not(B_1) and A1(6));
	O1(5)<= (A1(7) and (B_1))or(not(B_1) and A1(5));
	O1(4)<= (A1(6) and (B_1))or(not(B_1) and A1(4));
	O1(3)<= (A1(5) and (B_1))or(not(B_1) and A1(3));
	O1(2)<= (A1(4) and (B_1))or(not(B_1) and A1(2));
	O1(1)<= (A1(3) and (B_1))or(not(B_1) and A1(1));
	O1(0)<= (A1(2) and (B_1))or(not(B_1) and A1(0));
end log;
