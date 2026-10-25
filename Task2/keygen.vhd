library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity keygen is
port (
	row_pat : in std_logic_vector(3 downto 0);
	col_sel : in std_logic_vector(3 downto 0);
	key_code : out std_logic_vector(3 downto 0)
);
end entity;

architecture Behavior of keygen is
begin
	generate_key : process(row_pat, col_sel)
	begin
		case row_pat & col_sel is
			when "11101110" =>
				key_code <= "0001";
			when "11101101" =>
				key_code <= "0010";
			when "11101011" =>
				key_code <= "0011";
			when "11100111" =>
				key_code <= "1010";
			when "11011110" =>
				key_code <= "0100";
			when "11011101" =>
				key_code <= "0101";
			when "11011011" =>
				key_code <= "0110";
			when "11010111" =>
				key_code <= "1011";
			when "10111110" =>
				key_code <= "0111";
			when "10111101" =>
				key_code <= "1000";
			when "10111011" =>
				key_code <= "1001";
			when "10110111" =>
				key_code <= "1100";
			when "01111110" =>
				key_code <= "1110";
			when "01111101" =>
				key_code <= "0000";
			when "01111011" =>
				key_code <= "1111";
			when "01110111" =>
				key_code <= "1101";
			when others =>
				key_code <= "1111";
		end case;
	end process;
end Behavior;