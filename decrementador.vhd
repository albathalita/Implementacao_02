library ieee;
use ieee.std_logic_1164.all;

entity decrementador is 
	port( A: in std_logic_vector(7 downto 0);
	      O: out std_logic_vector(7 downto 0);
	      Cout: out std_logic);
end decrementador;

architecture log of decrementador is

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

  signal complemento : std_logic_vector(7 downto 0);
  signal B : std_logic_vector(7 downto 0);
  signal notB : std_logic_vector(7 downto 0);
  signal entradaFixa : std_logic_vector(7 downto 0);
 

begin

    entradaFixa <= "00000001";
    B <= "00000001";
    U1: porta_NOT port map(B, notB);
    U2: somador_8bits port map(notB, entradaFixa, complemento, aux_Cout);

    X1: somador_8bits port map(A, complemento, O, Cout);

end log;