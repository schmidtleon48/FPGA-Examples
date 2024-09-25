-- testbench.vhdl
library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end entity testbench;

architecture behavior of testbench is
    signal a, b, y : std_logic;
begin
    UUT: entity work.and_gate
        port map (
            a => a,
            b => b,
            y => y
        );

    stimulus: process
    begin
        a <= '0'; b <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; wait for 10 ns;
        wait;
    end process;
end architecture behavior;
