library ieee;
use ieee.std_logic_1164.all;


entity bin_counter_tb is
end entity;


architecture tb of bin_counter_tb is
    signal clk : std_logic := '0';
    signal counter : std_logic_vector(25 downto 0);
    signal end_simulation : boolean := true;
begin
    clk <= not clk after 1 ps;
    counter_1 : entity work.bin_counter port map(clk => clk, counter_out => counter);

    end_simulation <= false after 10 ps;
    assert end_simulation
    report "simulation ended"
    severity failure;
end architecture;
