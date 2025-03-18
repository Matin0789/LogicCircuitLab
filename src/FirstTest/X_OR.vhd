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
begin
    Q <= ((not A) and B) or (A and (not B));
end Behavioral;