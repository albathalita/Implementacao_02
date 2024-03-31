library ieee;
use ieee.std_logic_1164.all;


entity Multiplicador is
	port ( A, B: in std_logic_vector(7 downto 0);
	       O : out std_logic_vector(7 downto 0);
	       Cout : out std_logic);
end Multiplicador;

architecture log of Multiplicador is

component porta_AND is
  port (A, B:  in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;
	
component somador_8bits is
  port( A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	Cout: out std_logic);
end component;
	
  signal Linhaand1 : std_logic_vector(7 downto 0);
  signal Linhaand2 : std_logic_vector(7 downto 0);
  signal Linhaand3 : std_logic_vector(7 downto 0);
  signal Linhaand4 : std_logic_vector(7 downto 0);
  signal LA0,LA1,LA2,LA3,LB0,LB1,LB2,LB3 : std_logic_vector(7 downto 0);
  signal somaR1,SomaR2 : std_logic_vector(7 downto 0);
		
		
begin	
 
	LA0<=('0','0','0','0',A(3),A(2),A(1),A(0));
	LA1<=('0','0','0',A(3),A(2),A(1),A(0),'0');
	LA2<=('0','0',A(3),A(2),A(1),A(0),'0','0');
	LA3<=('0',A(3),A(2),A(1),A(0),'0','0','0');
	
	LB0<=('0','0','0','0',B(0),B(0),B(0),B(0));
	LB1<=('0','0','0',B(1),B(1),B(1),B(1),'0');
	LB2<=('0','0',B(2),B(2),B(2),B(2),'0','0');
	LB3<=('0',B(3),B(3),B(3),B(3),'0','0','0');
	
	Multi1: porta_AND port map(LA0,LB0,Linhaand1);
	Multi2: porta_AND port map(LA1,LB1,Linhaand2);
	Multi3: porta_AND port map(LA2,LB2,Linhaand3);
	Multi4: porta_AND port map(LA3,LB3,Linhaand4);
	
	Result1: somador_8bits port map(Linhaand1,Linhaand2,somaR1);
	Result2: somador_8bits port map(somaR1,Linhaand3,somaR2);
	Result3: somador_8bits port map(somaR2,linhaand4,O,Cout);
	
 
end log;