library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1 is
    port (
        I0 : in std_logic;
        I1 : in std_logic;
        S : in std_logic;
        Q : out std_logic
        );
end mux2to1;

architecture Behavioral of mux2to1 is
    signal g0 : std_logic;
    signal g1 : std_logic;
    signal S_NOT : std_logic;
begin
    S_NOT <= S nand S;
    g0 <= I0 nand S_NOT;
    g1 <= I1 nand S;
    Q <= g0 nand g1;
end Behavioral;