library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity N_OR is
    port (
        A : in std_logic;
        B : in std_logic;
        Q : out std_logic
        );  
end N_OR;

architecture Behavioral of N_OR is
begin
    Q <= (not A) and (not B);
end Behavioral;