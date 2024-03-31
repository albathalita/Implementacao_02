library ieee;
use ieee.std_logic_1164.all;

entity Shifter_L is
    port (A, B : in std_logic_vector(7 downto 0);       
          O : out std_logic_vector(7 downto 0); 
          Co: out std_logic);
end entity Shifter_L;

architecture BarrelShifter_L of Shifter_L is

component shift1 is
    port (A0, B: in  std_logic_vector(7 downto 0);
	  O0: out std_logic_vector(7 downto 0);
	  C0: out std_logic);
end component;

component shift2 is
    port (A1, B : in  std_logic_vector(7 downto 0);
	  C0: in std_logic;
	  O1: out std_logic_vector(7 downto 0);
	  C1: out std_logic);
end component;

component shift4 is
    port (A2, B : in  std_logic_vector(7 downto 0);
	  C1: in std_logic;
	  O2: out std_logic_vector(7 downto 0);
	  C2: out std_logic);
end component;

    signal O_0 : std_logic_vector(7 downto 0);
    signal O_1   : std_logic_vector(7 downto 0);
    signal C_0 : std_logic;
    signal C_1   : std_logic;

begin

	U1: shift1 port map( A, B, O_0, C_0);
	U2: shift2 port map( O_0, B, C_0, O_1, C_1);
	U3: shift4 port map( O_1, B,C_1, O, Co);

end BarrelShifter_L;

