library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity keypad_interface is
port (
	clk : in std_logic;
	reset : in std_logic;
	row_in : in std_logic_vector(3 downto 0);
	col_out : out std_logic_vector(3 downto 0);
	led_out : out std_logic_vector(3 downto 0);
	key_valid : out std_logic
);
end entity;

architecture Behavior of keypad_interface is
	type state_t is (IDLE, SCAN_COL1, SCAN_COL2, SCAN_COL3, SCAN_COL4, KEY_PRESS, DEBOUNCE, KEY_RELEASE);
	signal state : state_t := IDLE;
	
	signal row_sync : std_logic_vector(3 downto 0) := "1111"; -- Prevents metastable conditions
	signal debounce_counter : integer := 0; -- Counter to detect unstable, bouncing input
	signal internal_key_value : std_logic_vector(3 downto 0) := "0000"; -- Final locked in value (stable input)
	signal row_pat : std_logic_vector(3 downto 0) := "1111";  -- Latched values
	signal col_sel : integer range 0 to 3 := 0;
	
	constant SETTLE_CYCLES : integer := 500;
	constant DEBOUNCE_LIMIT : integer := 875000; 
	
	function ONE_COLD(x : std_logic_vector(3 downto 0)) return std_logic is
	begin
		if x = "0111" or x = "1011" or x = "1101" or x = "1110" then
			return '1';
		else
			return '0';
		end if;
	end ONE_COLD;
	
	function PATTERN(k : integer range 0 to 3) return std_logic_vector is
	begin
		case k is
			when 0 =>
				return "1110";
			when 1 =>
				return "1101";
			when 2 =>
				return "1011";
			when 3 =>
				return "0111";
		end case;
	end PATTERN;
	
	signal row_inter, key_code : std_logic_vector(3 downto 0) := "1111";
	
	component keygen is
		port (
			row_pat : in std_logic_vector(3 downto 0);
			col_sel : in std_logic_vector(3 downto 0);
			key_code : out std_logic_vector(3 downto 0)
		);
	end component;
	
begin
	key_generator : keygen port map (row_pat => row_pat, col_sel => PATTERN(col_sel), key_code => key_code);
	
	-- For row_sync
	synchronization : process(clk)
	begin
		if rising_edge(clk) then
			row_inter <= row_in;
			row_sync <= row_inter;
		end if;
	end process;
	
	led_out <= internal_key_value;
	-- FSM
	interfacing : process(clk, reset)
	begin
		if reset = '1' then
			state <= IDLE;
			key_valid <= '0';
		elsif rising_edge(clk) then
			if state = IDLE then
				internal_key_value <= "0000";
				key_valid <= '0';
				col_out <= "0000";
				if row_sync /= "1111" then
					state <= SCAN_COL1;
					debounce_counter <= 0;
				end if;
			elsif state = SCAN_COL1 then
				key_valid <= '0';
				col_out <= PATTERN(0);
				if debounce_counter < SETTLE_CYCLES - 1 then
					debounce_counter <= debounce_counter + 1;
				else
					debounce_counter <= 0;
					if ONE_COLD(row_sync) = '1' then
						row_pat <= row_sync;
						col_sel <= 0;
						state <= KEY_PRESS;
					else
						state <= SCAN_COL2;
						debounce_counter <= 0;
					end if;
				end if;
			elsif state = SCAN_COL2 then
				key_valid <= '0';
				col_out <= PATTERN(1);
				if debounce_counter < SETTLE_CYCLES - 1 then
					debounce_counter <= debounce_counter + 1;
				else
					debounce_counter <= 0;
					if ONE_COLD(row_sync) = '1' then
						row_pat <= row_sync;
						col_sel <= 1;
						state <= KEY_PRESS;
					else
						state <= SCAN_COL3;
						debounce_counter <= 0;
					end if;
				end if;
			elsif state = SCAN_COL3 then
				key_valid <= '0';
				col_out <= PATTERN(2);
				if debounce_counter < SETTLE_CYCLES - 1 then
					debounce_counter <= debounce_counter + 1;
				else
					debounce_counter <= 0;
					if ONE_COLD(row_sync) = '1' then
						row_pat <= row_sync;
						col_sel <= 2;
						state <= KEY_PRESS;
					else
						state <= SCAN_COL4;
						debounce_counter <= 0;
					end if;
				end if;
			elsif state = SCAN_COL4 then
				key_valid <= '0';
				col_out <= PATTERN(3);
				if debounce_counter < SETTLE_CYCLES - 1 then
					debounce_counter <= debounce_counter + 1;
				else
					debounce_counter <= 0;
					if ONE_COLD(row_sync) = '1' then
						row_pat <= row_sync;
						col_sel <= 3;
						state <= KEY_PRESS;
					else
						state <= IDLE;
					end if;
				end if;
			elsif state = KEY_PRESS then
				key_valid <= '0';
				col_out <= PATTERN(col_sel); -- Drive it constantly.
				debounce_counter <= 0;
				state <= DEBOUNCE;
			elsif state = DEBOUNCE then
				if row_sync /= row_pat then
					state <= IDLE;
					key_valid <= '0';
				elsif debounce_counter = DEBOUNCE_LIMIT - 1 then
					internal_key_value <= key_code;
					key_valid <= '1'; -- One clock pulse to show key has been locked in.
					debounce_counter <= 0;
					state <= KEY_RELEASE;
				else
					debounce_counter <= debounce_counter + 1;
					key_valid <= '0';
				end if;
			elsif state = KEY_RELEASE then
				key_valid <= '0';
				col_out <= PATTERN(col_sel);
				if row_sync /= "1111" then
					debounce_counter <= 0; -- Still held or bouncing.
				elsif debounce_counter < DEBOUNCE_LIMIT - 1 then
					debounce_counter <= debounce_counter + 1;
				elsif debounce_counter = DEBOUNCE_LIMIT - 1 then
					debounce_counter <= 0;
					state <= IDLE;
				end if;
			end if;
		end if;
	end process;
end Behavior;
					
				