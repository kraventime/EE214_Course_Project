-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "10/25/2026 04:42:50"

-- 
-- Device: Altera 10M25SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_16,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_18,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_19,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_129,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_136,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_138,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	keypad_interface IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	row_in : IN std_logic_vector(3 DOWNTO 0);
	col_out : OUT std_logic_vector(3 DOWNTO 0);
	led_out : OUT std_logic_vector(3 DOWNTO 0);
	key_valid : OUT std_logic
	);
END keypad_interface;

-- Design Ports Information
-- col_out[0]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[2]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- col_out[3]	=>  Location: PIN_92,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[0]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[2]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led_out[3]	=>  Location: PIN_56,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_valid	=>  Location: PIN_57,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[0]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[1]	=>  Location: PIN_79,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[2]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- row_in[3]	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF keypad_interface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_row_in : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_col_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_led_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_key_valid : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \col_out[0]~output_o\ : std_logic;
SIGNAL \col_out[1]~output_o\ : std_logic;
SIGNAL \col_out[2]~output_o\ : std_logic;
SIGNAL \col_out[3]~output_o\ : std_logic;
SIGNAL \led_out[0]~output_o\ : std_logic;
SIGNAL \led_out[1]~output_o\ : std_logic;
SIGNAL \led_out[2]~output_o\ : std_logic;
SIGNAL \led_out[3]~output_o\ : std_logic;
SIGNAL \key_valid~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \row_in[0]~input_o\ : std_logic;
SIGNAL \row_inter[0]~0_combout\ : std_logic;
SIGNAL \row_in[2]~input_o\ : std_logic;
SIGNAL \row_inter[2]~2_combout\ : std_logic;
SIGNAL \row_in[1]~input_o\ : std_logic;
SIGNAL \row_inter[1]~1_combout\ : std_logic;
SIGNAL \row_in[3]~input_o\ : std_logic;
SIGNAL \row_inter[3]~3_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \ONE_COLD~0_combout\ : std_logic;
SIGNAL \state~37_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \state.SCAN_COL2~q\ : std_logic;
SIGNAL \state~43_combout\ : std_logic;
SIGNAL \state.SCAN_COL3~q\ : std_logic;
SIGNAL \state~26_combout\ : std_logic;
SIGNAL \state~33_combout\ : std_logic;
SIGNAL \state~34_combout\ : std_logic;
SIGNAL \state.SCAN_COL4~q\ : std_logic;
SIGNAL \col_out[1]~0_combout\ : std_logic;
SIGNAL \state~38_combout\ : std_logic;
SIGNAL \state.KEY_PRESS~q\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \col_out[1]~2_combout\ : std_logic;
SIGNAL \debounce_counter[15]~9_combout\ : std_logic;
SIGNAL \debounce_counter[15]~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \debounce_counter[15]~6_combout\ : std_logic;
SIGNAL \row_pat[1]~feeder_combout\ : std_logic;
SIGNAL \row_pat[3]~0_combout\ : std_logic;
SIGNAL \row_pat[3]~1_combout\ : std_logic;
SIGNAL \row_pat[0]~feeder_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \row_pat[2]~feeder_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \internal_key_value[0]~0_combout\ : std_logic;
SIGNAL \debounce_counter[15]~4_combout\ : std_logic;
SIGNAL \debounce_counter[31]~5_combout\ : std_logic;
SIGNAL \debounce_counter[31]~7_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \Equal5~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \debounce_counter[15]~2_combout\ : std_logic;
SIGNAL \state~40_combout\ : std_logic;
SIGNAL \debounce_counter[15]~3_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~2_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \Equal5~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal5~5_combout\ : std_logic;
SIGNAL \state~41_combout\ : std_logic;
SIGNAL \state~42_combout\ : std_logic;
SIGNAL \state.DEBOUNCE~q\ : std_logic;
SIGNAL \state~44_combout\ : std_logic;
SIGNAL \state~45_combout\ : std_logic;
SIGNAL \state~39_combout\ : std_logic;
SIGNAL \state.KEY_RELEASE~q\ : std_logic;
SIGNAL \state~30_combout\ : std_logic;
SIGNAL \state~27_combout\ : std_logic;
SIGNAL \state~28_combout\ : std_logic;
SIGNAL \state~29_combout\ : std_logic;
SIGNAL \state~31_combout\ : std_logic;
SIGNAL \state~32_combout\ : std_logic;
SIGNAL \state.IDLE~q\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \state~36_combout\ : std_logic;
SIGNAL \state.SCAN_COL1~q\ : std_logic;
SIGNAL \state~35_combout\ : std_logic;
SIGNAL \col_sel[0]~0_combout\ : std_logic;
SIGNAL \col_sel[1]~1_combout\ : std_logic;
SIGNAL \key_generator|Mux0~0_combout\ : std_logic;
SIGNAL \col_out~1_combout\ : std_logic;
SIGNAL \col_out[0]~3_combout\ : std_logic;
SIGNAL \col_out[0]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \col_out~4_combout\ : std_logic;
SIGNAL \col_out[1]~reg0_q\ : std_logic;
SIGNAL \col_out~5_combout\ : std_logic;
SIGNAL \col_out~6_combout\ : std_logic;
SIGNAL \col_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \col_out~7_combout\ : std_logic;
SIGNAL \col_out[3]~reg0_q\ : std_logic;
SIGNAL \key_generator|Mux3~0_combout\ : std_logic;
SIGNAL \key_generator|Mux3~1_combout\ : std_logic;
SIGNAL \key_generator|Mux3~2_combout\ : std_logic;
SIGNAL \key_generator|Mux3~3_combout\ : std_logic;
SIGNAL \key_generator|Mux3~4_combout\ : std_logic;
SIGNAL \internal_key_value[0]~1_combout\ : std_logic;
SIGNAL \key_generator|Mux2~1_combout\ : std_logic;
SIGNAL \key_generator|Mux2~0_combout\ : std_logic;
SIGNAL \key_generator|Mux2~2_combout\ : std_logic;
SIGNAL \key_generator|Mux1~2_combout\ : std_logic;
SIGNAL \key_generator|Mux1~0_combout\ : std_logic;
SIGNAL \key_generator|Mux1~1_combout\ : std_logic;
SIGNAL \key_generator|Mux1~3_combout\ : std_logic;
SIGNAL \key_generator|Mux0~2_combout\ : std_logic;
SIGNAL \key_generator|Mux0~1_combout\ : std_logic;
SIGNAL \key_generator|Mux0~3_combout\ : std_logic;
SIGNAL \key_valid~0_combout\ : std_logic;
SIGNAL \key_valid~1_combout\ : std_logic;
SIGNAL \key_valid~2_combout\ : std_logic;
SIGNAL \key_valid~reg0feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \key_valid~reg0_q\ : std_logic;
SIGNAL internal_key_value : std_logic_vector(3 DOWNTO 0);
SIGNAL col_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL row_pat : std_logic_vector(3 DOWNTO 0);
SIGNAL debounce_counter : std_logic_vector(31 DOWNTO 0);
SIGNAL row_sync : std_logic_vector(3 DOWNTO 0);
SIGNAL row_inter : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_state.IDLE~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_row_in <= row_in;
col_out <= ww_col_out;
led_out <= ww_led_out;
key_valid <= ww_key_valid;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_state.IDLE~q\ <= NOT \state.IDLE~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y10_N2
\col_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[0]~output_o\);

-- Location: IOOBUF_X60_Y13_N23
\col_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[1]~output_o\);

-- Location: IOOBUF_X60_Y14_N23
\col_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[2]~output_o\);

-- Location: IOOBUF_X60_Y15_N23
\col_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \col_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \col_out[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\led_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_key_value(0),
	devoe => ww_devoe,
	o => \led_out[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\led_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_key_value(1),
	devoe => ww_devoe,
	o => \led_out[1]~output_o\);

-- Location: IOOBUF_X19_Y0_N23
\led_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_key_value(2),
	devoe => ww_devoe,
	o => \led_out[2]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\led_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => internal_key_value(3),
	devoe => ww_devoe,
	o => \led_out[3]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\key_valid~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key_valid~reg0_q\,
	devoe => ww_devoe,
	o => \key_valid~output_o\);

