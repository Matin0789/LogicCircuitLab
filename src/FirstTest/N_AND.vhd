library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity N_AND is
    port (
        A : in std_logic;
        B : in std_logic;
        Q : out std_logic
        );  
end N_AND;

architecture Behavioral of N_AND is
begin
    Q <= (not A) or (not B);
end Behavioral;