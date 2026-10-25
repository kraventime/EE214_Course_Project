library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider_tb is
end entity;

architecture Behavior of clock_divider_tb is
	signal clock : std_logic := '0';
	signal mux_clk, scroll_clk : std_logic;
	
	component clock_divider is
		port(
			clk_50MHz : in std_logic;
			mux_clk : out std_logic;
			scroll_clk : out std_logic
		);
	end component;
	
begin
	clock <= not clock after 10ns;
	
	dut : clock_divider port map (clk_50MHz => clock, mux_clk => mux_clk, scroll_clk => scroll_clk);
end Behavior;