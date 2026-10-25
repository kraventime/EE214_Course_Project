library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_divider is
	port(
		clk_50MHz : in std_logic;
		mux_clk : out std_logic;
		scroll_clk : out std_logic
	);
end entity;

architecture Behavior of clock_divider is
begin
	clock_division : process(clk_50MHz)
		variable mux_counter, scroll_counter: integer := 0;
		variable mux_clkout, scroll_clkout: std_logic := '0';
	begin
		if rising_edge(clk_50MHz) then
			if mux_counter = 25000 then
				mux_counter := 0;
				mux_clkout := not mux_clkout;
			end if;
			mux_counter := mux_counter + 1;
			
			if scroll_counter = 12500000 then
				scroll_counter := 0;
				scroll_clkout := not scroll_clkout;
			end if;
			scroll_counter := scroll_counter + 1;
			
			mux_clk <= mux_clkout;
			scroll_clk <= scroll_clkout;
		end if;
	end process;
end Behavior;