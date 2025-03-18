library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_N is
    port (
        A : in std_logic;
        B : in std_logic;
        Q : out std_logic
        );  
end AND_N;

architecture Behavioral of AND_N is
    signal A_NAND_B : std_logic;
begin
    A_NAND_B <= (A nand B);
    Q <= A_NAND_B nand A_NAND_B;
end Behavioral;