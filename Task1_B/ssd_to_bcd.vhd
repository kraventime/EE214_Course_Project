library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity bcd_to_ssd is
port (
	bcd_in : in std_logic_vector(3 downto 0);
	seg_out : out std_logic_vector(6 downto 0)
);
end entity;

architecture Behavior of bcd_to_ssd is
begin
	convertor : process(bcd_in)
	begin
		case bcd_in is
			when "0000" =>
				seg_out <= "0000001";
			when "0001" => 
				seg_out <= "1001111";
			when "0010" =>
				seg_out <= "0010010";
			when "0011" =>
				seg_out <= "0000110";
			when "0100" =>
				seg_out <= "1001100";
			when "0101" =>
				seg_out <= "0100100";
			when "0110" =>
				seg_out <= "0100000";
			when "0111" => 
				seg_out <= "0001111";
			when "1000" =>
				seg_out <= "0000000";
			when "1001" =>
				seg_out <= "0001100";
			when "1010" =>
				seg_out <= "1111110";
			when others =>
				seg_out <= "1111111";
		end case;
	end process;
end Behavior;