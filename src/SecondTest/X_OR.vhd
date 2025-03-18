library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity X_OR is
    port (
        A : in std_logic;
        B : in std_logic;
        Q : out std_logic
        );  
end X_OR;

architecture Behavioral of X_OR is
    signal g0 : std_logic;
    signal g1 : std_logic;
    signal g2 : std_logic;
begin
    g0 <= A nand B;
    g1 <= g0 nand A;
    g2 <= g0 nand B;
    Q <= g1 nand g2;
end Behavioral;