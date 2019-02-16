library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity bin_counter is
    generic (
        size : integer := 26
    );
    port (
        clk : in std_logic;
        counter_out : out std_logic_vector(size - 1 downto 0)
    );
end entity;


architecture rtl of bin_counter is
    signal counter_r : std_logic_vector(counter_out'range) := (others => '0');
begin
    counter : process (clk)
    begin
        if rising_edge(clk) then
            counter_r <= std_logic_vector(unsigned(counter_r) + 1);
        end if;
    end process;

    counter_out <= counter_r;
end architecture;
