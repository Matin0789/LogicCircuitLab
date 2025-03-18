library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_tb is
end half_adder_tb;


architecture TestBench of half_adder_tb is
    signal A : std_logic;
    signal B : std_logic;
    signal S : std_logic;
    signal C : std_logic;
begin 
    test : entity work.half_adder port map(
        A => A,
        B => B,
        S => S,
        C => C
    );

    process
    begin
        report "Starting Testbench for half_adder";
        

        --
        A <= '1';
        B <= '0';
        assert not(S = '1' and C = '0')
        report "Test Failed"
        severity error;
        --
        wait for 10 ns;

        --
        A <= '0';
        B <= '0';
        assert not(S = '0' and C = '0')
        report "Test Failed"
        severity error;
        --
        wait for 10 ns;

        --
        A <= '0';
        B <= '1';
        assert not(S = '1' and C = '0')
        report "Test Failed"
        severity error;
        --
        wait for 10 ns;

        --
        A <= '1';
        B <= '1';
        assert not(S = '0' and C = '1')
        report "Test Failed"
        severity error;
        --
        wait for 10 ns;

        wait;

    end process;
end TestBench;