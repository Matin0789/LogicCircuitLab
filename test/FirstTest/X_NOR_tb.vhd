library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity X_NOR_tb is
end X_NOR_tb;


architecture TestBench of X_NOR_tb is
    signal A : std_logic;
    signal B : std_logic;
    signal Q : std_logic;
begin 
    test : entity work.X_NOR port map(
        A => A,
        B => B,
        Q => Q
    );

    process
    begin
        report "Starting Testbench for XNOR";
        
        --
        A <= '0';
        B <= '0';
        assert Q = '0'
            report "Test Failed: Q most be 1 but know it's 0"
            severity error;
        --
        wait for 10 ns;

        --
        A <= '0';
        B <= '1';
        assert Q = '1'
            report "Test Failed: Q most be 0 but know it's 1"
            severity error;
        --
        wait for 10 ns;

        --
        A <= '1';
        B <= '0';
        assert Q = '1'
            report "Test Failed: Q most be 0 but know it's 1"
            severity error;
        --
        wait for 10 ns;

        --
        A <= '1';
        B <= '1';
        assert Q = '0'
            report "Test Failed: Q most be 1 but know it's 0"
            severity error;
        --
        wait for 10 ns;
        
        wait;

    end process;
end TestBench;