library ieee;
use ieee.std_logic_1164.all;


entity and_gate is
    port (
        a, b : in std_logic;
        d : out std_logic
    );
end entity;


architecture rtl of and_gate is
begin
    d <= a and b;
end architecture;
