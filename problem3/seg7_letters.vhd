library ieee;
use ieee.std_logic_1164.all;

entity seg7_letters is
    port(
        sel : in std_logic_vector(2 downto 0);
        display : out std_logic_vector(7 downto 0)
    );
end entity seg7_letters;

architecture bhv of seg7_letters is
begin
    process(sel)
    begin
        case sel is
            when "000" => display <= "11111010"; -- a
            when "001" => display <= "00111110"; -- b
            when "010" => display <= "00011010"; -- c
            when "011" => display <= "01111010"; -- d
            when "100" => display <= "10001110"; -- f
            when "101" => display <= "11110110"; -- g
            when others => display <= "00000000";
        end case;
    end process;
end architecture bhv;
