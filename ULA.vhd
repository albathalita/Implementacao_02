library ieee;
use ieee.std_logic_1164.all;

entity ula is 
	port( KEY: in std_logic_vector(3 downto 0);
	      A, B: in std_logic_vector(7 downto 0);
	      O: out std_logic_vector(7 downto 0);
	      C, Z: out std_logic);
end ula;



architecture log of ula is

component mux is 
  port( KEY: in std_logic_vector(3 downto 0);
	ADD, SUB, MUL, INC, DEC, SHL, SHR, SWP, SWA, P_AND, P_OR, P_XOR, P_NOT: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

component somador_8bits is
  port( A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	Cout: out std_logic);
end component;

component subtrator_8bits is
  port( A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	Cout: out std_logic);
end component;

component multiplicador is
  port( A, B: in std_logic_vector(7 downto 0);
	O : out std_logic_vector(7 downto 0);
	Cout : out std_logic);
end component;

component incrementador is 
  port( A: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	Cout: out std_logic);
end component;

component decrementador is 
  port( A: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0);
	Cout: out std_logic);
end component;

component shifter_l is
  port( A, B: in std_logic_vector(7 downto 0);       
        O: out std_logic_vector(7 downto 0); 
        Co: out std_logic);
end component;

component shifter_r is
  port( A, B: in std_logic_vector(7 downto 0);       
        O: out std_logic_vector(7 downto 0));
end component;

component permuta is 
  port( A: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

component inverter is 
  port( A: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

component porta_AND is
  port (A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

component porta_OR is
  port (A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

component porta_XOR is
  port (A, B: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

component porta_NOT is
  port (A: in std_logic_vector(7 downto 0);
	O: out std_logic_vector(7 downto 0));
end component;

  signal auxADD: std_logic_vector(7 downto 0);
  signal auxSUB: std_logic_vector(7 downto 0);
  signal auxMUL: std_logic_vector(7 downto 0);
  signal auxINC: std_logic_vector(7 downto 0);
  signal auxDEC: std_logic_vector(7 downto 0);
  signal auxSHL: std_logic_vector(7 downto 0);
  signal auxSHR: std_logic_vector(7 downto 0);
  signal auxSWP: std_logic_vector(7 downto 0);
  signal auxSWA: std_logic_vector(7 downto 0);
  signal auxAND: std_logic_vector(7 downto 0);
  signal auxOR:  std_logic_vector(7 downto 0);
  signal auxXOR: std_logic_vector(7 downto 0);
  signal auxNOT: std_logic_vector(7 downto 0);


  signal auxO: std_logic_vector(7 downto 0);

  signal O7654: std_logic;
  signal O3210: std_logic;

  signal Cout_ADD: std_logic;
  signal Cout_SUB: std_logic;
  signal Cout_MUL: std_logic;
  signal Cout_INC: std_logic;
  signal Cout_DEC: std_logic;
  signal Cout_SHL: std_logic;

begin 

    	F1: somador_8bits port map(A, B, auxADD, Cout_ADD);
	F2: subtrator_8bits port map(A, B, auxSUB, Cout_SUB);
	F3: multiplicador port map(A, B, auxMUL, Cout_MUL);
    	F4: incrementador port map(A, auxINC, Cout_INC);
	F5: decrementador port map(A, auxDEC, Cout_DEC);
	F6: shifter_l port map(A, B, auxSHL, Cout_SHL);
	F7: shifter_r port map(A, B, auxSHR);
	F8: permuta port map(A, auxSWP);
	F9: inverter port map(A, auxSWA);
    	F10: porta_AND port map(A, B, auxAND);
    	F11: porta_OR port map(A, B, auxOR);
    	F12: porta_XOR port map(A, B, auxXOR);
    	F13: porta_NOT port map(A, auxNOT);


    	M1: mux port map(KEY,auxADD,auxSUB,auxMUL,auxINC,auxDEC,auxSHL,auxSHR,auxSWP,auxSWA,auxAND,auxOR, auxXOR, auxNOT, auxO);
	
	O <= auxO;
    	O7654 <= (auxO(7) nor auxO(6)) nor (auxO(5) nor auxO(4));
    	O3210 <= (auxO(3) nor auxO(2)) nor (auxO(1) nor auxO(0));
    	Z <= O7654 nor O3210;
	
    	C <= ( Cout_ADD and not(KEY(3)) and not(KEY(2)) and not(KEY(1)) and    (KEY(0))) or
	     ( Cout_SUB and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and not(KEY(0))) or
	     ( Cout_MUL and not(KEY(3)) and not(KEY(2)) and    (KEY(1)) and    (KEY(0))) or
	     ( Cout_INC and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and not(KEY(0))) or
	     ( Cout_DEC and not(KEY(3)) and    (KEY(2)) and not(KEY(1)) and    (KEY(0))) or
	     ( Cout_SHL and    (KEY(3)) and not(KEY(2)) and not(KEY(1)) and not(KEY(0)));

end log;