library ieee;
use ieee.std_logic_1164.all;

entity subtrator_8bits is 
	port( A, B: in std_logic_vector(7 downto 0);
	      O: out std_logic_vector(7 downto 0);
	      Cout: out std_logic);
end subtrator_8bits;

architecture log of subtrator_8bits is

component somador_8bits is
  port( A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	Cout: out std_logic);
end component;

component porta_NOT is
  port (A: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

  signal aux_Cout : std_logic;

  signal complementoB : std_logic_vector(7 downto 0);
  signal notB : std_logic_vector(7 downto 0);
  signal entradaFixa : std_logic_vector(7 downto 0);
 

begin

    entradaFixa <= "00000001";
    U1: porta_NOT port map(B, notB);
    U2: somador_8bits port map(notB, entradaFixa, complementoB, aux_Cout);

    X1: somador_8bits port map(A, complementoB, O, Cout);

end log;