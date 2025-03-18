library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2to1_tb is
end mux2to1_tb;


architecture TestBench of mux2to1_tb is
    signal I0 : std_logic;
    signal I1 : std_logic;
    signal S : std_logic;
    signal Q : std_logic;
begin 
    test : entity work.mux2to1 port map(
        I0 => I0,
        I1 => I1,
        S => S,
        Q => Q
    );

    process
    begin
        report "Starting Testbench for MUX2to1" severity note;
        
        --
        I0 <= '0';
        I1 <= '0';
        S <= '0';
        wait for 10 ns;
        assert Q = '0'
            report "Test Failed 0"
            severity error;
        --

        --
        I0 <= '0';
        I1 <= '0';
        S <= '1';
        wait for 10 ns;
        assert Q = '0'
            report "Test Failed 1"
            severity error;
        --

        --
        I0 <= '1';
        I1 <= '0';
        S <= '0';
        wait for 10 ns;
        assert Q = '1'
            report "Test Failed 2"
            severity error;
        --

        --
        I0 <= '1';
        I1 <= '0';
        S <= '1';
        wait for 10 ns;
        assert Q = '0'
            report "Test Failed 3"
            severity error;
        --
        
        --
        I0 <= '0';
        I1 <= '1';
        S <= '0';
        wait for 10 ns;
        assert Q = '0'
            report "Test Failed 4"
            severity error;
        --
        
        --
        I0 <= '0';
        I1 <= '1';
        S <= '1';
        wait for 10 ns;
        assert Q = '1'
            report "Test Failed 5"
            severity error;
        --
        
        --
        I0 <= '1';
        I1 <= '1';
        S <= '0';
        wait for 10 ns;
        assert Q = '1'
            report "Test Failed 6"
            severity error;
        --
        
        --
        I0 <= '1';
        I1 <= '1';
        S <= '1';
        wait for 10 ns;
        assert Q = '1'
            report "Test Failed 7"
            severity error;
        --
        
        report "Testbench completed successfully!" severity note;
        wait;
    end process;
end TestBench;