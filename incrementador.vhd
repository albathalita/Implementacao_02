library ieee;
use ieee.std_logic_1164.all;

entity incrementador is 
	port( A: in std_logic_vector(7 downto 0);
	      O: out std_logic_vector(7 downto 0);
	      Cout: out std_logic);
end incrementador;

architecture log of incrementador is

component somador_8bits is
  port( A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	Cout: out std_logic);
end component;


  signal entradaFixa : std_logic_vector(7 downto 0);
 

begin

    entradaFixa <= "00000001";
    X1: somador_8bits port map(A, entradaFixa, O, Cout);

end log;