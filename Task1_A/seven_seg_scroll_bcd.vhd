library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_seg_scroll_bcd is
	port(
		clk : in std_logic;
		reset : in std_logic;
		start : in std_logic;
		bcd_out : out std_logic_vector(3 downto 0);
		sel_out : out std_logic_vector(3 downto 0)
	);
end entity;

architecture Behavior of seven_seg_scroll_bcd is
	signal mux_clk : std_logic;
	signal scroll_clk : std_logic;
	
	type display_buffer_t is array (natural range <>) of std_logic_vector(3 downto 0); -- Unconstrained array type
	signal display_buffer : display_buffer_t(0 to 3) := ("1111", "1111", "1111", "1111");
	signal buffer_data : display_buffer_t(0 to 17) := ("1111", "1111", "1111", "1111", 
																		"0001", "0010", "0011", "0100", 
																		"0101", "0110", "0111", "1000", 
																		"1001", "0000", "1111", "1111", 
																		"1111", "1111");
												 
	type fsm_states is (IDLE_STATE, LOOP_STATE);
	signal state : fsm_states := IDLE_STATE;
	
	component clock_divider is
		port(
			clk_50MHz : in std_logic;
			mux_clk : out std_logic;
			scroll_clk : out std_logic
		);
	end component;
	
begin
	clk_divider : clock_divider port map (clk_50MHz => clk, mux_clk => mux_clk, scroll_clk => scroll_clk);
	
	-- For display_buffer
	scrolling : process(scroll_clk, reset, start, state, buffer_data)
		variable i : integer range 0 to 14 := 0;
	begin
		if reset = '1' then
			state <= IDLE_STATE;
			i := 0;
		elsif start = '1' and state = IDLE_STATE then
			state <= LOOP_STATE;
			i := 0;
		elsif rising_edge(scroll_clk) and state = LOOP_STATE then
			if i = 14 then
				i := 1;
			else
				i := i + 1;
			end if;
		end if;
		
		for k in 0 to 3 loop
			display_buffer(k) <= buffer_data(i+k);
		end loop;
	end process;
	
	-- For bcd_out and sel_out
	displaying : process(mux_clk)
		variable i : integer range 0 to 3 := 0;
	begin
		if rising_edge(mux_clk) then
			case i is
				when 0 =>
					sel_out <= "1000";
				when 1 =>
					sel_out <= "0100";
				when 2 =>
					sel_out <= "0010";
				when 3 =>
					sel_out <= "0001";
			end case;
			
			bcd_out <= display_buffer(3-i);
			
			if i = 3 then
				i := 0;
			else
				i := i + 1;
			end if;
		end if;
	end process;
end Behavior;

-- IMPORTANT: Range cannot be variable, index can be.
	