-- Location: IOIBUF_X0_Y13_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X60_Y10_N8
\row_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(0),
	o => \row_in[0]~input_o\);

-- Location: LCCOMB_X56_Y4_N8
\row_inter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_inter[0]~0_combout\ = !\row_in[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \row_in[0]~input_o\,
	combout => \row_inter[0]~0_combout\);

-- Location: FF_X56_Y4_N9
\row_inter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_inter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_inter(0));

-- Location: FF_X32_Y4_N17
\row_sync[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => row_inter(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_sync(0));

-- Location: IOIBUF_X60_Y2_N15
\row_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(2),
	o => \row_in[2]~input_o\);

-- Location: LCCOMB_X32_Y4_N30
\row_inter[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_inter[2]~2_combout\ = !\row_in[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \row_in[2]~input_o\,
	combout => \row_inter[2]~2_combout\);

-- Location: FF_X32_Y4_N31
\row_inter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_inter[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_inter(2));

-- Location: FF_X32_Y4_N3
\row_sync[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => row_inter(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_sync(2));

-- Location: IOIBUF_X60_Y8_N22
\row_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(1),
	o => \row_in[1]~input_o\);

-- Location: LCCOMB_X32_Y4_N6
\row_inter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_inter[1]~1_combout\ = !\row_in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \row_in[1]~input_o\,
	combout => \row_inter[1]~1_combout\);

-- Location: FF_X32_Y4_N9
\row_inter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \row_inter[1]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_inter(1));

-- Location: FF_X32_Y4_N29
\row_sync[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => row_inter(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_sync(1));

-- Location: IOIBUF_X60_Y2_N22
\row_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_row_in(3),
	o => \row_in[3]~input_o\);

-- Location: LCCOMB_X32_Y4_N26
\row_inter[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_inter[3]~3_combout\ = !\row_in[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \row_in[3]~input_o\,
	combout => \row_inter[3]~3_combout\);

-- Location: FF_X32_Y4_N27
\row_inter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_inter[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_inter(3));

-- Location: FF_X32_Y4_N5
\row_sync[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => row_inter(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_sync(3));

-- Location: LCCOMB_X32_Y4_N28
\Equal6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (!row_sync(0) & (!row_sync(2) & (!row_sync(1) & !row_sync(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_sync(0),
	datab => row_sync(2),
	datac => row_sync(1),
	datad => row_sync(3),
	combout => \Equal6~0_combout\);

-- Location: LCCOMB_X32_Y4_N4
\ONE_COLD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \ONE_COLD~0_combout\ = (row_sync(0) & (!row_sync(1) & (!row_sync(3) & !row_sync(2)))) # (!row_sync(0) & ((row_sync(1) & (!row_sync(3) & !row_sync(2))) # (!row_sync(1) & (row_sync(3) $ (row_sync(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_sync(0),
	datab => row_sync(1),
	datac => row_sync(3),
	datad => row_sync(2),
	combout => \ONE_COLD~0_combout\);

-- Location: LCCOMB_X34_Y4_N16
\state~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~37_combout\ = (\state.SCAN_COL1~q\ & (!\ONE_COLD~0_combout\ & ((!\LessThan0~6_combout\)))) # (!\state.SCAN_COL1~q\ & (((\state.SCAN_COL2~q\ & \LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONE_COLD~0_combout\,
	datab => \state.SCAN_COL1~q\,
	datac => \state.SCAN_COL2~q\,
	datad => \LessThan0~6_combout\,
	combout => \state~37_combout\);

-- Location: IOIBUF_X40_Y0_N1
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X34_Y4_N17
\state.SCAN_COL2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SCAN_COL2~q\);

-- Location: LCCOMB_X34_Y4_N28
\state~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~43_combout\ = (\state.SCAN_COL2~q\ & (!\ONE_COLD~0_combout\ & ((!\LessThan0~6_combout\)))) # (!\state.SCAN_COL2~q\ & (((\state.SCAN_COL3~q\ & \LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONE_COLD~0_combout\,
	datab => \state.SCAN_COL2~q\,
	datac => \state.SCAN_COL3~q\,
	datad => \LessThan0~6_combout\,
	combout => \state~43_combout\);

-- Location: FF_X34_Y4_N29
\state.SCAN_COL3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SCAN_COL3~q\);

-- Location: LCCOMB_X34_Y6_N0
\state~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~26_combout\ = (!\state.SCAN_COL3~q\ & (!\state.SCAN_COL2~q\ & !\state.SCAN_COL1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL3~q\,
	datac => \state.SCAN_COL2~q\,
	datad => \state.SCAN_COL1~q\,
	combout => \state~26_combout\);

-- Location: LCCOMB_X34_Y4_N12
\state~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~33_combout\ = (\state.SCAN_COL3~q\ & (!\state.SCAN_COL1~q\ & !\state.SCAN_COL2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.SCAN_COL3~q\,
	datac => \state.SCAN_COL1~q\,
	datad => \state.SCAN_COL2~q\,
	combout => \state~33_combout\);

-- Location: LCCOMB_X34_Y4_N26
\state~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~34_combout\ = (\state~33_combout\ & (!\ONE_COLD~0_combout\ & ((!\LessThan0~6_combout\)))) # (!\state~33_combout\ & (((\state.SCAN_COL4~q\ & \LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONE_COLD~0_combout\,
	datab => \state~33_combout\,
	datac => \state.SCAN_COL4~q\,
	datad => \LessThan0~6_combout\,
	combout => \state~34_combout\);

-- Location: FF_X34_Y4_N27
\state.SCAN_COL4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SCAN_COL4~q\);

