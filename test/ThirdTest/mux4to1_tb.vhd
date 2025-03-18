library ieee;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity mux4to1_tb is
end mux4to1_tb;


architecture TestBench of mux4to1_tb is
    signal I : std_logic_vector(3 downto 0);
    signal S : std_logic_vector(1 downto 0);
    signal Q : std_logic;
begin 
    test : entity work.mux4to1 port map(
        I0 => I(0), I1 => I(1), I2 => I(2), I3 => I(3),
        S => S,
        Q => Q
    );

    process
    begin
        report "Starting Testbench for MUX4to1" severity note;
        
        --
        for j in 0 to 3 loop
            S <= std_logic_vector(to_unsigned(j, 2));
            I <= "1010";
            wait for 10 ns;
            assert (Q = I(j))
                report "Test failed Q=" & std_logic'image(Q) & "for S=" & integer'image(j) & " and I(" & integer'image(j) & ")=" & std_logic'image(I(j))
                severity error;
        end loop;
        --
        for j in 0 to 3 loop
            S <= std_logic_vector(to_unsigned(j, 2));
            I <= "0101";
            wait for 10 ns;
            assert (Q = I(j))
                report "Test failed Q=" & std_logic'image(Q) & "for S=" & integer'image(j) & " and I(" & integer'image(j) & ")=" & std_logic'image(I(j))
                severity error;
        end loop; 
        --
        
        report "Testbench completed successfully!" severity note;
        wait;
    end process;
end TestBench;