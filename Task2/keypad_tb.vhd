library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity keypad_tb is
end entity;

architecture Testbench of keypad_tb is
	signal clock, reset : std_logic := '0';
	signal row_in : std_logic_vector(3 downto 0);

	component keypad_interface is
		port (
			clk : in std_logic;
			reset : in std_logic;
			row_in : in std_logic_vector(3 downto 0);
			col_out : out std_logic_vector(3 downto 0);
			led_out : out std_logic_vector(3 downto 0);
			key_valid : out std_logic
		);
	end component;
	
	signal led_out : std_logic_vector(3 downto 0);
	signal key_valid : std_logic;
	signal col_out : std_logic_vector(3 downto 0);

begin
	clock <= not clock after 10ns;
	reset <= '1', '0' after 1us;
	
	dut : keypad_interface port map (clk => clock, reset => reset, row_in => row_in, 
							col_out => col_out, key_valid => key_valid, led_out => led_out);
	
	
	stimulus : process
	begin
		wait until (reset = '0');
		
		wait for 3ns;
		row_in <= "1110";
		wait for 1sec;
		row_in <= "1111";
		wait for 1ms;
		wait;
	end process;
end Testbench;

