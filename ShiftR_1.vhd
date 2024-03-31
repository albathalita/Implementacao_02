library ieee;
use ieee.std_logic_1164.all;

entity shiftR1 is
    port (A0, B: in  std_logic_vector(7 downto 0);
	  O0: out std_logic_vector(7 downto 0));
end shiftR1;

architecture log of shiftR1 is

    signal shifted_R : std_logic_vector(7 downto 0);
    signal B_0: std_logic;

begin
	B_0<= B(0);
	O0(7)<= ('0' and (B_0))or(not(B_0) and A0(7));
	O0(6)<= (A0(7) and (B_0))or(not(B_0) and A0(6));
	O0(5)<= (A0(6) and (B_0))or(not(B_0) and A0(5));
	O0(4)<= (A0(5) and (B_0))or(not(B_0) and A0(4));
	O0(3)<= (A0(4) and (B_0))or(not(B_0) and A0(3));
	O0(2)<= (A0(3) and (B_0))or(not(B_0) and A0(2));
	O0(1)<= (A0(2) and (B_0))or(not(B_0) and A0(1));
	O0(0)<= (A0(1) and (B_0))or(not(B_0) and A0(0));
end log;