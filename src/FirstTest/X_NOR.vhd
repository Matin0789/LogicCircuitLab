library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity X_NOR is
    port (
        A : in std_logic;
        B : in std_logic;
        Q : out std_logic
        );  
end X_NOR;

architecture Behavioral of X_NOR is
begin
    Q <= (A and B) or (A nor b);
end Behavioral;