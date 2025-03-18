library ieee;
use IEEE.STD_LOGIC_1164.ALL;

entity mux4to1 is
    port (
        I0 : in std_logic;
        I1 : in std_logic;
        I2 : in std_logic;
        I3 : in std_logic;
        S : in std_logic_vector(1 downto 0);
        Q : out std_logic
        );
end mux4to1;

architecture Behavioral of mux4to1 is
    signal mux2to1_0 : std_logic;
    signal mux2to1_1 : std_logic;
    signal mux2to1_2 : std_logic;

begin
    lbl_mux2to1_0 : entity work.mux2to1 port map(I0,I1,S(0),mux2to1_0);
    lbl_mux2to1_1 : entity work.mux2to1 port map(I2,I3,S(0),mux2to1_1);
    lbl_mux2to1_2 : entity work.mux2to1 port map(mux2to1_0,mux2to1_1,S(1),Q);
end Behavioral;