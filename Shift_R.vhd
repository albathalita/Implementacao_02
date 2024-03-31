library ieee;
use ieee.std_logic_1164.all;

entity Shifter_R is
    port (A, B : in std_logic_vector(7 downto 0);    
          O : out std_logic_vector(7 downto 0));                    
end entity Shifter_R;

architecture BarrelShifter_R of Shifter_R is

component shiftR1 is
    port (A0, B: in  std_logic_vector(7 downto 0);
	  O0: out std_logic_vector(7 downto 0));
end component;

component shiftR2 is
    port (A1, B: in  std_logic_vector(7 downto 0);
	  O1: out std_logic_vector(7 downto 0));
end component;

component shiftR4 is
    port (A2, B: in  std_logic_vector(7 downto 0);
	  O2: out std_logic_vector(7 downto 0));
end component;

    signal O_0 : std_logic_vector(7 downto 0);
    signal O_1   : std_logic_vector(7 downto 0);

begin

	U1: shiftR1 port map( A, B, O_0);
	U2: shiftR2 port map( O_0, B, O_1);
	U3: shiftR4 port map( O_1, B, O);

end architecture BarrelShifter_R;
