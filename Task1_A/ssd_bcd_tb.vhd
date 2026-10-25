library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ssd_bcd_tb is
end entity;

architecture Behavior of ssd_bcd_tb is
	component seven_seg_scroll_bcd is
		port(
			clk : in std_logic;
			reset : in std_logic;
			start : in std_logic;
			bcd_out : out std_logic_vector(3 downto 0);
			sel_out : out std_logic_vector(3 downto 0)
		);
	end component;
	
	signal clock, reset, start : std_logic := '0';
	signal bcd_out, sel_out : std_logic_vector(3 downto 0);
	
begin
	clock <= not clock after 10ns;
	reset <= '1', '0' after 1us;
	
	dut : seven_seg_scroll_bcd port map (clk => clock, reset => reset, start => start, 
						bcd_out => bcd_out, sel_out => sel_out);
	
	stimulus : process begin
		wait until (reset = '0');
		
		start <= '1';
		wait for 1min;
		wait;
	end process stimulus;
end Behavior;
	