library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder is
    port (
        A : in std_logic;
        B : in std_logic;
        S : out std_logic;
        C : out std_logic
        );  
end half_adder;

architecture Behavioral of half_adder is
    signal g0 : std_logic;
    signal g1 : std_logic;
    signal g2 : std_logic;
begin
    g0 <= A nand B;
    g1 <= g0 nand A;
    g2 <= g0 nand B;
    S <= g1 nand g2;
    C <= g0 nand g0;
end Behavioral;