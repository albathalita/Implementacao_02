library ieee;
use ieee.std_logic_1164.all;

entity implementacao_02 is 
	port( 	KEY: in std_logic_vector(3 downto 0);
		SW: in std_logic_vector(15 downto 0);
		HEX2,HEX1,HEX0: out std_logic_vector(0 to 6);
		C, Z: out std_logic);
end implementacao_02;

architecture log of implementacao_02 is

component ckt_BCD is
  port( SW: in std_logic_vector(7 downto 0);
	HEX2,HEX1,HEX0: out std_logic_vector(0 to 6));
end component;

component ula is 
  port( KEY: in std_logic_vector(3 downto 0);
	A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	C, Z: out std_logic);
end component;

  signal A, B, O: std_logic_vector(7 downto 0);
  

begin 

	A <= SW(7 downto 0);
	B <= SW(15 downto 8);
	
	
	U1: ula port map(KEY, A, B, O, C, Z);
	U2: ckt_BCD port map(O,HEX2,HEX1,HEX0);

end log;