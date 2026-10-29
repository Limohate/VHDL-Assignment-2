library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity logic_test is
    port (
        a, b, c, d : in STD_LOGIC;
        out1, out2 : out STD_LOGIC
    );
end logic_test;

architecture Behavioral of logic_test is
begin
    out1 <= a and b and c and d;
    out2 <= a or b or c or d;
end Behavioral;