-- Location: LCCOMB_X34_Y4_N18
\col_out[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out[1]~0_combout\ = (!\state.SCAN_COL4~q\ & (!\state.SCAN_COL2~q\ & (!\state.SCAN_COL1~q\ & !\state.SCAN_COL3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL4~q\,
	datab => \state.SCAN_COL2~q\,
	datac => \state.SCAN_COL1~q\,
	datad => \state.SCAN_COL3~q\,
	combout => \col_out[1]~0_combout\);

-- Location: LCCOMB_X34_Y4_N8
\state~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~38_combout\ = (!\col_out[1]~0_combout\ & ((\LessThan0~6_combout\ & ((\state.KEY_PRESS~q\))) # (!\LessThan0~6_combout\ & (\ONE_COLD~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONE_COLD~0_combout\,
	datab => \col_out[1]~0_combout\,
	datac => \state.KEY_PRESS~q\,
	datad => \LessThan0~6_combout\,
	combout => \state~38_combout\);

-- Location: FF_X34_Y4_N9
\state.KEY_PRESS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.KEY_PRESS~q\);

-- Location: LCCOMB_X33_Y7_N0
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = debounce_counter(0) $ (VCC)
-- \Add0~1\ = CARRY(debounce_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X34_Y4_N14
\col_out[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out[1]~2_combout\ = (!\state.KEY_PRESS~q\ & \col_out[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.KEY_PRESS~q\,
	datad => \col_out[1]~0_combout\,
	combout => \col_out[1]~2_combout\);

-- Location: LCCOMB_X33_Y8_N6
\debounce_counter[15]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[15]~9_combout\ = (\col_out[1]~0_combout\ & (!\state.KEY_PRESS~q\ & (\state.DEBOUNCE~q\ & \Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[1]~0_combout\,
	datab => \state.KEY_PRESS~q\,
	datac => \state.DEBOUNCE~q\,
	datad => \Equal5~5_combout\,
	combout => \debounce_counter[15]~9_combout\);

-- Location: LCCOMB_X32_Y6_N8
\debounce_counter[15]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[15]~8_combout\ = (\debounce_counter[15]~9_combout\) # ((\debounce_counter[15]~2_combout\) # ((!\col_out[1]~0_combout\ & \LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[1]~0_combout\,
	datab => \LessThan0~6_combout\,
	datac => \debounce_counter[15]~9_combout\,
	datad => \debounce_counter[15]~2_combout\,
	combout => \debounce_counter[15]~8_combout\);

-- Location: LCCOMB_X33_Y7_N6
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (debounce_counter(3) & (!\Add0~5\)) # (!debounce_counter(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!debounce_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X33_Y7_N8
\Add0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (debounce_counter(4) & (\Add0~7\ $ (GND))) # (!debounce_counter(4) & (!\Add0~7\ & VCC))
-- \Add0~10\ = CARRY((debounce_counter(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X34_Y8_N28
\Add0~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~9_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~75_combout\);

-- Location: LCCOMB_X34_Y4_N10
\debounce_counter[15]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[15]~6_combout\ = (\col_out[1]~0_combout\ & (!\state.KEY_PRESS~q\ & (\Equal6~0_combout\ & !\state.DEBOUNCE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[1]~0_combout\,
	datab => \state.KEY_PRESS~q\,
	datac => \Equal6~0_combout\,
	datad => \state.DEBOUNCE~q\,
	combout => \debounce_counter[15]~6_combout\);

-- Location: LCCOMB_X32_Y4_N10
\row_pat[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_pat[1]~feeder_combout\ = row_sync(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => row_sync(1),
	combout => \row_pat[1]~feeder_combout\);

-- Location: LCCOMB_X32_Y4_N8
\row_pat[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_pat[3]~0_combout\ = (\reset~input_o\) # (!\state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datad => \state.IDLE~q\,
	combout => \row_pat[3]~0_combout\);

-- Location: LCCOMB_X32_Y6_N14
\row_pat[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_pat[3]~1_combout\ = (\ONE_COLD~0_combout\ & (!\col_out[1]~0_combout\ & (!\row_pat[3]~0_combout\ & !\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ONE_COLD~0_combout\,
	datab => \col_out[1]~0_combout\,
	datac => \row_pat[3]~0_combout\,
	datad => \LessThan0~6_combout\,
	combout => \row_pat[3]~1_combout\);

-- Location: FF_X32_Y4_N11
\row_pat[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_pat[1]~feeder_combout\,
	ena => \row_pat[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_pat(1));

-- Location: LCCOMB_X32_Y4_N0
\row_pat[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_pat[0]~feeder_combout\ = row_sync(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => row_sync(0),
	combout => \row_pat[0]~feeder_combout\);

-- Location: FF_X32_Y4_N1
\row_pat[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_pat[0]~feeder_combout\,
	ena => \row_pat[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_pat(0));

-- Location: LCCOMB_X32_Y4_N16
\Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (row_pat(1) & (row_sync(1) & (row_pat(0) $ (!row_sync(0))))) # (!row_pat(1) & (!row_sync(1) & (row_pat(0) $ (!row_sync(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(1),
	datab => row_pat(0),
	datac => row_sync(0),
	datad => row_sync(1),
	combout => \Equal4~0_combout\);

-- Location: FF_X32_Y4_N7
\row_pat[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => row_sync(3),
	sload => VCC,
	ena => \row_pat[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_pat(3));

-- Location: LCCOMB_X32_Y4_N20
\row_pat[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \row_pat[2]~feeder_combout\ = row_sync(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => row_sync(2),
	combout => \row_pat[2]~feeder_combout\);

-- Location: FF_X32_Y4_N21
\row_pat[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \row_pat[2]~feeder_combout\,
	ena => \row_pat[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => row_pat(2));

-- Location: LCCOMB_X32_Y4_N2
\Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (row_pat(3) & (row_sync(3) & (row_pat(2) $ (!row_sync(2))))) # (!row_pat(3) & (!row_sync(3) & (row_pat(2) $ (!row_sync(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(3),
	datab => row_pat(2),
	datac => row_sync(2),
	datad => row_sync(3),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X33_Y4_N20
\internal_key_value[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \internal_key_value[0]~0_combout\ = (\state.DEBOUNCE~q\ & (\Equal4~0_combout\ & \Equal4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DEBOUNCE~q\,
	datac => \Equal4~0_combout\,
	datad => \Equal4~1_combout\,
	combout => \internal_key_value[0]~0_combout\);

-- Location: LCCOMB_X33_Y4_N16
\debounce_counter[15]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[15]~4_combout\ = (\state.IDLE~q\ & (!\state~30_combout\ & (\col_out[1]~2_combout\ & !\internal_key_value[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \state~30_combout\,
	datac => \col_out[1]~2_combout\,
	datad => \internal_key_value[0]~0_combout\,
	combout => \debounce_counter[15]~4_combout\);

-- Location: LCCOMB_X33_Y4_N18
\debounce_counter[31]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[31]~5_combout\ = (\reset~input_o\) # ((\debounce_counter[15]~4_combout\) # ((!\state.IDLE~q\ & \Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \reset~input_o\,
	datac => \Equal6~0_combout\,
	datad => \debounce_counter[15]~4_combout\,
	combout => \debounce_counter[31]~5_combout\);

-- Location: LCCOMB_X33_Y8_N28
\debounce_counter[31]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[31]~7_combout\ = (!\debounce_counter[31]~5_combout\ & (((\LessThan1~10_combout\) # (!\Equal5~5_combout\)) # (!\debounce_counter[15]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_counter[15]~6_combout\,
	datab => \LessThan1~10_combout\,
	datac => \debounce_counter[31]~5_combout\,
	datad => \Equal5~5_combout\,
	combout => \debounce_counter[31]~7_combout\);

-- Location: FF_X34_Y8_N29
\debounce_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~75_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(4));

-- Location: LCCOMB_X33_Y7_N10
\Add0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (debounce_counter(5) & (!\Add0~10\)) # (!debounce_counter(5) & ((\Add0~10\) # (GND)))
-- \Add0~12\ = CARRY((!\Add0~10\) # (!debounce_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(5),
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X34_Y8_N12
\Add0~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~11_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~11_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X34_Y8_N13
\debounce_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~79_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(5));

-- Location: LCCOMB_X33_Y7_N12
\Add0~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (debounce_counter(6) & (\Add0~12\ $ (GND))) # (!debounce_counter(6) & (!\Add0~12\ & VCC))
-- \Add0~14\ = CARRY((debounce_counter(6) & !\Add0~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(6),
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X34_Y8_N6
\Add0~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~13_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~13_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X34_Y8_N7
\debounce_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~78_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(6));

-- Location: LCCOMB_X33_Y7_N14
\Add0~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (debounce_counter(7) & (!\Add0~14\)) # (!debounce_counter(7) & ((\Add0~14\) # (GND)))
-- \Add0~16\ = CARRY((!\Add0~14\) # (!debounce_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(7),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X34_Y8_N24
\Add0~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~15_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~15_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X34_Y8_N25
\debounce_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(7));

-- Location: LCCOMB_X33_Y7_N16
\Add0~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (debounce_counter(8) & (\Add0~16\ $ (GND))) # (!debounce_counter(8) & (!\Add0~16\ & VCC))
-- \Add0~18\ = CARRY((debounce_counter(8) & !\Add0~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(8),
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~17_combout\,
	cout => \Add0~18\);

-- Location: LCCOMB_X34_Y8_N14
\Add0~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\Add0~17_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~17_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~76_combout\);

-- Location: FF_X34_Y8_N15
\debounce_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~76_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(8));

-- Location: LCCOMB_X33_Y7_N18
\Add0~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (debounce_counter(9) & (!\Add0~18\)) # (!debounce_counter(9) & ((\Add0~18\) # (GND)))
-- \Add0~20\ = CARRY((!\Add0~18\) # (!debounce_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(9),
	datad => VCC,
	cin => \Add0~18\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X33_Y8_N4
\Add0~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~19_combout\,
	combout => \Add0~94_combout\);

-- Location: FF_X33_Y8_N5
\debounce_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~94_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(9));

-- Location: LCCOMB_X33_Y7_N20
\Add0~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (debounce_counter(10) & (\Add0~20\ $ (GND))) # (!debounce_counter(10) & (!\Add0~20\ & VCC))
-- \Add0~22\ = CARRY((debounce_counter(10) & !\Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(10),
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X32_Y8_N30
\Add0~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~21_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~21_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X32_Y8_N31
\debounce_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~95_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(10));

-- Location: LCCOMB_X33_Y7_N22
\Add0~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (debounce_counter(11) & (!\Add0~22\)) # (!debounce_counter(11) & ((\Add0~22\) # (GND)))
-- \Add0~24\ = CARRY((!\Add0~22\) # (!debounce_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(11),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X32_Y8_N28
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~23_combout\,
	combout => \Add0~28_combout\);

-- Location: FF_X32_Y8_N29
\debounce_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~28_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(11));

-- Location: LCCOMB_X33_Y7_N24
\Add0~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (debounce_counter(12) & (\Add0~24\ $ (GND))) # (!debounce_counter(12) & (!\Add0~24\ & VCC))
-- \Add0~26\ = CARRY((debounce_counter(12) & !\Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(12),
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X32_Y8_N22
\Add0~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~25_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~25_combout\,
	combout => \Add0~27_combout\);

-- Location: FF_X32_Y8_N23
\debounce_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~27_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(12));

-- Location: LCCOMB_X33_Y7_N26
\Add0~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (debounce_counter(13) & (!\Add0~26\)) # (!debounce_counter(13) & ((\Add0~26\) # (GND)))
-- \Add0~30\ = CARRY((!\Add0~26\) # (!debounce_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(13),
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X32_Y8_N14
\Add0~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~29_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~29_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X32_Y8_N15
\debounce_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(13));

-- Location: LCCOMB_X33_Y7_N28
\Add0~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (debounce_counter(14) & (\Add0~30\ $ (GND))) # (!debounce_counter(14) & (!\Add0~30\ & VCC))
-- \Add0~32\ = CARRY((debounce_counter(14) & !\Add0~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(14),
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X32_Y8_N16
\Add0~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~31_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~31_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X32_Y8_N17
\debounce_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(14));

-- Location: LCCOMB_X33_Y7_N30
\Add0~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (debounce_counter(15) & (!\Add0~32\)) # (!debounce_counter(15) & ((\Add0~32\) # (GND)))
-- \Add0~34\ = CARRY((!\Add0~32\) # (!debounce_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(15),
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X32_Y8_N2
\Add0~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~33_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~33_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~82_combout\);

-- Location: FF_X32_Y8_N3
\debounce_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~82_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(15));

-- Location: LCCOMB_X33_Y6_N0
\Add0~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (debounce_counter(16) & (\Add0~34\ $ (GND))) # (!debounce_counter(16) & (!\Add0~34\ & VCC))
-- \Add0~36\ = CARRY((debounce_counter(16) & !\Add0~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(16),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X32_Y8_N10
\Add0~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~35_combout\,
	combout => \Add0~73_combout\);

-- Location: FF_X32_Y8_N11
\debounce_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~73_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(16));

-- Location: LCCOMB_X33_Y6_N2
\Add0~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (debounce_counter(17) & (!\Add0~36\)) # (!debounce_counter(17) & ((\Add0~36\) # (GND)))
-- \Add0~38\ = CARRY((!\Add0~36\) # (!debounce_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(17),
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X32_Y8_N4
\Add0~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~37_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~37_combout\,
	combout => \Add0~81_combout\);

-- Location: FF_X32_Y8_N5
\debounce_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~81_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(17));

-- Location: LCCOMB_X33_Y6_N4
\Add0~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (debounce_counter(18) & (\Add0~38\ $ (GND))) # (!debounce_counter(18) & (!\Add0~38\ & VCC))
-- \Add0~40\ = CARRY((debounce_counter(18) & !\Add0~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(18),
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X33_Y8_N16
\Add0~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~39_combout\,
	combout => \Add0~72_combout\);

-- Location: FF_X33_Y8_N17
\debounce_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~72_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(18));

-- Location: LCCOMB_X33_Y6_N6
\Add0~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (debounce_counter(19) & (!\Add0~40\)) # (!debounce_counter(19) & ((\Add0~40\) # (GND)))
-- \Add0~42\ = CARRY((!\Add0~40\) # (!debounce_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(19),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X32_Y8_N8
\Add0~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = (\Add0~41_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~41_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~71_combout\);

-- Location: FF_X32_Y8_N9
\debounce_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~71_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(19));

-- Location: LCCOMB_X33_Y6_N8
\Add0~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (debounce_counter(20) & (\Add0~42\ $ (GND))) # (!debounce_counter(20) & (!\Add0~42\ & VCC))
-- \Add0~44\ = CARRY((debounce_counter(20) & !\Add0~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(20),
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X34_Y8_N0
\Add0~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~43_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_counter[15]~3_combout\,
	datad => \Add0~43_combout\,
	combout => \Add0~93_combout\);

-- Location: FF_X34_Y8_N1
\debounce_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~93_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(20));

-- Location: LCCOMB_X33_Y6_N10
\Add0~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (debounce_counter(21) & (!\Add0~44\)) # (!debounce_counter(21) & ((\Add0~44\) # (GND)))
-- \Add0~46\ = CARRY((!\Add0~44\) # (!debounce_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(21),
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X34_Y8_N22
\Add0~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~45_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_counter[15]~3_combout\,
	datad => \Add0~45_combout\,
	combout => \Add0~92_combout\);

-- Location: FF_X34_Y8_N23
\debounce_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(21));

-- Location: LCCOMB_X33_Y6_N12
\Add0~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (debounce_counter(22) & (\Add0~46\ $ (GND))) # (!debounce_counter(22) & (!\Add0~46\ & VCC))
-- \Add0~48\ = CARRY((debounce_counter(22) & !\Add0~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(22),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X34_Y8_N16
\Add0~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~47_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_counter[15]~3_combout\,
	datad => \Add0~47_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X34_Y8_N17
\debounce_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~91_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(22));

-- Location: LCCOMB_X33_Y6_N14
\Add0~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (debounce_counter(23) & (!\Add0~48\)) # (!debounce_counter(23) & ((\Add0~48\) # (GND)))
-- \Add0~50\ = CARRY((!\Add0~48\) # (!debounce_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(23),
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X33_Y4_N10
\Add0~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\Add0~49_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~49_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X33_Y4_N11
\debounce_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(23));

-- Location: LCCOMB_X33_Y6_N16
\Add0~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (debounce_counter(24) & (\Add0~50\ $ (GND))) # (!debounce_counter(24) & (!\Add0~50\ & VCC))
-- \Add0~52\ = CARRY((debounce_counter(24) & !\Add0~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(24),
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X33_Y4_N24
\Add0~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~51_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~51_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~89_combout\);

-- Location: FF_X33_Y4_N25
\debounce_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(24));

-- Location: LCCOMB_X33_Y6_N18
\Add0~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (debounce_counter(25) & (!\Add0~52\)) # (!debounce_counter(25) & ((\Add0~52\) # (GND)))
-- \Add0~54\ = CARRY((!\Add0~52\) # (!debounce_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(25),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X33_Y4_N26
\Add0~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~53_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~53_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X33_Y4_N27
\debounce_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(25));

-- Location: LCCOMB_X33_Y6_N20
\Add0~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (debounce_counter(26) & (\Add0~54\ $ (GND))) # (!debounce_counter(26) & (!\Add0~54\ & VCC))
-- \Add0~56\ = CARRY((debounce_counter(26) & !\Add0~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(26),
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X33_Y4_N4
\Add0~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~55_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~55_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~87_combout\);

-- Location: FF_X33_Y4_N5
\debounce_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~87_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(26));

-- Location: LCCOMB_X33_Y6_N22
\Add0~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (debounce_counter(27) & (!\Add0~56\)) # (!debounce_counter(27) & ((\Add0~56\) # (GND)))
-- \Add0~58\ = CARRY((!\Add0~56\) # (!debounce_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(27),
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X32_Y6_N30
\Add0~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~57_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X32_Y6_N31
\debounce_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(27));

-- Location: LCCOMB_X33_Y6_N24
\Add0~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (debounce_counter(28) & (\Add0~58\ $ (GND))) # (!debounce_counter(28) & (!\Add0~58\ & VCC))
-- \Add0~60\ = CARRY((debounce_counter(28) & !\Add0~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(28),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X32_Y6_N0
\Add0~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\debounce_counter[15]~3_combout\ & \Add0~59_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \debounce_counter[15]~3_combout\,
	datad => \Add0~59_combout\,
	combout => \Add0~85_combout\);

-- Location: FF_X32_Y6_N1
\debounce_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~85_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(28));

-- Location: LCCOMB_X33_Y6_N26
\Add0~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (debounce_counter(29) & (!\Add0~60\)) # (!debounce_counter(29) & ((\Add0~60\) # (GND)))
-- \Add0~62\ = CARRY((!\Add0~60\) # (!debounce_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(29),
	datad => VCC,
	cin => \Add0~60\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X32_Y6_N10
\Add0~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\state.IDLE~q\ & (\debounce_counter[15]~8_combout\ & \Add0~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datac => \debounce_counter[15]~8_combout\,
	datad => \Add0~61_combout\,
	combout => \Add0~84_combout\);

-- Location: FF_X32_Y6_N11
\debounce_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~84_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(29));

-- Location: LCCOMB_X33_Y6_N28
\Add0~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (debounce_counter(30) & (\Add0~62\ $ (GND))) # (!debounce_counter(30) & (!\Add0~62\ & VCC))
-- \Add0~64\ = CARRY((debounce_counter(30) & !\Add0~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(30),
	datad => VCC,
	cin => \Add0~62\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X32_Y6_N24
\Add0~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\state.IDLE~q\ & (\debounce_counter[15]~8_combout\ & \Add0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datac => \debounce_counter[15]~8_combout\,
	datad => \Add0~63_combout\,
	combout => \Add0~83_combout\);

-- Location: FF_X32_Y6_N25
\debounce_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(30));

-- Location: LCCOMB_X32_Y6_N20
\LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (!debounce_counter(29) & (!debounce_counter(30) & (!debounce_counter(27) & !debounce_counter(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(29),
	datab => debounce_counter(30),
	datac => debounce_counter(27),
	datad => debounce_counter(28),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X33_Y4_N12
\LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (!debounce_counter(23) & (!debounce_counter(26) & (!debounce_counter(25) & !debounce_counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(23),
	datab => debounce_counter(26),
	datac => debounce_counter(25),
	datad => debounce_counter(24),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X34_Y8_N18
\LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!debounce_counter(21) & (!debounce_counter(22) & !debounce_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(21),
	datab => debounce_counter(22),
	datad => debounce_counter(20),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X33_Y8_N18
\LessThan1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~0_combout\ & (\LessThan1~1_combout\ & \LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~2_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X32_Y8_N6
\LessThan1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (!debounce_counter(17) & (((!debounce_counter(15) & !debounce_counter(14))) # (!debounce_counter(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(16),
	datab => debounce_counter(17),
	datac => debounce_counter(15),
	datad => debounce_counter(14),
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X32_Y8_N12
\LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!debounce_counter(17) & (!debounce_counter(13) & !debounce_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(17),
	datac => debounce_counter(13),
	datad => debounce_counter(15),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y8_N24
\LessThan1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (\LessThan0~0_combout\ & ((!debounce_counter(12)) # (!debounce_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(11),
	datac => debounce_counter(12),
	datad => \LessThan0~0_combout\,
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X33_Y8_N22
\LessThan1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (((\LessThan1~8_combout\) # (\LessThan1~7_combout\)) # (!debounce_counter(18))) # (!debounce_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(19),
	datab => debounce_counter(18),
	datac => \LessThan1~8_combout\,
	datad => \LessThan1~7_combout\,
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X34_Y8_N8
\LessThan1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!debounce_counter(3) & (((!debounce_counter(0)) # (!debounce_counter(2))) # (!debounce_counter(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(1),
	datab => debounce_counter(2),
	datac => debounce_counter(0),
	datad => debounce_counter(3),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X34_Y8_N2
\Equal5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~3_combout\ = (debounce_counter(6) & (debounce_counter(7) & (debounce_counter(8) & debounce_counter(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(6),
	datab => debounce_counter(7),
	datac => debounce_counter(8),
	datad => debounce_counter(5),
	combout => \Equal5~3_combout\);

-- Location: LCCOMB_X34_Y8_N26
\LessThan1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ((\LessThan1~4_combout\) # (!\Equal5~3_combout\)) # (!debounce_counter(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(4),
	datac => \LessThan1~4_combout\,
	datad => \Equal5~3_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X33_Y8_N0
\LessThan1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (\LessThan0~0_combout\ & (!debounce_counter(10) & (!debounce_counter(9) & \LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => debounce_counter(10),
	datac => debounce_counter(9),
	datad => \LessThan1~5_combout\,
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X33_Y8_N24
\LessThan1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (debounce_counter(31)) # ((\LessThan1~3_combout\ & ((\LessThan1~9_combout\) # (\LessThan1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(31),
	datab => \LessThan1~3_combout\,
	datac => \LessThan1~9_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X33_Y8_N12
\debounce_counter[15]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[15]~2_combout\ = (!\state.DEBOUNCE~q\ & (\col_out[1]~2_combout\ & (\Equal6~0_combout\ & \LessThan1~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.DEBOUNCE~q\,
	datab => \col_out[1]~2_combout\,
	datac => \Equal6~0_combout\,
	datad => \LessThan1~10_combout\,
	combout => \debounce_counter[15]~2_combout\);

-- Location: LCCOMB_X33_Y8_N26
\state~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~40_combout\ = (!\col_out[1]~0_combout\ & \LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \col_out[1]~0_combout\,
	datac => \LessThan0~6_combout\,
	combout => \state~40_combout\);

-- Location: LCCOMB_X33_Y8_N14
\debounce_counter[15]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \debounce_counter[15]~3_combout\ = (\state.IDLE~q\ & ((\debounce_counter[15]~2_combout\) # ((\state~40_combout\) # (\debounce_counter[15]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debounce_counter[15]~2_combout\,
	datab => \state.IDLE~q\,
	datac => \state~40_combout\,
	datad => \debounce_counter[15]~9_combout\,
	combout => \debounce_counter[15]~3_combout\);

-- Location: LCCOMB_X33_Y4_N8
\Add0~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~70_combout\ = (\Add0~0_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~70_combout\);

-- Location: FF_X33_Y4_N9
\debounce_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~70_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(0));

-- Location: LCCOMB_X33_Y7_N2
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (debounce_counter(1) & (!\Add0~1\)) # (!debounce_counter(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!debounce_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X34_Y8_N30
\Add0~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (\Add0~2_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~69_combout\);

-- Location: FF_X34_Y8_N31
\debounce_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~69_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(1));

-- Location: LCCOMB_X33_Y7_N4
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (debounce_counter(2) & (\Add0~3\ $ (GND))) # (!debounce_counter(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((debounce_counter(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X34_Y8_N20
\Add0~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = (\Add0~4_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~68_combout\);

-- Location: FF_X34_Y8_N21
\debounce_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~68_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(2));

-- Location: LCCOMB_X32_Y8_N20
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\Add0~6_combout\ & \debounce_counter[15]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~6_combout\,
	datad => \debounce_counter[15]~3_combout\,
	combout => \Add0~8_combout\);

-- Location: FF_X32_Y8_N21
\debounce_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(3));

-- Location: LCCOMB_X32_Y8_N26
\Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (debounce_counter(3)) # ((!debounce_counter(11)) # (!debounce_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => debounce_counter(3),
	datac => debounce_counter(12),
	datad => debounce_counter(11),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X33_Y8_N2
\Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~2_combout\ = (((!debounce_counter(16)) # (!debounce_counter(14))) # (!debounce_counter(18))) # (!debounce_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(19),
	datab => debounce_counter(18),
	datac => debounce_counter(14),
	datad => debounce_counter(16),
	combout => \Equal5~2_combout\);

-- Location: LCCOMB_X33_Y4_N6
\Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (debounce_counter(31)) # (((!debounce_counter(1)) # (!debounce_counter(2))) # (!debounce_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(31),
	datab => debounce_counter(0),
	datac => debounce_counter(2),
	datad => debounce_counter(1),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X33_Y8_N8
\Equal5~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~4_combout\ = (((\Equal5~2_combout\) # (\Equal5~1_combout\)) # (!debounce_counter(4))) # (!\Equal5~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~3_combout\,
	datab => debounce_counter(4),
	datac => \Equal5~2_combout\,
	datad => \Equal5~1_combout\,
	combout => \Equal5~4_combout\);

-- Location: LCCOMB_X33_Y8_N10
\LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (\LessThan0~0_combout\ & (!debounce_counter(10) & (!debounce_counter(9) & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => debounce_counter(10),
	datac => debounce_counter(9),
	datad => \LessThan1~3_combout\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y8_N20
\Equal5~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal5~5_combout\ = (\Equal5~0_combout\) # ((\Equal5~4_combout\) # (!\LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datac => \Equal5~4_combout\,
	datad => \LessThan0~1_combout\,
	combout => \Equal5~5_combout\);

-- Location: LCCOMB_X34_Y4_N24
\state~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~41_combout\ = (\col_out[1]~0_combout\ & ((\state.KEY_PRESS~q\) # ((\Equal5~5_combout\ & \internal_key_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[1]~0_combout\,
	datab => \state.KEY_PRESS~q\,
	datac => \Equal5~5_combout\,
	datad => \internal_key_value[0]~0_combout\,
	combout => \state~41_combout\);

-- Location: LCCOMB_X33_Y4_N22
\state~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~42_combout\ = (\state~41_combout\) # ((!\col_out[1]~0_combout\ & (\LessThan0~6_combout\ & \state.DEBOUNCE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[1]~0_combout\,
	datab => \LessThan0~6_combout\,
	datac => \state.DEBOUNCE~q\,
	datad => \state~41_combout\,
	combout => \state~42_combout\);

-- Location: FF_X33_Y4_N23
\state.DEBOUNCE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.DEBOUNCE~q\);

-- Location: LCCOMB_X33_Y4_N0
\state~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~44_combout\ = (\state.DEBOUNCE~q\ & (((\Equal5~5_combout\)))) # (!\state.DEBOUNCE~q\ & (\Equal6~0_combout\ & (!\LessThan1~10_combout\ & !\Equal5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \state.DEBOUNCE~q\,
	datac => \LessThan1~10_combout\,
	datad => \Equal5~5_combout\,
	combout => \state~44_combout\);

-- Location: LCCOMB_X33_Y4_N2
\state~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~45_combout\ = (!\state~44_combout\ & ((\internal_key_value[0]~0_combout\) # ((\state.KEY_RELEASE~q\ & !\state.DEBOUNCE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.KEY_RELEASE~q\,
	datab => \internal_key_value[0]~0_combout\,
	datac => \state.DEBOUNCE~q\,
	datad => \state~44_combout\,
	combout => \state~45_combout\);

-- Location: LCCOMB_X33_Y4_N28
\state~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~39_combout\ = (\col_out[1]~0_combout\ & (((\state~45_combout\)))) # (!\col_out[1]~0_combout\ & (\LessThan0~6_combout\ & (\state.KEY_RELEASE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[1]~0_combout\,
	datab => \LessThan0~6_combout\,
	datac => \state.KEY_RELEASE~q\,
	datad => \state~45_combout\,
	combout => \state~39_combout\);

-- Location: FF_X33_Y4_N29
\state.KEY_RELEASE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.KEY_RELEASE~q\);

-- Location: LCCOMB_X33_Y4_N14
\state~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~30_combout\ = (!\state.DEBOUNCE~q\ & \state.KEY_RELEASE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.DEBOUNCE~q\,
	datad => \state.KEY_RELEASE~q\,
	combout => \state~30_combout\);

-- Location: LCCOMB_X32_Y4_N18
\state~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~27_combout\ = (!\state.SCAN_COL4~q\ & (\state.DEBOUNCE~q\ & ((!\Equal4~0_combout\) # (!\Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL4~q\,
	datab => \Equal4~1_combout\,
	datac => \Equal4~0_combout\,
	datad => \state.DEBOUNCE~q\,
	combout => \state~27_combout\);

-- Location: LCCOMB_X32_Y4_N22
\state~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~28_combout\ = (\state~27_combout\) # ((\state.SCAN_COL4~q\ & (!\ONE_COLD~0_combout\ & !\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL4~q\,
	datab => \state~27_combout\,
	datac => \ONE_COLD~0_combout\,
	datad => \LessThan0~6_combout\,
	combout => \state~28_combout\);

-- Location: LCCOMB_X32_Y4_N24
\state~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~29_combout\ = (\Equal6~0_combout\ & (!\Equal5~5_combout\ & !\LessThan1~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datac => \Equal5~5_combout\,
	datad => \LessThan1~10_combout\,
	combout => \state~29_combout\);

-- Location: LCCOMB_X32_Y4_N12
\state~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~31_combout\ = (\state~28_combout\) # ((!\state.SCAN_COL4~q\ & (\state~30_combout\ & \state~29_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL4~q\,
	datab => \state~30_combout\,
	datac => \state~28_combout\,
	datad => \state~29_combout\,
	combout => \state~31_combout\);

-- Location: LCCOMB_X32_Y4_N14
\state~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~32_combout\ = (\state.IDLE~q\ & (((!\state~31_combout\)) # (!\state~26_combout\))) # (!\state.IDLE~q\ & (((!\Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state~26_combout\,
	datab => \Equal6~0_combout\,
	datac => \state.IDLE~q\,
	datad => \state~31_combout\,
	combout => \state~32_combout\);

-- Location: FF_X32_Y4_N15
\state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.IDLE~q\);

-- Location: LCCOMB_X33_Y6_N30
\Add0~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \Add0~64\ $ (debounce_counter(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => debounce_counter(31),
	cin => \Add0~64\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X33_Y4_N30
\Add0~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (\state.IDLE~q\ & (\Add0~65_combout\ & \debounce_counter[15]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datac => \Add0~65_combout\,
	datad => \debounce_counter[15]~8_combout\,
	combout => \Add0~67_combout\);

-- Location: FF_X33_Y4_N31
\debounce_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~67_combout\,
	ena => \debounce_counter[31]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => debounce_counter(31));

-- Location: LCCOMB_X32_Y8_N0
\LessThan0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (!debounce_counter(12) & !debounce_counter(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => debounce_counter(12),
	datad => debounce_counter(11),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y8_N4
\LessThan0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!debounce_counter(2) & (!debounce_counter(3) & ((!debounce_counter(0)) # (!debounce_counter(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(1),
	datab => debounce_counter(2),
	datac => debounce_counter(0),
	datad => debounce_counter(3),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y8_N18
\LessThan0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (!debounce_counter(16) & (!debounce_counter(14) & (!debounce_counter(19) & !debounce_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(16),
	datab => debounce_counter(14),
	datac => debounce_counter(19),
	datad => debounce_counter(18),
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X34_Y8_N10
\LessThan0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~3_combout\ & (((\LessThan0~4_combout\) # (!\Equal5~3_combout\)) # (!debounce_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(4),
	datab => \Equal5~3_combout\,
	datac => \LessThan0~4_combout\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y8_N30
\LessThan0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (debounce_counter(31)) # ((\LessThan0~2_combout\ & (\LessThan0~5_combout\ & \LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => debounce_counter(31),
	datab => \LessThan0~2_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X34_Y4_N22
\state~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~36_combout\ = (\state.IDLE~q\ & (((\LessThan0~6_combout\ & \state.SCAN_COL1~q\)))) # (!\state.IDLE~q\ & (!\Equal6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal6~0_combout\,
	datab => \LessThan0~6_combout\,
	datac => \state.SCAN_COL1~q\,
	datad => \state.IDLE~q\,
	combout => \state~36_combout\);

-- Location: FF_X34_Y4_N23
\state.SCAN_COL1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.SCAN_COL1~q\);

-- Location: LCCOMB_X34_Y6_N14
\state~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~35_combout\ = (!\state.SCAN_COL2~q\ & \state.SCAN_COL3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.SCAN_COL2~q\,
	datad => \state.SCAN_COL3~q\,
	combout => \state~35_combout\);

-- Location: LCCOMB_X32_Y6_N28
\col_sel[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_sel[0]~0_combout\ = (\row_pat[3]~1_combout\ & (!\state.SCAN_COL1~q\ & ((!\state~35_combout\)))) # (!\row_pat[3]~1_combout\ & (((col_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL1~q\,
	datab => \row_pat[3]~1_combout\,
	datac => col_sel(0),
	datad => \state~35_combout\,
	combout => \col_sel[0]~0_combout\);

-- Location: FF_X32_Y6_N29
\col_sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col_sel(0));

-- Location: LCCOMB_X32_Y6_N18
\col_sel[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_sel[1]~1_combout\ = (\row_pat[3]~1_combout\ & (!\state.SCAN_COL1~q\ & ((!\state.SCAN_COL2~q\)))) # (!\row_pat[3]~1_combout\ & (((col_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL1~q\,
	datab => \row_pat[3]~1_combout\,
	datac => col_sel(1),
	datad => \state.SCAN_COL2~q\,
	combout => \col_sel[1]~1_combout\);

-- Location: FF_X32_Y6_N19
\col_sel[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_sel[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => col_sel(1));

-- Location: LCCOMB_X34_Y6_N8
\key_generator|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux0~0_combout\ = (!col_sel(0) & !col_sel(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_sel(0),
	datad => col_sel(1),
	combout => \key_generator|Mux0~0_combout\);

-- Location: LCCOMB_X34_Y6_N24
\col_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out~1_combout\ = (\state.IDLE~q\ & ((\col_out[1]~0_combout\ & ((!\key_generator|Mux0~0_combout\))) # (!\col_out[1]~0_combout\ & (!\state.SCAN_COL1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL1~q\,
	datab => \state.IDLE~q\,
	datac => \key_generator|Mux0~0_combout\,
	datad => \col_out[1]~0_combout\,
	combout => \col_out~1_combout\);

-- Location: LCCOMB_X34_Y4_N20
\col_out[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out[0]~3_combout\ = (!\reset~input_o\ & (((\state.KEY_RELEASE~q\) # (!\col_out[1]~2_combout\)) # (!\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.IDLE~q\,
	datab => \reset~input_o\,
	datac => \col_out[1]~2_combout\,
	datad => \state.KEY_RELEASE~q\,
	combout => \col_out[0]~3_combout\);

-- Location: FF_X34_Y6_N25
\col_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~1_combout\,
	ena => \col_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[0]~reg0_q\);

-- Location: LCCOMB_X34_Y6_N10
\Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (col_sel(1)) # (!col_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_sel(0),
	datad => col_sel(1),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X34_Y6_N26
\col_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out~4_combout\ = (\state.IDLE~q\ & ((\col_out[1]~0_combout\ & (\Mux6~0_combout\)) # (!\col_out[1]~0_combout\ & ((!\state.SCAN_COL2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~0_combout\,
	datab => \state.IDLE~q\,
	datac => \state.SCAN_COL2~q\,
	datad => \col_out[1]~0_combout\,
	combout => \col_out~4_combout\);

-- Location: FF_X34_Y6_N27
\col_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~4_combout\,
	ena => \col_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[1]~reg0_q\);

-- Location: LCCOMB_X34_Y6_N28
\col_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out~5_combout\ = (\state.SCAN_COL1~q\) # ((col_sel(0)) # ((\state.SCAN_COL2~q\) # (!col_sel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL1~q\,
	datab => col_sel(0),
	datac => \state.SCAN_COL2~q\,
	datad => col_sel(1),
	combout => \col_out~5_combout\);

-- Location: LCCOMB_X34_Y6_N20
\col_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out~6_combout\ = (!\state.SCAN_COL3~q\ & (\state.IDLE~q\ & ((\state.SCAN_COL4~q\) # (\col_out~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL3~q\,
	datab => \state.IDLE~q\,
	datac => \state.SCAN_COL4~q\,
	datad => \col_out~5_combout\,
	combout => \col_out~6_combout\);

-- Location: FF_X34_Y6_N21
\col_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~6_combout\,
	ena => \col_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[2]~reg0_q\);

-- Location: LCCOMB_X34_Y6_N22
\Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (!col_sel(1)) # (!col_sel(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => col_sel(0),
	datad => col_sel(1),
	combout => \Mux4~0_combout\);

-- Location: LCCOMB_X34_Y6_N18
\col_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \col_out~7_combout\ = (\state.IDLE~q\ & ((\col_out[1]~0_combout\ & (\Mux4~0_combout\)) # (!\col_out[1]~0_combout\ & ((!\state~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \col_out[1]~0_combout\,
	datab => \state.IDLE~q\,
	datac => \Mux4~0_combout\,
	datad => \state~26_combout\,
	combout => \col_out~7_combout\);

-- Location: FF_X34_Y6_N19
\col_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \col_out~7_combout\,
	ena => \col_out[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \col_out[3]~reg0_q\);

-- Location: LCCOMB_X31_Y4_N0
\key_generator|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux3~0_combout\ = (!row_pat(2) & ((row_pat(1) & (!row_pat(3))) # (!row_pat(1) & (row_pat(3) & !col_sel(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(2),
	datab => row_pat(1),
	datac => row_pat(3),
	datad => col_sel(1),
	combout => \key_generator|Mux3~0_combout\);

-- Location: LCCOMB_X31_Y4_N10
\key_generator|Mux3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux3~1_combout\ = (!row_pat(1) & ((row_pat(3) & (!row_pat(2) & !row_pat(0))) # (!row_pat(3) & (row_pat(2) $ (row_pat(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(3),
	datab => row_pat(1),
	datac => row_pat(2),
	datad => row_pat(0),
	combout => \key_generator|Mux3~1_combout\);

-- Location: LCCOMB_X31_Y4_N20
\key_generator|Mux3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux3~2_combout\ = (!row_pat(3) & (!row_pat(1) & (row_pat(2) $ (row_pat(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(3),
	datab => row_pat(1),
	datac => row_pat(2),
	datad => row_pat(0),
	combout => \key_generator|Mux3~2_combout\);

-- Location: LCCOMB_X31_Y4_N22
\key_generator|Mux3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux3~3_combout\ = (col_sel(1) & ((\key_generator|Mux3~2_combout\))) # (!col_sel(1) & (\key_generator|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_generator|Mux3~1_combout\,
	datab => \key_generator|Mux3~2_combout\,
	datad => col_sel(1),
	combout => \key_generator|Mux3~3_combout\);

-- Location: LCCOMB_X31_Y4_N4
\key_generator|Mux3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux3~4_combout\ = (col_sel(0) & (((!\key_generator|Mux3~3_combout\)))) # (!col_sel(0) & ((row_pat(0)) # ((!\key_generator|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(0),
	datab => \key_generator|Mux3~0_combout\,
	datac => \key_generator|Mux3~3_combout\,
	datad => col_sel(0),
	combout => \key_generator|Mux3~4_combout\);

-- Location: LCCOMB_X31_Y4_N16
\internal_key_value[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \internal_key_value[0]~1_combout\ = (!\reset~input_o\ & (((\internal_key_value[0]~0_combout\ & !\Equal5~5_combout\)) # (!\state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \internal_key_value[0]~0_combout\,
	datab => \state.IDLE~q\,
	datac => \reset~input_o\,
	datad => \Equal5~5_combout\,
	combout => \internal_key_value[0]~1_combout\);

-- Location: FF_X31_Y4_N5
\internal_key_value[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_generator|Mux3~4_combout\,
	sclr => \ALT_INV_state.IDLE~q\,
	ena => \internal_key_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_key_value(0));

-- Location: LCCOMB_X31_Y4_N28
\key_generator|Mux2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux2~1_combout\ = (col_sel(1) & (((row_pat(1)) # (!row_pat(2))))) # (!col_sel(1) & (row_pat(2) $ (((col_sel(0) & !row_pat(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col_sel(1),
	datab => col_sel(0),
	datac => row_pat(2),
	datad => row_pat(1),
	combout => \key_generator|Mux2~1_combout\);

-- Location: LCCOMB_X31_Y4_N26
\key_generator|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux2~0_combout\ = (row_pat(1) & (!col_sel(1) & ((!row_pat(2))))) # (!row_pat(1) & ((col_sel(0)) # ((col_sel(1) & row_pat(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col_sel(1),
	datab => col_sel(0),
	datac => row_pat(2),
	datad => row_pat(1),
	combout => \key_generator|Mux2~0_combout\);

-- Location: LCCOMB_X31_Y4_N18
\key_generator|Mux2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux2~2_combout\ = (row_pat(3) & (((row_pat(0)) # (!\key_generator|Mux2~0_combout\)) # (!\key_generator|Mux2~1_combout\))) # (!row_pat(3) & ((\key_generator|Mux2~1_combout\) # (\key_generator|Mux2~0_combout\ $ (!row_pat(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(3),
	datab => \key_generator|Mux2~1_combout\,
	datac => \key_generator|Mux2~0_combout\,
	datad => row_pat(0),
	combout => \key_generator|Mux2~2_combout\);

-- Location: FF_X31_Y4_N19
\internal_key_value[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_generator|Mux2~2_combout\,
	sclr => \ALT_INV_state.IDLE~q\,
	ena => \internal_key_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_key_value(1));

-- Location: LCCOMB_X31_Y4_N6
\key_generator|Mux1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux1~2_combout\ = (col_sel(0) & (\key_generator|Mux3~1_combout\)) # (!col_sel(0) & ((\key_generator|Mux3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_generator|Mux3~1_combout\,
	datab => \key_generator|Mux3~2_combout\,
	datad => col_sel(0),
	combout => \key_generator|Mux1~2_combout\);

-- Location: LCCOMB_X31_Y4_N14
\key_generator|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux1~0_combout\ = (row_pat(0) & (!row_pat(1))) # (!row_pat(0) & (row_pat(1) & col_sel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => row_pat(0),
	datac => row_pat(1),
	datad => col_sel(0),
	combout => \key_generator|Mux1~0_combout\);

-- Location: LCCOMB_X31_Y4_N8
\key_generator|Mux1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux1~1_combout\ = (\key_generator|Mux1~0_combout\ & (!row_pat(2) & !row_pat(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \key_generator|Mux1~0_combout\,
	datac => row_pat(2),
	datad => row_pat(3),
	combout => \key_generator|Mux1~1_combout\);

-- Location: LCCOMB_X31_Y4_N12
\key_generator|Mux1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux1~3_combout\ = (\key_generator|Mux1~2_combout\ & (!\key_generator|Mux1~1_combout\ & (col_sel(0) $ (!col_sel(1))))) # (!\key_generator|Mux1~2_combout\ & ((col_sel(0) $ (col_sel(1))) # (!\key_generator|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_generator|Mux1~2_combout\,
	datab => col_sel(0),
	datac => \key_generator|Mux1~1_combout\,
	datad => col_sel(1),
	combout => \key_generator|Mux1~3_combout\);

-- Location: FF_X31_Y4_N13
\internal_key_value[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_generator|Mux1~3_combout\,
	sclr => \ALT_INV_state.IDLE~q\,
	ena => \internal_key_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_key_value(2));

-- Location: LCCOMB_X31_Y4_N30
\key_generator|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux0~2_combout\ = (col_sel(1) & ((col_sel(0)) # ((row_pat(2))))) # (!col_sel(1) & ((row_pat(0) & ((row_pat(2)))) # (!row_pat(0) & (col_sel(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col_sel(1),
	datab => col_sel(0),
	datac => row_pat(2),
	datad => row_pat(0),
	combout => \key_generator|Mux0~2_combout\);

-- Location: LCCOMB_X31_Y4_N24
\key_generator|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux0~1_combout\ = (col_sel(1) & (!col_sel(0) & (!row_pat(2) & row_pat(0)))) # (!col_sel(1) & (row_pat(2) $ (((col_sel(0)) # (row_pat(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => col_sel(1),
	datab => col_sel(0),
	datac => row_pat(2),
	datad => row_pat(0),
	combout => \key_generator|Mux0~1_combout\);

-- Location: LCCOMB_X31_Y4_N2
\key_generator|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_generator|Mux0~3_combout\ = (\key_generator|Mux0~2_combout\ & ((row_pat(1) $ (!row_pat(3))) # (!\key_generator|Mux0~1_combout\))) # (!\key_generator|Mux0~2_combout\ & ((row_pat(3)) # (row_pat(1) $ (!\key_generator|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_generator|Mux0~2_combout\,
	datab => row_pat(1),
	datac => row_pat(3),
	datad => \key_generator|Mux0~1_combout\,
	combout => \key_generator|Mux0~3_combout\);

-- Location: FF_X31_Y4_N3
\internal_key_value[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_generator|Mux0~3_combout\,
	sclr => \ALT_INV_state.IDLE~q\,
	ena => \internal_key_value[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => internal_key_value(3));

-- Location: LCCOMB_X34_Y4_N30
\key_valid~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_valid~0_combout\ = (!\state.SCAN_COL2~q\ & (!\state.SCAN_COL3~q\ & (!\state.KEY_PRESS~q\ & !\state.SCAN_COL4~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.SCAN_COL2~q\,
	datab => \state.SCAN_COL3~q\,
	datac => \state.KEY_PRESS~q\,
	datad => \state.SCAN_COL4~q\,
	combout => \key_valid~0_combout\);

-- Location: LCCOMB_X34_Y4_N0
\key_valid~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_valid~1_combout\ = (!\state.DEBOUNCE~q\ & (\key_valid~reg0_q\ & !\state.KEY_RELEASE~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.DEBOUNCE~q\,
	datac => \key_valid~reg0_q\,
	datad => \state.KEY_RELEASE~q\,
	combout => \key_valid~1_combout\);

-- Location: LCCOMB_X34_Y4_N6
\key_valid~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_valid~2_combout\ = (\key_valid~0_combout\ & ((\key_valid~1_combout\) # ((!\Equal5~5_combout\ & \internal_key_value[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_valid~0_combout\,
	datab => \key_valid~1_combout\,
	datac => \Equal5~5_combout\,
	datad => \internal_key_value[0]~0_combout\,
	combout => \key_valid~2_combout\);

-- Location: LCCOMB_X34_Y4_N4
\key_valid~reg0feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \key_valid~reg0feeder_combout\ = \key_valid~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \key_valid~2_combout\,
	combout => \key_valid~reg0feeder_combout\);

-- Location: LCCOMB_X32_Y7_N4
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: FF_X34_Y4_N5
\key_valid~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \key_valid~reg0feeder_combout\,
	asdata => \~GND~combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => \ALT_INV_state.IDLE~q\,
	sload => \state.SCAN_COL1~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key_valid~reg0_q\);

-- Location: UNVM_X0_Y22_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X25_Y34_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X25_Y33_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_col_out(0) <= \col_out[0]~output_o\;

ww_col_out(1) <= \col_out[1]~output_o\;

ww_col_out(2) <= \col_out[2]~output_o\;

ww_col_out(3) <= \col_out[3]~output_o\;

ww_led_out(0) <= \led_out[0]~output_o\;

ww_led_out(1) <= \led_out[1]~output_o\;

ww_led_out(2) <= \led_out[2]~output_o\;

ww_led_out(3) <= \led_out[3]~output_o\;

ww_key_valid <= \key_valid~output_o\;
END structure;


