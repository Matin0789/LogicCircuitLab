library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_N_tb is
end AND_N_tb;


architecture TestBench of AND_N_tb is
    signal A : std_logic;
    signal B : std_logic;
    signal Q : std_logic;
begin 
    test : entity work.AND_N port map(
        A => A,
        B => B,
        Q => Q
    );

    process
    begin
        report "Starting Testbench for AND";
        
        --
        A <= '0';
        B <= '0';
        assert Q = '1'
            report "Test Failed: Q most be 0 but know it's 1"
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