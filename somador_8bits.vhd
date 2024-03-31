library ieee;
use ieee.std_logic_1164.all;

entity somador_8bits is 
	port( A, B: in std_logic_vector(7 downto 0);
	      O: out std_logic_vector(7 downto 0);
	      Cout: out std_logic);
end somador_8bits;

architecture log of somador_8bits is

component somador is
  port (A, B, Cin: in std_logic;
	O, Cout: out std_logic);
end component;

  signal aux0 : std_logic;
  signal aux1 : std_logic;
  signal aux2 : std_logic;
  signal aux3 : std_logic;
  signal aux4 : std_logic;
  signal aux5 : std_logic;
  signal aux6 : std_logic;
 

begin
	
    X1: somador port map(A(0), B(0), '0', O(0), aux0);
    X2: somador port map(A(1), B(1), aux0, O(1), aux1);
    X3: somador port map(A(2), B(2), aux1, O(2), aux2);
    X4: somador port map(A(3), B(3), aux2, O(3), aux3);
    X5: somador port map(A(4), B(4), aux3, O(4), aux4);
    X6: somador port map(A(5), B(5), aux4, O(5), aux5);
    X7: somador port map(A(6), B(6), aux5, O(6), aux6);
    X8: somador port map(A(7), B(7), aux6, O(7), Cout);
 
end log;