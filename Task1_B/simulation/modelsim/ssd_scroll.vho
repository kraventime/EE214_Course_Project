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

-- DATE "10/24/2026 20:03:41"

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

ENTITY 	ssd_scroll IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	seg_out : BUFFER std_logic_vector(6 DOWNTO 0);
	dp_out : BUFFER std_logic;
	sel_out : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END ssd_scroll;

-- Design Ports Information
-- seg_out[0]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_out[1]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_out[2]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_out[3]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_out[4]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_out[5]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg_out[6]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dp_out	=>  Location: PIN_29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[0]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[1]	=>  Location: PIN_127,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[2]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[3]	=>  Location: PIN_122,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ssd_scroll IS
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
SIGNAL ww_start : std_logic;
SIGNAL ww_seg_out : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dp_out : std_logic;
SIGNAL ww_sel_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd_output|clk_divider|scroll_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd_output|scrolling:i[3]~10clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd_output|clk_divider|mux_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \seg_out[0]~output_o\ : std_logic;
SIGNAL \seg_out[1]~output_o\ : std_logic;
SIGNAL \seg_out[2]~output_o\ : std_logic;
SIGNAL \seg_out[3]~output_o\ : std_logic;
SIGNAL \seg_out[4]~output_o\ : std_logic;
SIGNAL \seg_out[5]~output_o\ : std_logic;
SIGNAL \seg_out[6]~output_o\ : std_logic;
SIGNAL \dp_out~output_o\ : std_logic;
SIGNAL \sel_out[0]~output_o\ : std_logic;
SIGNAL \sel_out[1]~output_o\ : std_logic;
SIGNAL \sel_out[2]~output_o\ : std_logic;
SIGNAL \sel_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_clkout~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[0]~0_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[0]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[1]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[1]~feeder_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[1]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[1]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[2]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[2]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[2]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[3]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[3]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[3]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[4]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[4]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[4]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[5]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[5]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[5]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[6]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[6]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[6]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[7]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[7]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[7]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[8]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[8]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[8]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[9]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[9]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[9]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[10]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[10]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[10]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[11]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[11]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~3_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[11]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[12]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[12]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[12]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[13]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[13]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[13]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[14]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[14]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[14]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[15]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[15]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~4_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~0_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~2_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[15]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[16]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[16]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[16]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[17]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[17]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[17]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[18]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[18]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[18]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[19]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[19]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[19]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[20]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[20]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[20]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[21]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[21]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[21]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[22]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[22]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[22]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[23]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[23]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~6_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~5_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[23]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[24]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[24]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[24]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[25]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[25]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[25]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[26]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[26]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[26]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[27]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[27]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~7_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[27]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[28]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[28]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[28]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[29]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[29]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[29]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[30]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[30]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[30]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[31]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:mux_counter[31]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~8_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~9_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal0~10_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|mux_clkout~0_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|mux_clk~feeder_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|mux_clk~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|mux_clk~clkctrl_outclk\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[3]~2_cout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[3]~4_cout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[3]~5_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[3]~feeder_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[3]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[3]~6\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[4]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[4]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[4]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[5]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[5]~feeder_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[5]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[5]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[6]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[6]~feeder_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[6]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[6]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[7]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[7]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[7]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[8]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[8]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[8]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[9]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[9]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[9]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[10]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[10]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[10]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[11]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[11]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[11]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[12]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[12]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[12]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[13]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[13]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[13]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[14]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[14]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[14]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[15]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[15]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~3_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~2_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[15]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[16]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[16]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[16]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[17]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[17]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[17]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[18]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[18]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[18]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[19]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[19]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~4_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[19]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[20]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[20]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[20]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[21]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[21]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[21]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[22]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[22]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[22]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[23]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[23]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[23]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[24]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[24]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[24]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[25]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[25]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[25]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[26]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[26]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[26]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[27]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[27]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~6_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~5_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[27]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[28]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[28]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[28]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[29]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[29]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[29]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[30]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[30]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[30]~2\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[31]~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_counter[31]~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~7_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~8_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~0_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~1_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|Equal1~9_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|clock_division:scroll_clkout~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|scroll_clkout~0_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|scroll_clk~feeder_combout\ : std_logic;
SIGNAL \bcd_output|clk_divider|scroll_clk~q\ : std_logic;
SIGNAL \bcd_output|clk_divider|scroll_clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \bcd_output|state~0_combout\ : std_logic;
SIGNAL \bcd_output|state~combout\ : std_logic;
SIGNAL \bcd_output|i~0_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~10_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~10clkctrl_outclk\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~1_combout\ : std_logic;
SIGNAL \bcd_output|i~1_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[2]~1_combout\ : std_logic;
SIGNAL \bcd_output|i~3_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[0]~1_combout\ : std_logic;
SIGNAL \bcd_output|Equal0~0_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[0]~4_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~0_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[0]~_emulated_q\ : std_logic;
SIGNAL \bcd_output|scrolling:i[0]~3_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[0]~2_combout\ : std_logic;
SIGNAL \bcd_output|i~2_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[1]~1_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~11_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[1]~4_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[1]~_emulated_q\ : std_logic;
SIGNAL \bcd_output|scrolling:i[1]~3_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[1]~2_combout\ : std_logic;
SIGNAL \bcd_output|Add2~0_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[2]~4_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[2]~_emulated_q\ : std_logic;
SIGNAL \bcd_output|scrolling:i[2]~3_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[2]~2_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~8_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~9_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~4_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~_emulated_q\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~3_combout\ : std_logic;
SIGNAL \bcd_output|scrolling:i[3]~2_combout\ : std_logic;
SIGNAL \bcd_output|displaying:i[0]~0_combout\ : std_logic;
SIGNAL \bcd_output|displaying:i[0]~q\ : std_logic;
SIGNAL \bcd_output|displaying:i[1]~0_combout\ : std_logic;
SIGNAL \bcd_output|displaying:i[1]~q\ : std_logic;
SIGNAL \bcd_output|Mux21~0_combout\ : std_logic;
SIGNAL \bcd_output|Mux21~1_combout\ : std_logic;
SIGNAL \bcd_output|Mux21~2_combout\ : std_logic;
SIGNAL \bcd_output|Mux21~3_combout\ : std_logic;
SIGNAL \bcd_output|Mux23~1_combout\ : std_logic;
SIGNAL \bcd_output|Mux23~0_combout\ : std_logic;
SIGNAL \bcd_output|Mux23~2_combout\ : std_logic;
SIGNAL \bcd_output|Mux22~0_combout\ : std_logic;
SIGNAL \bcd_output|Mux22~1_combout\ : std_logic;
SIGNAL \bcd_output|Mux22~2_combout\ : std_logic;
SIGNAL \bcd_output|Mux22~3_combout\ : std_logic;
SIGNAL \bcd_output|Mux20~0_combout\ : std_logic;
SIGNAL \bcd_output|Mux20~1_combout\ : std_logic;
SIGNAL \bcd_output|Mux20~2_combout\ : std_logic;
SIGNAL \seg_output|Mux6~0_combout\ : std_logic;
SIGNAL \seg_output|Mux5~0_combout\ : std_logic;
SIGNAL \seg_output|Mux4~0_combout\ : std_logic;
SIGNAL \seg_output|Mux3~0_combout\ : std_logic;
SIGNAL \seg_output|Mux2~0_combout\ : std_logic;
SIGNAL \seg_output|Mux1~0_combout\ : std_logic;
SIGNAL \seg_output|Mux0~0_combout\ : std_logic;
SIGNAL \bcd_output|Mux19~0_combout\ : std_logic;
SIGNAL \bcd_output|Mux18~0_combout\ : std_logic;
SIGNAL \bcd_output|Mux18~1_combout\ : std_logic;
SIGNAL \bcd_output|Mux18~2_combout\ : std_logic;
SIGNAL \bcd_output|bcd_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bcd_output|sel_out\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \seg_output|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \bcd_output|ALT_INV_scrolling:i[3]~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
ww_start <= start;
seg_out <= ww_seg_out;
dp_out <= ww_dp_out;
sel_out <= ww_sel_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\bcd_output|clk_divider|scroll_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bcd_output|clk_divider|scroll_clk~q\);

\bcd_output|scrolling:i[3]~10clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bcd_output|scrolling:i[3]~10_combout\);

\bcd_output|clk_divider|mux_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bcd_output|clk_divider|mux_clk~q\);
\seg_output|ALT_INV_Mux6~0_combout\ <= NOT \seg_output|Mux6~0_combout\;
\bcd_output|ALT_INV_scrolling:i[3]~0_combout\ <= NOT \bcd_output|scrolling:i[3]~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X26_Y34_N4
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X8_Y21_N23
\seg_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_output|ALT_INV_Mux6~0_combout\,
	devoe => ww_devoe,
	o => \seg_out[0]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\seg_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_output|Mux5~0_combout\,
	devoe => ww_devoe,
	o => \seg_out[1]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\seg_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_output|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \seg_out[2]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\seg_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_output|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \seg_out[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\seg_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_output|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \seg_out[4]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\seg_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_output|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \seg_out[5]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\seg_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \seg_output|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \seg_out[6]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\dp_out~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \dp_out~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\sel_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_output|sel_out\(0),
	devoe => ww_devoe,
	o => \sel_out[0]~output_o\);

-- Location: IOOBUF_X14_Y21_N30
\sel_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_output|sel_out\(1),
	devoe => ww_devoe,
	o => \sel_out[1]~output_o\);

-- Location: IOOBUF_X14_Y21_N23
\sel_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_output|sel_out\(2),
	devoe => ww_devoe,
	o => \sel_out[2]~output_o\);

-- Location: IOOBUF_X16_Y21_N16
\sel_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_output|sel_out\(3),
	devoe => ww_devoe,
	o => \sel_out[3]~output_o\);

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

-- Location: FF_X27_Y35_N19
\bcd_output|clk_divider|clock_division:mux_clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|mux_clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_clkout~q\);

-- Location: LCCOMB_X29_Y33_N14
\bcd_output|clk_divider|clock_division:mux_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[0]~0_combout\ = !\bcd_output|clk_divider|clock_division:mux_counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|clk_divider|clock_division:mux_counter[0]~q\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[0]~0_combout\);

-- Location: FF_X29_Y33_N15
\bcd_output|clk_divider|clock_division:mux_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[0]~q\);

-- Location: LCCOMB_X28_Y33_N2
\bcd_output|clk_divider|clock_division:mux_counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[1]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[0]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[1]~q\ $ (VCC))) # (!\bcd_output|clk_divider|clock_division:mux_counter[0]~q\ 
-- & (\bcd_output|clk_divider|clock_division:mux_counter[1]~q\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[1]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[0]~q\ & \bcd_output|clk_divider|clock_division:mux_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[0]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[1]~q\,
	datad => VCC,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[1]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[1]~2\);

-- Location: LCCOMB_X29_Y33_N12
\bcd_output|clk_divider|clock_division:mux_counter[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[1]~feeder_combout\ = \bcd_output|clk_divider|clock_division:mux_counter[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_output|clk_divider|clock_division:mux_counter[1]~1_combout\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[1]~feeder_combout\);

-- Location: FF_X29_Y33_N13
\bcd_output|clk_divider|clock_division:mux_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[1]~q\);

-- Location: LCCOMB_X28_Y33_N4
\bcd_output|clk_divider|clock_division:mux_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[2]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[2]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[1]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[2]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[1]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[2]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[1]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[2]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[1]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[2]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[2]~2\);

-- Location: FF_X29_Y33_N23
\bcd_output|clk_divider|clock_division:mux_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bcd_output|clk_divider|clock_division:mux_counter[2]~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[2]~q\);

-- Location: LCCOMB_X28_Y33_N6
\bcd_output|clk_divider|clock_division:mux_counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[3]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[2]~2\ & (\bcd_output|clk_divider|clock_division:mux_counter[3]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[2]~2\ & ((((\bcd_output|clk_divider|clock_division:mux_counter[3]~q\ & !\bcd_output|clk_divider|Equal0~10_combout\)))))
-- \bcd_output|clk_divider|clock_division:mux_counter[3]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[3]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & !\bcd_output|clk_divider|clock_division:mux_counter[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[3]~q\,
	datab => \bcd_output|clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[2]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[3]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[3]~2\);

-- Location: FF_X28_Y33_N7
\bcd_output|clk_divider|clock_division:mux_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[3]~q\);

-- Location: LCCOMB_X28_Y33_N8
\bcd_output|clk_divider|clock_division:mux_counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[4]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[4]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[3]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[4]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[3]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[4]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[3]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[4]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[3]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[4]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[4]~2\);

-- Location: FF_X28_Y33_N9
\bcd_output|clk_divider|clock_division:mux_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[4]~q\);

-- Location: LCCOMB_X28_Y33_N10
\bcd_output|clk_divider|clock_division:mux_counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[5]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[4]~2\ & (\bcd_output|clk_divider|clock_division:mux_counter[5]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[4]~2\ & ((((\bcd_output|clk_divider|clock_division:mux_counter[5]~q\ & !\bcd_output|clk_divider|Equal0~10_combout\)))))
-- \bcd_output|clk_divider|clock_division:mux_counter[5]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[5]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & !\bcd_output|clk_divider|clock_division:mux_counter[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[5]~q\,
	datab => \bcd_output|clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[4]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[5]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[5]~2\);

-- Location: FF_X28_Y33_N11
\bcd_output|clk_divider|clock_division:mux_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[5]~q\);

-- Location: LCCOMB_X28_Y33_N12
\bcd_output|clk_divider|clock_division:mux_counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[6]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[6]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[5]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[6]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[5]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[6]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[5]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[6]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[5]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[6]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[6]~2\);

-- Location: FF_X28_Y33_N13
\bcd_output|clk_divider|clock_division:mux_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[6]~q\);

-- Location: LCCOMB_X28_Y33_N14
\bcd_output|clk_divider|clock_division:mux_counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[7]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[6]~2\ & (\bcd_output|clk_divider|clock_division:mux_counter[7]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[6]~2\ & ((((\bcd_output|clk_divider|clock_division:mux_counter[7]~q\ & !\bcd_output|clk_divider|Equal0~10_combout\)))))
-- \bcd_output|clk_divider|clock_division:mux_counter[7]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[7]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & !\bcd_output|clk_divider|clock_division:mux_counter[6]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[7]~q\,
	datab => \bcd_output|clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[6]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[7]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[7]~2\);

-- Location: FF_X28_Y33_N15
\bcd_output|clk_divider|clock_division:mux_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[7]~q\);

-- Location: LCCOMB_X28_Y33_N16
\bcd_output|clk_divider|clock_division:mux_counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[8]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[7]~2\ & ((\bcd_output|clk_divider|Equal0~10_combout\) # ((!\bcd_output|clk_divider|clock_division:mux_counter[8]~q\)))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[7]~2\ & (((!\bcd_output|clk_divider|Equal0~10_combout\ & \bcd_output|clk_divider|clock_division:mux_counter[8]~q\)) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[8]~2\ = CARRY((\bcd_output|clk_divider|Equal0~10_combout\) # ((!\bcd_output|clk_divider|clock_division:mux_counter[7]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal0~10_combout\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[8]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[7]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[8]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[8]~2\);

-- Location: FF_X28_Y33_N17
\bcd_output|clk_divider|clock_division:mux_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[8]~q\);

-- Location: LCCOMB_X28_Y33_N18
\bcd_output|clk_divider|clock_division:mux_counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[9]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[9]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[8]~2\ $ (GND))) # (!\bcd_output|clk_divider|clock_division:mux_counter[9]~q\ 
-- & (!\bcd_output|clk_divider|clock_division:mux_counter[8]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[9]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[9]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[9]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[8]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[9]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[9]~2\);

-- Location: FF_X28_Y33_N19
\bcd_output|clk_divider|clock_division:mux_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[9]~q\);

-- Location: LCCOMB_X28_Y33_N20
\bcd_output|clk_divider|clock_division:mux_counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[10]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[10]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[9]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[10]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[9]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[10]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[9]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[10]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[9]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[10]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[10]~2\);

-- Location: FF_X28_Y33_N21
\bcd_output|clk_divider|clock_division:mux_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[10]~q\);

-- Location: LCCOMB_X28_Y33_N22
\bcd_output|clk_divider|clock_division:mux_counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[11]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[11]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[10]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[11]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[10]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[11]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[11]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[11]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[10]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[11]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[11]~2\);

-- Location: FF_X28_Y33_N23
\bcd_output|clk_divider|clock_division:mux_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[11]~q\);

-- Location: LCCOMB_X27_Y33_N16
\bcd_output|clk_divider|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~3_combout\ = (!\bcd_output|clk_divider|clock_division:mux_counter[10]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[11]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[8]~q\ & 
-- !\bcd_output|clk_divider|clock_division:mux_counter[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[10]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[11]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[8]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[9]~q\,
	combout => \bcd_output|clk_divider|Equal0~3_combout\);

-- Location: LCCOMB_X28_Y33_N24
\bcd_output|clk_divider|clock_division:mux_counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[12]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[12]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[11]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[12]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[11]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[12]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[11]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[12]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[11]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[12]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[12]~2\);

-- Location: FF_X28_Y33_N25
\bcd_output|clk_divider|clock_division:mux_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[12]~q\);

-- Location: LCCOMB_X28_Y33_N26
\bcd_output|clk_divider|clock_division:mux_counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[13]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[12]~2\ & (\bcd_output|clk_divider|clock_division:mux_counter[13]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[12]~2\ & ((((\bcd_output|clk_divider|clock_division:mux_counter[13]~q\ & !\bcd_output|clk_divider|Equal0~10_combout\)))))
-- \bcd_output|clk_divider|clock_division:mux_counter[13]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[13]~q\ & (!\bcd_output|clk_divider|Equal0~10_combout\ & !\bcd_output|clk_divider|clock_division:mux_counter[12]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[13]~q\,
	datab => \bcd_output|clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[12]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[13]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[13]~2\);

-- Location: FF_X28_Y33_N27
\bcd_output|clk_divider|clock_division:mux_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[13]~q\);

-- Location: LCCOMB_X28_Y33_N28
\bcd_output|clk_divider|clock_division:mux_counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[14]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[13]~2\ & ((\bcd_output|clk_divider|Equal0~10_combout\) # ((!\bcd_output|clk_divider|clock_division:mux_counter[14]~q\)))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[13]~2\ & (((!\bcd_output|clk_divider|Equal0~10_combout\ & \bcd_output|clk_divider|clock_division:mux_counter[14]~q\)) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[14]~2\ = CARRY((\bcd_output|clk_divider|Equal0~10_combout\) # ((!\bcd_output|clk_divider|clock_division:mux_counter[13]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal0~10_combout\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[14]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[13]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[14]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[14]~2\);

-- Location: FF_X28_Y33_N29
\bcd_output|clk_divider|clock_division:mux_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[14]~q\);

-- Location: LCCOMB_X28_Y33_N30
\bcd_output|clk_divider|clock_division:mux_counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[15]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[15]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[14]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[15]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[14]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[15]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[15]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[15]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[14]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[15]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[15]~2\);

-- Location: FF_X28_Y33_N31
\bcd_output|clk_divider|clock_division:mux_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[15]~q\);

-- Location: LCCOMB_X27_Y33_N6
\bcd_output|clk_divider|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~4_combout\ = (!\bcd_output|clk_divider|clock_division:mux_counter[15]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[12]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[13]~q\ & 
-- \bcd_output|clk_divider|clock_division:mux_counter[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[15]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[12]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[13]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[14]~q\,
	combout => \bcd_output|clk_divider|Equal0~4_combout\);

-- Location: LCCOMB_X29_Y33_N8
\bcd_output|clk_divider|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~0_combout\ = (!\bcd_output|clk_divider|clock_division:mux_counter[0]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[2]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[0]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[2]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[1]~q\,
	combout => \bcd_output|clk_divider|Equal0~0_combout\);

-- Location: LCCOMB_X29_Y33_N18
\bcd_output|clk_divider|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[7]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[6]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[4]~q\ & 
-- \bcd_output|clk_divider|clock_division:mux_counter[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[7]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[6]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[4]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[5]~q\,
	combout => \bcd_output|clk_divider|Equal0~1_combout\);

-- Location: LCCOMB_X29_Y33_N20
\bcd_output|clk_divider|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~2_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[3]~q\ & (\bcd_output|clk_divider|Equal0~0_combout\ & \bcd_output|clk_divider|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[3]~q\,
	datac => \bcd_output|clk_divider|Equal0~0_combout\,
	datad => \bcd_output|clk_divider|Equal0~1_combout\,
	combout => \bcd_output|clk_divider|Equal0~2_combout\);

-- Location: LCCOMB_X28_Y32_N0
\bcd_output|clk_divider|clock_division:mux_counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[16]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[16]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[15]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[16]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[15]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[16]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[15]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[16]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[15]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[16]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[16]~2\);

-- Location: FF_X28_Y32_N1
\bcd_output|clk_divider|clock_division:mux_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[16]~q\);

-- Location: LCCOMB_X28_Y32_N2
\bcd_output|clk_divider|clock_division:mux_counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[17]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[17]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[16]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[17]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[16]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[17]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[17]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[17]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[16]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[17]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[17]~2\);

-- Location: FF_X28_Y32_N3
\bcd_output|clk_divider|clock_division:mux_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[17]~q\);

-- Location: LCCOMB_X28_Y32_N4
\bcd_output|clk_divider|clock_division:mux_counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[18]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[18]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[17]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[18]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[17]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[18]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[17]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[18]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[17]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[18]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[18]~2\);

-- Location: FF_X28_Y32_N5
\bcd_output|clk_divider|clock_division:mux_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[18]~q\);

-- Location: LCCOMB_X28_Y32_N6
\bcd_output|clk_divider|clock_division:mux_counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[19]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[19]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[18]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[19]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[18]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[19]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[19]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[19]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[18]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[19]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[19]~2\);

-- Location: FF_X28_Y32_N7
\bcd_output|clk_divider|clock_division:mux_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[19]~q\);

-- Location: LCCOMB_X28_Y32_N8
\bcd_output|clk_divider|clock_division:mux_counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[20]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[20]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[19]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[20]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[19]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[20]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[19]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[20]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[19]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[20]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[20]~2\);

-- Location: FF_X28_Y32_N9
\bcd_output|clk_divider|clock_division:mux_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[20]~q\);

-- Location: LCCOMB_X28_Y32_N10
\bcd_output|clk_divider|clock_division:mux_counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[21]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[21]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[20]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[21]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[20]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[21]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[21]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[21]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[20]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[21]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[21]~2\);

-- Location: FF_X28_Y32_N11
\bcd_output|clk_divider|clock_division:mux_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[21]~q\);

-- Location: LCCOMB_X28_Y32_N12
\bcd_output|clk_divider|clock_division:mux_counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[22]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[22]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[21]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[22]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[21]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[22]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[21]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[22]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[21]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[22]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[22]~2\);

-- Location: FF_X28_Y32_N13
\bcd_output|clk_divider|clock_division:mux_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[22]~q\);

-- Location: LCCOMB_X28_Y32_N14
\bcd_output|clk_divider|clock_division:mux_counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[23]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[23]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[22]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[23]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[22]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[23]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[23]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[22]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[23]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[22]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[23]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[23]~2\);

-- Location: FF_X28_Y32_N15
\bcd_output|clk_divider|clock_division:mux_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[23]~q\);

-- Location: LCCOMB_X29_Y32_N30
\bcd_output|clk_divider|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~6_combout\ = (!\bcd_output|clk_divider|clock_division:mux_counter[23]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[20]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[21]~q\ & 
-- !\bcd_output|clk_divider|clock_division:mux_counter[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[23]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[20]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[21]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[22]~q\,
	combout => \bcd_output|clk_divider|Equal0~6_combout\);

-- Location: LCCOMB_X29_Y32_N8
\bcd_output|clk_divider|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~5_combout\ = (!\bcd_output|clk_divider|clock_division:mux_counter[16]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[19]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[18]~q\ & 
-- !\bcd_output|clk_divider|clock_division:mux_counter[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[16]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[19]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[18]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[17]~q\,
	combout => \bcd_output|clk_divider|Equal0~5_combout\);

-- Location: LCCOMB_X28_Y32_N16
\bcd_output|clk_divider|clock_division:mux_counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[24]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[24]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[23]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[24]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[23]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[24]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[23]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[24]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[23]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[24]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[24]~2\);

-- Location: FF_X28_Y32_N17
\bcd_output|clk_divider|clock_division:mux_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[24]~q\);

-- Location: LCCOMB_X28_Y32_N18
\bcd_output|clk_divider|clock_division:mux_counter[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[25]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[25]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[24]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[25]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[24]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[25]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[25]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[24]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[25]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[24]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[25]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[25]~2\);

-- Location: FF_X28_Y32_N19
\bcd_output|clk_divider|clock_division:mux_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[25]~q\);

-- Location: LCCOMB_X28_Y32_N20
\bcd_output|clk_divider|clock_division:mux_counter[26]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[26]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[26]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[25]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[26]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[25]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[26]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[25]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[26]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[25]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[26]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[26]~2\);

-- Location: FF_X28_Y32_N21
\bcd_output|clk_divider|clock_division:mux_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[26]~q\);

-- Location: LCCOMB_X28_Y32_N22
\bcd_output|clk_divider|clock_division:mux_counter[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[27]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[27]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[26]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[27]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[26]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[27]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[27]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[26]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[27]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[26]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[27]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[27]~2\);

-- Location: FF_X28_Y32_N23
\bcd_output|clk_divider|clock_division:mux_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[27]~q\);

-- Location: LCCOMB_X29_Y32_N4
\bcd_output|clk_divider|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~7_combout\ = (!\bcd_output|clk_divider|clock_division:mux_counter[24]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[25]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[26]~q\ & 
-- !\bcd_output|clk_divider|clock_division:mux_counter[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[24]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[25]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[26]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[27]~q\,
	combout => \bcd_output|clk_divider|Equal0~7_combout\);

-- Location: LCCOMB_X28_Y32_N24
\bcd_output|clk_divider|clock_division:mux_counter[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[28]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[28]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[27]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[28]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[27]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[28]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[27]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[28]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[27]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[28]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[28]~2\);

-- Location: FF_X28_Y32_N25
\bcd_output|clk_divider|clock_division:mux_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[28]~q\);

-- Location: LCCOMB_X28_Y32_N26
\bcd_output|clk_divider|clock_division:mux_counter[29]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[29]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[29]~q\ & (\bcd_output|clk_divider|clock_division:mux_counter[28]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:mux_counter[29]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[28]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:mux_counter[29]~2\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[29]~q\ & !\bcd_output|clk_divider|clock_division:mux_counter[28]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[29]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[28]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[29]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[29]~2\);

-- Location: FF_X28_Y32_N27
\bcd_output|clk_divider|clock_division:mux_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[29]~q\);

-- Location: LCCOMB_X28_Y32_N28
\bcd_output|clk_divider|clock_division:mux_counter[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[30]~1_combout\ = (\bcd_output|clk_divider|clock_division:mux_counter[30]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[29]~2\)) # (!\bcd_output|clk_divider|clock_division:mux_counter[30]~q\ & 
-- ((\bcd_output|clk_divider|clock_division:mux_counter[29]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:mux_counter[30]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:mux_counter[29]~2\) # (!\bcd_output|clk_divider|clock_division:mux_counter[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:mux_counter[30]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[29]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[30]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:mux_counter[30]~2\);

-- Location: FF_X28_Y32_N29
\bcd_output|clk_divider|clock_division:mux_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[30]~q\);

-- Location: LCCOMB_X28_Y32_N30
\bcd_output|clk_divider|clock_division:mux_counter[31]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:mux_counter[31]~1_combout\ = \bcd_output|clk_divider|clock_division:mux_counter[31]~q\ $ (!\bcd_output|clk_divider|clock_division:mux_counter[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[31]~q\,
	cin => \bcd_output|clk_divider|clock_division:mux_counter[30]~2\,
	combout => \bcd_output|clk_divider|clock_division:mux_counter[31]~1_combout\);

-- Location: FF_X28_Y32_N31
\bcd_output|clk_divider|clock_division:mux_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:mux_counter[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:mux_counter[31]~q\);

-- Location: LCCOMB_X29_Y32_N10
\bcd_output|clk_divider|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~8_combout\ = (!\bcd_output|clk_divider|clock_division:mux_counter[29]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[30]~q\ & (!\bcd_output|clk_divider|clock_division:mux_counter[28]~q\ & 
-- !\bcd_output|clk_divider|clock_division:mux_counter[31]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[29]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[30]~q\,
	datac => \bcd_output|clk_divider|clock_division:mux_counter[28]~q\,
	datad => \bcd_output|clk_divider|clock_division:mux_counter[31]~q\,
	combout => \bcd_output|clk_divider|Equal0~8_combout\);

-- Location: LCCOMB_X29_Y32_N0
\bcd_output|clk_divider|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~9_combout\ = (\bcd_output|clk_divider|Equal0~6_combout\ & (\bcd_output|clk_divider|Equal0~5_combout\ & (\bcd_output|clk_divider|Equal0~7_combout\ & \bcd_output|clk_divider|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal0~6_combout\,
	datab => \bcd_output|clk_divider|Equal0~5_combout\,
	datac => \bcd_output|clk_divider|Equal0~7_combout\,
	datad => \bcd_output|clk_divider|Equal0~8_combout\,
	combout => \bcd_output|clk_divider|Equal0~9_combout\);

-- Location: LCCOMB_X28_Y33_N0
\bcd_output|clk_divider|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal0~10_combout\ = (\bcd_output|clk_divider|Equal0~3_combout\ & (\bcd_output|clk_divider|Equal0~4_combout\ & (\bcd_output|clk_divider|Equal0~2_combout\ & \bcd_output|clk_divider|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal0~3_combout\,
	datab => \bcd_output|clk_divider|Equal0~4_combout\,
	datac => \bcd_output|clk_divider|Equal0~2_combout\,
	datad => \bcd_output|clk_divider|Equal0~9_combout\,
	combout => \bcd_output|clk_divider|Equal0~10_combout\);

-- Location: LCCOMB_X27_Y35_N18
\bcd_output|clk_divider|mux_clkout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|mux_clkout~0_combout\ = \bcd_output|clk_divider|clock_division:mux_clkout~q\ $ (\bcd_output|clk_divider|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|clk_divider|clock_division:mux_clkout~q\,
	datad => \bcd_output|clk_divider|Equal0~10_combout\,
	combout => \bcd_output|clk_divider|mux_clkout~0_combout\);

-- Location: LCCOMB_X27_Y35_N28
\bcd_output|clk_divider|mux_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|mux_clk~feeder_combout\ = \bcd_output|clk_divider|mux_clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_output|clk_divider|mux_clkout~0_combout\,
	combout => \bcd_output|clk_divider|mux_clk~feeder_combout\);

-- Location: FF_X27_Y35_N29
\bcd_output|clk_divider|mux_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|mux_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|mux_clk~q\);

-- Location: CLKCTRL_G14
\bcd_output|clk_divider|mux_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bcd_output|clk_divider|mux_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\);

-- Location: LCCOMB_X29_Y35_N2
\bcd_output|clk_divider|clock_division:scroll_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[3]~2_cout\ = CARRY((\bcd_output|clk_divider|clock_division:mux_counter[0]~q\ & \bcd_output|clk_divider|clock_division:mux_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[0]~q\,
	datab => \bcd_output|clk_divider|clock_division:mux_counter[1]~q\,
	datad => VCC,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[3]~2_cout\);

-- Location: LCCOMB_X29_Y35_N4
\bcd_output|clk_divider|clock_division:scroll_counter[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[3]~4_cout\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[3]~2_cout\) # (!\bcd_output|clk_divider|clock_division:mux_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:mux_counter[2]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[3]~2_cout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[3]~4_cout\);

-- Location: LCCOMB_X29_Y35_N6
\bcd_output|clk_divider|clock_division:scroll_counter[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[3]~5_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[3]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[3]~4_cout\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[3]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[3]~4_cout\ & VCC))
-- \bcd_output|clk_divider|clock_division:scroll_counter[3]~6\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[3]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[3]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[3]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[3]~4_cout\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[3]~5_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[3]~6\);

-- Location: LCCOMB_X29_Y33_N0
\bcd_output|clk_divider|clock_division:scroll_counter[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[3]~feeder_combout\ = \bcd_output|clk_divider|clock_division:scroll_counter[3]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[3]~5_combout\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[3]~feeder_combout\);

-- Location: FF_X29_Y33_N1
\bcd_output|clk_divider|clock_division:scroll_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[3]~q\);

-- Location: LCCOMB_X29_Y35_N8
\bcd_output|clk_divider|clock_division:scroll_counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[4]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[4]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[3]~6\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[4]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[3]~6\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[4]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[3]~6\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[4]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[3]~6\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[4]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[4]~2\);

-- Location: FF_X29_Y35_N9
\bcd_output|clk_divider|clock_division:scroll_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[4]~q\);

-- Location: LCCOMB_X29_Y35_N10
\bcd_output|clk_divider|clock_division:scroll_counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[5]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[4]~2\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[5]~q\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[4]~2\ & ((((!\bcd_output|clk_divider|Equal1~9_combout\ & \bcd_output|clk_divider|clock_division:scroll_counter[5]~q\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[5]~2\ = CARRY((!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[5]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~9_combout\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[5]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[4]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[5]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[5]~2\);

-- Location: LCCOMB_X29_Y33_N4
\bcd_output|clk_divider|clock_division:scroll_counter[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[5]~feeder_combout\ = \bcd_output|clk_divider|clock_division:scroll_counter[5]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[5]~1_combout\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[5]~feeder_combout\);

-- Location: FF_X29_Y33_N5
\bcd_output|clk_divider|clock_division:scroll_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[5]~q\);

-- Location: LCCOMB_X29_Y35_N12
\bcd_output|clk_divider|clock_division:scroll_counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[6]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[6]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[5]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[6]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[5]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[6]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[5]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[6]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[5]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[6]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[6]~2\);

-- Location: LCCOMB_X29_Y33_N30
\bcd_output|clk_divider|clock_division:scroll_counter[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[6]~feeder_combout\ = \bcd_output|clk_divider|clock_division:scroll_counter[6]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[6]~1_combout\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[6]~feeder_combout\);

-- Location: FF_X29_Y33_N31
\bcd_output|clk_divider|clock_division:scroll_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[6]~q\);

-- Location: LCCOMB_X29_Y35_N14
\bcd_output|clk_divider|clock_division:scroll_counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[7]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[7]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[6]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[7]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[6]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:scroll_counter[7]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[7]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[7]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[6]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[7]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[7]~2\);

-- Location: FF_X29_Y35_N15
\bcd_output|clk_divider|clock_division:scroll_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[7]~q\);

-- Location: LCCOMB_X29_Y35_N16
\bcd_output|clk_divider|clock_division:scroll_counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[8]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[8]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[7]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[8]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[7]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[8]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[7]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[8]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[7]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[8]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[8]~2\);

-- Location: FF_X29_Y35_N17
\bcd_output|clk_divider|clock_division:scroll_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[8]~q\);

-- Location: LCCOMB_X29_Y35_N18
\bcd_output|clk_divider|clock_division:scroll_counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[9]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[9]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[8]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[9]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[8]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:scroll_counter[9]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[9]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[9]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[8]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[9]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[9]~2\);

-- Location: FF_X29_Y35_N19
\bcd_output|clk_divider|clock_division:scroll_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[9]~q\);

-- Location: LCCOMB_X29_Y35_N20
\bcd_output|clk_divider|clock_division:scroll_counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[10]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[9]~2\ & ((\bcd_output|clk_divider|Equal1~9_combout\) # ((!\bcd_output|clk_divider|clock_division:scroll_counter[10]~q\)))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[9]~2\ & (((!\bcd_output|clk_divider|Equal1~9_combout\ & \bcd_output|clk_divider|clock_division:scroll_counter[10]~q\)) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[10]~2\ = CARRY((\bcd_output|clk_divider|Equal1~9_combout\) # ((!\bcd_output|clk_divider|clock_division:scroll_counter[9]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~9_combout\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[10]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[9]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[10]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[10]~2\);

-- Location: FF_X29_Y35_N21
\bcd_output|clk_divider|clock_division:scroll_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[10]~q\);

-- Location: LCCOMB_X29_Y35_N22
\bcd_output|clk_divider|clock_division:scroll_counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[11]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[10]~2\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[11]~q\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[10]~2\ & ((((!\bcd_output|clk_divider|Equal1~9_combout\ & \bcd_output|clk_divider|clock_division:scroll_counter[11]~q\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[11]~2\ = CARRY((!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[11]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[10]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~9_combout\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[11]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[10]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[11]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[11]~2\);

-- Location: FF_X29_Y35_N23
\bcd_output|clk_divider|clock_division:scroll_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[11]~q\);

-- Location: LCCOMB_X29_Y35_N24
\bcd_output|clk_divider|clock_division:scroll_counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[12]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[11]~2\ & ((\bcd_output|clk_divider|Equal1~9_combout\) # ((!\bcd_output|clk_divider|clock_division:scroll_counter[12]~q\)))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[11]~2\ & (((!\bcd_output|clk_divider|Equal1~9_combout\ & \bcd_output|clk_divider|clock_division:scroll_counter[12]~q\)) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[12]~2\ = CARRY((\bcd_output|clk_divider|Equal1~9_combout\) # ((!\bcd_output|clk_divider|clock_division:scroll_counter[11]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~9_combout\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[12]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[11]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[12]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[12]~2\);

-- Location: FF_X29_Y35_N25
\bcd_output|clk_divider|clock_division:scroll_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[12]~q\);

-- Location: LCCOMB_X29_Y35_N26
\bcd_output|clk_divider|clock_division:scroll_counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[13]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[12]~2\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[13]~q\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[12]~2\ & ((((!\bcd_output|clk_divider|Equal1~9_combout\ & \bcd_output|clk_divider|clock_division:scroll_counter[13]~q\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[13]~2\ = CARRY((!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[13]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[12]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~9_combout\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[13]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[12]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[13]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[13]~2\);

-- Location: FF_X29_Y35_N27
\bcd_output|clk_divider|clock_division:scroll_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[13]~q\);

-- Location: LCCOMB_X29_Y35_N28
\bcd_output|clk_divider|clock_division:scroll_counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[14]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[14]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[13]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[14]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[13]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[14]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[13]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[14]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[13]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[14]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[14]~2\);

-- Location: FF_X29_Y35_N29
\bcd_output|clk_divider|clock_division:scroll_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[14]~q\);

-- Location: LCCOMB_X29_Y35_N30
\bcd_output|clk_divider|clock_division:scroll_counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[15]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[14]~2\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[15]~q\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[14]~2\ & ((((!\bcd_output|clk_divider|Equal1~9_combout\ & \bcd_output|clk_divider|clock_division:scroll_counter[15]~q\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[15]~2\ = CARRY((!\bcd_output|clk_divider|Equal1~9_combout\ & (\bcd_output|clk_divider|clock_division:scroll_counter[15]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[14]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~9_combout\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[15]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[14]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[15]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[15]~2\);

-- Location: FF_X29_Y35_N31
\bcd_output|clk_divider|clock_division:scroll_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[15]~q\);

-- Location: LCCOMB_X29_Y35_N0
\bcd_output|clk_divider|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~3_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[13]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[12]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[15]~q\ & 
-- !\bcd_output|clk_divider|clock_division:scroll_counter[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[13]~q\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[12]~q\,
	datac => \bcd_output|clk_divider|clock_division:scroll_counter[15]~q\,
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[14]~q\,
	combout => \bcd_output|clk_divider|Equal1~3_combout\);

-- Location: LCCOMB_X30_Y35_N14
\bcd_output|clk_divider|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~2_combout\ = (!\bcd_output|clk_divider|clock_division:scroll_counter[9]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[10]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[8]~q\ & 
-- \bcd_output|clk_divider|clock_division:scroll_counter[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[9]~q\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[10]~q\,
	datac => \bcd_output|clk_divider|clock_division:scroll_counter[8]~q\,
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[11]~q\,
	combout => \bcd_output|clk_divider|Equal1~2_combout\);

-- Location: LCCOMB_X29_Y34_N0
\bcd_output|clk_divider|clock_division:scroll_counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[16]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[16]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[15]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[16]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[15]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[16]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[15]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[16]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[15]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[16]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[16]~2\);

-- Location: FF_X29_Y34_N1
\bcd_output|clk_divider|clock_division:scroll_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[16]~q\);

-- Location: LCCOMB_X29_Y34_N2
\bcd_output|clk_divider|clock_division:scroll_counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[17]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[16]~2\ & (\bcd_output|clk_divider|clock_division:scroll_counter[17]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[16]~2\ & ((((\bcd_output|clk_divider|clock_division:scroll_counter[17]~q\ & !\bcd_output|clk_divider|Equal1~9_combout\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[17]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[17]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & !\bcd_output|clk_divider|clock_division:scroll_counter[16]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[17]~q\,
	datab => \bcd_output|clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[16]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[17]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[17]~2\);

-- Location: FF_X29_Y34_N3
\bcd_output|clk_divider|clock_division:scroll_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[17]~q\);

-- Location: LCCOMB_X29_Y34_N4
\bcd_output|clk_divider|clock_division:scroll_counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[18]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[17]~2\ & (((\bcd_output|clk_divider|Equal1~9_combout\)) # (!\bcd_output|clk_divider|clock_division:scroll_counter[18]~q\))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[17]~2\ & (((\bcd_output|clk_divider|clock_division:scroll_counter[18]~q\ & !\bcd_output|clk_divider|Equal1~9_combout\)) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[18]~2\ = CARRY(((\bcd_output|clk_divider|Equal1~9_combout\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[17]~2\)) # (!\bcd_output|clk_divider|clock_division:scroll_counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[18]~q\,
	datab => \bcd_output|clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[17]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[18]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[18]~2\);

-- Location: FF_X29_Y34_N5
\bcd_output|clk_divider|clock_division:scroll_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[18]~q\);

-- Location: LCCOMB_X29_Y34_N6
\bcd_output|clk_divider|clock_division:scroll_counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[19]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[18]~2\ & (\bcd_output|clk_divider|clock_division:scroll_counter[19]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[18]~2\ & ((((\bcd_output|clk_divider|clock_division:scroll_counter[19]~q\ & !\bcd_output|clk_divider|Equal1~9_combout\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[19]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[19]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & !\bcd_output|clk_divider|clock_division:scroll_counter[18]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[19]~q\,
	datab => \bcd_output|clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[18]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[19]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[19]~2\);

-- Location: FF_X29_Y34_N7
\bcd_output|clk_divider|clock_division:scroll_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[19]~q\);

-- Location: LCCOMB_X30_Y35_N12
\bcd_output|clk_divider|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~4_combout\ = (!\bcd_output|clk_divider|clock_division:scroll_counter[16]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[18]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[19]~q\ & 
-- \bcd_output|clk_divider|clock_division:scroll_counter[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[16]~q\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[18]~q\,
	datac => \bcd_output|clk_divider|clock_division:scroll_counter[19]~q\,
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[17]~q\,
	combout => \bcd_output|clk_divider|Equal1~4_combout\);

-- Location: LCCOMB_X29_Y34_N8
\bcd_output|clk_divider|clock_division:scroll_counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[20]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[19]~2\ & (((\bcd_output|clk_divider|Equal1~9_combout\)) # (!\bcd_output|clk_divider|clock_division:scroll_counter[20]~q\))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[19]~2\ & (((\bcd_output|clk_divider|clock_division:scroll_counter[20]~q\ & !\bcd_output|clk_divider|Equal1~9_combout\)) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[20]~2\ = CARRY(((\bcd_output|clk_divider|Equal1~9_combout\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[19]~2\)) # (!\bcd_output|clk_divider|clock_division:scroll_counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[20]~q\,
	datab => \bcd_output|clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[19]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[20]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[20]~2\);

-- Location: FF_X29_Y34_N9
\bcd_output|clk_divider|clock_division:scroll_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[20]~q\);

-- Location: LCCOMB_X29_Y34_N10
\bcd_output|clk_divider|clock_division:scroll_counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[21]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[20]~2\ & (\bcd_output|clk_divider|clock_division:scroll_counter[21]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[20]~2\ & ((((\bcd_output|clk_divider|clock_division:scroll_counter[21]~q\ & !\bcd_output|clk_divider|Equal1~9_combout\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[21]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[21]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & !\bcd_output|clk_divider|clock_division:scroll_counter[20]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[21]~q\,
	datab => \bcd_output|clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[20]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[21]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[21]~2\);

-- Location: FF_X29_Y34_N11
\bcd_output|clk_divider|clock_division:scroll_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[21]~q\);

-- Location: LCCOMB_X29_Y34_N12
\bcd_output|clk_divider|clock_division:scroll_counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[22]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[22]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[21]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[22]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[21]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[22]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[21]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[22]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[21]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[22]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[22]~2\);

-- Location: FF_X29_Y34_N13
\bcd_output|clk_divider|clock_division:scroll_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[22]~q\);

-- Location: LCCOMB_X29_Y34_N14
\bcd_output|clk_divider|clock_division:scroll_counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[23]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[22]~2\ & (\bcd_output|clk_divider|clock_division:scroll_counter[23]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[22]~2\ & ((((\bcd_output|clk_divider|clock_division:scroll_counter[23]~q\ & !\bcd_output|clk_divider|Equal1~9_combout\)))))
-- \bcd_output|clk_divider|clock_division:scroll_counter[23]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[23]~q\ & (!\bcd_output|clk_divider|Equal1~9_combout\ & !\bcd_output|clk_divider|clock_division:scroll_counter[22]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[23]~q\,
	datab => \bcd_output|clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[22]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[23]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[23]~2\);

-- Location: FF_X29_Y34_N15
\bcd_output|clk_divider|clock_division:scroll_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[23]~q\);

-- Location: LCCOMB_X29_Y34_N16
\bcd_output|clk_divider|clock_division:scroll_counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[24]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[24]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[23]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[24]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[23]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[24]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[23]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[24]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[23]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[24]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[24]~2\);

-- Location: FF_X29_Y34_N17
\bcd_output|clk_divider|clock_division:scroll_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[24]~q\);

-- Location: LCCOMB_X29_Y34_N18
\bcd_output|clk_divider|clock_division:scroll_counter[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[25]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[25]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[24]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[25]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[24]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:scroll_counter[25]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[25]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[24]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[25]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[24]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[25]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[25]~2\);

-- Location: FF_X29_Y34_N19
\bcd_output|clk_divider|clock_division:scroll_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[25]~q\);

-- Location: LCCOMB_X29_Y34_N20
\bcd_output|clk_divider|clock_division:scroll_counter[26]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[26]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[26]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[25]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[26]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[25]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[26]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[25]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[26]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[25]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[26]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[26]~2\);

-- Location: FF_X29_Y34_N21
\bcd_output|clk_divider|clock_division:scroll_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[26]~q\);

-- Location: LCCOMB_X29_Y34_N22
\bcd_output|clk_divider|clock_division:scroll_counter[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[27]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[27]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[26]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[27]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[26]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:scroll_counter[27]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[27]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[26]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[27]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[26]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[27]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[27]~2\);

-- Location: FF_X29_Y34_N23
\bcd_output|clk_divider|clock_division:scroll_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[27]~q\);

-- Location: LCCOMB_X30_Y35_N8
\bcd_output|clk_divider|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~6_combout\ = (!\bcd_output|clk_divider|clock_division:scroll_counter[24]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[27]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[25]~q\ & 
-- !\bcd_output|clk_divider|clock_division:scroll_counter[26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[24]~q\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[27]~q\,
	datac => \bcd_output|clk_divider|clock_division:scroll_counter[25]~q\,
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[26]~q\,
	combout => \bcd_output|clk_divider|Equal1~6_combout\);

-- Location: LCCOMB_X30_Y35_N22
\bcd_output|clk_divider|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~5_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[23]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[21]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[20]~q\ & 
-- !\bcd_output|clk_divider|clock_division:scroll_counter[22]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[23]~q\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[21]~q\,
	datac => \bcd_output|clk_divider|clock_division:scroll_counter[20]~q\,
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[22]~q\,
	combout => \bcd_output|clk_divider|Equal1~5_combout\);

-- Location: LCCOMB_X29_Y34_N24
\bcd_output|clk_divider|clock_division:scroll_counter[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[28]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[28]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[27]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[28]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[27]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[28]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[27]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[28]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[27]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[28]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[28]~2\);

-- Location: FF_X29_Y34_N25
\bcd_output|clk_divider|clock_division:scroll_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[28]~q\);

-- Location: LCCOMB_X29_Y34_N26
\bcd_output|clk_divider|clock_division:scroll_counter[29]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[29]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[29]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[28]~2\ $ (GND))) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[29]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[28]~2\ & VCC))
-- \bcd_output|clk_divider|clock_division:scroll_counter[29]~2\ = CARRY((\bcd_output|clk_divider|clock_division:scroll_counter[29]~q\ & !\bcd_output|clk_divider|clock_division:scroll_counter[28]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[29]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[28]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[29]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[29]~2\);

-- Location: FF_X29_Y34_N27
\bcd_output|clk_divider|clock_division:scroll_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[29]~q\);

-- Location: LCCOMB_X29_Y34_N28
\bcd_output|clk_divider|clock_division:scroll_counter[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[30]~1_combout\ = (\bcd_output|clk_divider|clock_division:scroll_counter[30]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[29]~2\)) # 
-- (!\bcd_output|clk_divider|clock_division:scroll_counter[30]~q\ & ((\bcd_output|clk_divider|clock_division:scroll_counter[29]~2\) # (GND)))
-- \bcd_output|clk_divider|clock_division:scroll_counter[30]~2\ = CARRY((!\bcd_output|clk_divider|clock_division:scroll_counter[29]~2\) # (!\bcd_output|clk_divider|clock_division:scroll_counter[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[30]~q\,
	datad => VCC,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[29]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[30]~1_combout\,
	cout => \bcd_output|clk_divider|clock_division:scroll_counter[30]~2\);

-- Location: FF_X29_Y34_N29
\bcd_output|clk_divider|clock_division:scroll_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[30]~q\);

-- Location: LCCOMB_X29_Y34_N30
\bcd_output|clk_divider|clock_division:scroll_counter[31]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|clock_division:scroll_counter[31]~1_combout\ = \bcd_output|clk_divider|clock_division:scroll_counter[31]~q\ $ (!\bcd_output|clk_divider|clock_division:scroll_counter[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[31]~q\,
	cin => \bcd_output|clk_divider|clock_division:scroll_counter[30]~2\,
	combout => \bcd_output|clk_divider|clock_division:scroll_counter[31]~1_combout\);

-- Location: FF_X29_Y34_N31
\bcd_output|clk_divider|clock_division:scroll_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|clock_division:scroll_counter[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_counter[31]~q\);

-- Location: LCCOMB_X30_Y35_N18
\bcd_output|clk_divider|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~7_combout\ = (!\bcd_output|clk_divider|clock_division:scroll_counter[31]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[28]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[29]~q\ & 
-- !\bcd_output|clk_divider|clock_division:scroll_counter[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[31]~q\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[28]~q\,
	datac => \bcd_output|clk_divider|clock_division:scroll_counter[29]~q\,
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[30]~q\,
	combout => \bcd_output|clk_divider|Equal1~7_combout\);

-- Location: LCCOMB_X30_Y35_N4
\bcd_output|clk_divider|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~8_combout\ = (\bcd_output|clk_divider|Equal1~4_combout\ & (\bcd_output|clk_divider|Equal1~6_combout\ & (\bcd_output|clk_divider|Equal1~5_combout\ & \bcd_output|clk_divider|Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~4_combout\,
	datab => \bcd_output|clk_divider|Equal1~6_combout\,
	datac => \bcd_output|clk_divider|Equal1~5_combout\,
	datad => \bcd_output|clk_divider|Equal1~7_combout\,
	combout => \bcd_output|clk_divider|Equal1~8_combout\);

-- Location: LCCOMB_X29_Y33_N10
\bcd_output|clk_divider|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~0_combout\ = (!\bcd_output|clk_divider|clock_division:scroll_counter[6]~q\ & (\bcd_output|clk_divider|clock_division:scroll_counter[5]~q\ & (!\bcd_output|clk_divider|clock_division:scroll_counter[4]~q\ & 
-- !\bcd_output|clk_divider|clock_division:scroll_counter[7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|clock_division:scroll_counter[6]~q\,
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[5]~q\,
	datac => \bcd_output|clk_divider|clock_division:scroll_counter[4]~q\,
	datad => \bcd_output|clk_divider|clock_division:scroll_counter[7]~q\,
	combout => \bcd_output|clk_divider|Equal1~0_combout\);

-- Location: LCCOMB_X29_Y33_N16
\bcd_output|clk_divider|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~1_combout\ = (!\bcd_output|clk_divider|clock_division:scroll_counter[3]~q\ & (\bcd_output|clk_divider|Equal0~0_combout\ & \bcd_output|clk_divider|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|clk_divider|clock_division:scroll_counter[3]~q\,
	datac => \bcd_output|clk_divider|Equal0~0_combout\,
	datad => \bcd_output|clk_divider|Equal1~0_combout\,
	combout => \bcd_output|clk_divider|Equal1~1_combout\);

-- Location: LCCOMB_X30_Y35_N30
\bcd_output|clk_divider|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|Equal1~9_combout\ = (\bcd_output|clk_divider|Equal1~3_combout\ & (\bcd_output|clk_divider|Equal1~2_combout\ & (\bcd_output|clk_divider|Equal1~8_combout\ & \bcd_output|clk_divider|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~3_combout\,
	datab => \bcd_output|clk_divider|Equal1~2_combout\,
	datac => \bcd_output|clk_divider|Equal1~8_combout\,
	datad => \bcd_output|clk_divider|Equal1~1_combout\,
	combout => \bcd_output|clk_divider|Equal1~9_combout\);

-- Location: FF_X30_Y35_N21
\bcd_output|clk_divider|clock_division:scroll_clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|scroll_clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|clock_division:scroll_clkout~q\);

-- Location: LCCOMB_X30_Y35_N20
\bcd_output|clk_divider|scroll_clkout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|scroll_clkout~0_combout\ = \bcd_output|clk_divider|Equal1~9_combout\ $ (\bcd_output|clk_divider|clock_division:scroll_clkout~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|clk_divider|Equal1~9_combout\,
	datac => \bcd_output|clk_divider|clock_division:scroll_clkout~q\,
	combout => \bcd_output|clk_divider|scroll_clkout~0_combout\);

-- Location: LCCOMB_X27_Y35_N4
\bcd_output|clk_divider|scroll_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|clk_divider|scroll_clk~feeder_combout\ = \bcd_output|clk_divider|scroll_clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bcd_output|clk_divider|scroll_clkout~0_combout\,
	combout => \bcd_output|clk_divider|scroll_clk~feeder_combout\);

-- Location: FF_X27_Y35_N5
\bcd_output|clk_divider|scroll_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bcd_output|clk_divider|scroll_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|clk_divider|scroll_clk~q\);

-- Location: CLKCTRL_G11
\bcd_output|clk_divider|scroll_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bcd_output|clk_divider|scroll_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bcd_output|clk_divider|scroll_clk~clkctrl_outclk\);

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

-- Location: IOIBUF_X53_Y0_N1
\start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_start,
	o => \start~input_o\);

-- Location: LCCOMB_X34_Y8_N20
\bcd_output|state~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|state~0_combout\ = (\start~input_o\ & !\bcd_output|state~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \bcd_output|state~combout\,
	combout => \bcd_output|state~0_combout\);

-- Location: LCCOMB_X35_Y8_N28
\bcd_output|state\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|state~combout\ = (!\reset~input_o\ & ((\bcd_output|state~0_combout\) # (\bcd_output|state~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \bcd_output|state~0_combout\,
	datad => \bcd_output|state~combout\,
	combout => \bcd_output|state~combout\);

-- Location: LCCOMB_X33_Y8_N0
\bcd_output|i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|i~0_combout\ = (\bcd_output|state~combout\ & \bcd_output|scrolling:i[3]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|state~combout\,
	datad => \bcd_output|scrolling:i[3]~2_combout\,
	combout => \bcd_output|i~0_combout\);

-- Location: LCCOMB_X34_Y8_N4
\bcd_output|scrolling:i[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~10_combout\ = (\start~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \start~input_o\,
	datad => \reset~input_o\,
	combout => \bcd_output|scrolling:i[3]~10_combout\);

-- Location: CLKCTRL_G15
\bcd_output|scrolling:i[3]~10clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bcd_output|scrolling:i[3]~10clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bcd_output|scrolling:i[3]~10clkctrl_outclk\);

-- Location: LCCOMB_X33_Y8_N2
\bcd_output|scrolling:i[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~1_combout\ = (!\reset~input_o\ & ((GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & ((\bcd_output|i~0_combout\))) # (!GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & (\bcd_output|scrolling:i[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~1_combout\,
	datab => \reset~input_o\,
	datac => \bcd_output|i~0_combout\,
	datad => \bcd_output|scrolling:i[3]~10clkctrl_outclk\,
	combout => \bcd_output|scrolling:i[3]~1_combout\);

-- Location: LCCOMB_X33_Y8_N30
\bcd_output|i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|i~1_combout\ = (\bcd_output|state~combout\ & \bcd_output|scrolling:i[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|state~combout\,
	datac => \bcd_output|scrolling:i[2]~2_combout\,
	combout => \bcd_output|i~1_combout\);

-- Location: LCCOMB_X33_Y8_N20
\bcd_output|scrolling:i[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[2]~1_combout\ = (!\reset~input_o\ & ((GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & ((\bcd_output|i~1_combout\))) # (!GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & (\bcd_output|scrolling:i[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[2]~1_combout\,
	datab => \reset~input_o\,
	datac => \bcd_output|i~1_combout\,
	datad => \bcd_output|scrolling:i[3]~10clkctrl_outclk\,
	combout => \bcd_output|scrolling:i[2]~1_combout\);

-- Location: LCCOMB_X33_Y8_N28
\bcd_output|i~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|i~3_combout\ = (\bcd_output|scrolling:i[0]~2_combout\ & \bcd_output|state~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|scrolling:i[0]~2_combout\,
	datac => \bcd_output|state~combout\,
	combout => \bcd_output|i~3_combout\);

-- Location: LCCOMB_X33_Y8_N10
\bcd_output|scrolling:i[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[0]~1_combout\ = (!\reset~input_o\ & ((GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & ((\bcd_output|i~3_combout\))) # (!GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & (\bcd_output|scrolling:i[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[0]~1_combout\,
	datab => \reset~input_o\,
	datac => \bcd_output|i~3_combout\,
	datad => \bcd_output|scrolling:i[3]~10clkctrl_outclk\,
	combout => \bcd_output|scrolling:i[0]~1_combout\);

-- Location: LCCOMB_X34_Y8_N16
\bcd_output|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Equal0~0_combout\ = ((\bcd_output|scrolling:i[1]~2_combout\) # ((!\bcd_output|scrolling:i[0]~2_combout\) # (!\bcd_output|scrolling:i[3]~2_combout\))) # (!\bcd_output|scrolling:i[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[2]~2_combout\,
	datab => \bcd_output|scrolling:i[1]~2_combout\,
	datac => \bcd_output|scrolling:i[3]~2_combout\,
	datad => \bcd_output|scrolling:i[0]~2_combout\,
	combout => \bcd_output|Equal0~0_combout\);

-- Location: LCCOMB_X34_Y8_N14
\bcd_output|scrolling:i[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[0]~4_combout\ = \bcd_output|scrolling:i[0]~1_combout\ $ (((\bcd_output|state~combout\ & ((!\bcd_output|Equal0~0_combout\) # (!\bcd_output|scrolling:i[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[0]~2_combout\,
	datab => \bcd_output|state~combout\,
	datac => \bcd_output|scrolling:i[0]~1_combout\,
	datad => \bcd_output|Equal0~0_combout\,
	combout => \bcd_output|scrolling:i[0]~4_combout\);

-- Location: LCCOMB_X34_Y8_N24
\bcd_output|scrolling:i[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~0_combout\ = (\reset~input_o\) # (\bcd_output|scrolling:i[3]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \bcd_output|scrolling:i[3]~10_combout\,
	combout => \bcd_output|scrolling:i[3]~0_combout\);

-- Location: FF_X34_Y8_N15
\bcd_output|scrolling:i[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|scroll_clk~clkctrl_outclk\,
	d => \bcd_output|scrolling:i[0]~4_combout\,
	clrn => \bcd_output|ALT_INV_scrolling:i[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|scrolling:i[0]~_emulated_q\);

-- Location: LCCOMB_X34_Y8_N22
\bcd_output|scrolling:i[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[0]~3_combout\ = \bcd_output|scrolling:i[0]~_emulated_q\ $ (\bcd_output|scrolling:i[0]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|scrolling:i[0]~_emulated_q\,
	datad => \bcd_output|scrolling:i[0]~1_combout\,
	combout => \bcd_output|scrolling:i[0]~3_combout\);

-- Location: LCCOMB_X34_Y8_N12
\bcd_output|scrolling:i[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[0]~2_combout\ = (!\reset~input_o\ & ((\bcd_output|scrolling:i[3]~10_combout\ & ((\bcd_output|i~3_combout\))) # (!\bcd_output|scrolling:i[3]~10_combout\ & (\bcd_output|scrolling:i[0]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[0]~3_combout\,
	datab => \reset~input_o\,
	datac => \bcd_output|scrolling:i[3]~10_combout\,
	datad => \bcd_output|i~3_combout\,
	combout => \bcd_output|scrolling:i[0]~2_combout\);

-- Location: LCCOMB_X34_Y8_N2
\bcd_output|i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|i~2_combout\ = (\bcd_output|state~combout\ & \bcd_output|scrolling:i[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|state~combout\,
	datad => \bcd_output|scrolling:i[1]~2_combout\,
	combout => \bcd_output|i~2_combout\);

-- Location: LCCOMB_X34_Y8_N18
\bcd_output|scrolling:i[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[1]~1_combout\ = (!\reset~input_o\ & ((GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & ((\bcd_output|i~2_combout\))) # (!GLOBAL(\bcd_output|scrolling:i[3]~10clkctrl_outclk\) & (\bcd_output|scrolling:i[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[1]~1_combout\,
	datab => \bcd_output|i~2_combout\,
	datac => \reset~input_o\,
	datad => \bcd_output|scrolling:i[3]~10clkctrl_outclk\,
	combout => \bcd_output|scrolling:i[1]~1_combout\);

-- Location: LCCOMB_X34_Y8_N28
\bcd_output|scrolling:i[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~11_combout\ = (\bcd_output|state~combout\ & \bcd_output|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|state~combout\,
	datad => \bcd_output|Equal0~0_combout\,
	combout => \bcd_output|scrolling:i[3]~11_combout\);

-- Location: LCCOMB_X34_Y8_N6
\bcd_output|scrolling:i[1]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[1]~4_combout\ = \bcd_output|scrolling:i[1]~1_combout\ $ (((\bcd_output|scrolling:i[3]~11_combout\ & (\bcd_output|scrolling:i[0]~2_combout\ $ (\bcd_output|scrolling:i[1]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[0]~2_combout\,
	datab => \bcd_output|scrolling:i[1]~2_combout\,
	datac => \bcd_output|scrolling:i[1]~1_combout\,
	datad => \bcd_output|scrolling:i[3]~11_combout\,
	combout => \bcd_output|scrolling:i[1]~4_combout\);

-- Location: FF_X34_Y8_N7
\bcd_output|scrolling:i[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|scroll_clk~clkctrl_outclk\,
	d => \bcd_output|scrolling:i[1]~4_combout\,
	clrn => \bcd_output|ALT_INV_scrolling:i[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|scrolling:i[1]~_emulated_q\);

-- Location: LCCOMB_X34_Y8_N30
\bcd_output|scrolling:i[1]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[1]~3_combout\ = \bcd_output|scrolling:i[1]~_emulated_q\ $ (\bcd_output|scrolling:i[1]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|scrolling:i[1]~_emulated_q\,
	datad => \bcd_output|scrolling:i[1]~1_combout\,
	combout => \bcd_output|scrolling:i[1]~3_combout\);

-- Location: LCCOMB_X34_Y8_N0
\bcd_output|scrolling:i[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[1]~2_combout\ = (!\reset~input_o\ & ((\bcd_output|scrolling:i[3]~10_combout\ & ((\bcd_output|i~2_combout\))) # (!\bcd_output|scrolling:i[3]~10_combout\ & (\bcd_output|scrolling:i[1]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[1]~3_combout\,
	datab => \bcd_output|i~2_combout\,
	datac => \reset~input_o\,
	datad => \bcd_output|scrolling:i[3]~10_combout\,
	combout => \bcd_output|scrolling:i[1]~2_combout\);

-- Location: LCCOMB_X34_Y8_N26
\bcd_output|Add2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Add2~0_combout\ = (\bcd_output|scrolling:i[1]~2_combout\ & \bcd_output|scrolling:i[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|scrolling:i[1]~2_combout\,
	datad => \bcd_output|scrolling:i[0]~2_combout\,
	combout => \bcd_output|Add2~0_combout\);

-- Location: LCCOMB_X34_Y8_N10
\bcd_output|scrolling:i[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[2]~4_combout\ = \bcd_output|scrolling:i[2]~1_combout\ $ (((\bcd_output|scrolling:i[3]~11_combout\ & (\bcd_output|scrolling:i[2]~2_combout\ $ (\bcd_output|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[2]~2_combout\,
	datab => \bcd_output|scrolling:i[2]~1_combout\,
	datac => \bcd_output|Add2~0_combout\,
	datad => \bcd_output|scrolling:i[3]~11_combout\,
	combout => \bcd_output|scrolling:i[2]~4_combout\);

-- Location: FF_X34_Y8_N11
\bcd_output|scrolling:i[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|scroll_clk~clkctrl_outclk\,
	d => \bcd_output|scrolling:i[2]~4_combout\,
	clrn => \bcd_output|ALT_INV_scrolling:i[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|scrolling:i[2]~_emulated_q\);

-- Location: LCCOMB_X33_Y8_N8
\bcd_output|scrolling:i[2]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[2]~3_combout\ = \bcd_output|scrolling:i[2]~_emulated_q\ $ (\bcd_output|scrolling:i[2]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|scrolling:i[2]~_emulated_q\,
	datad => \bcd_output|scrolling:i[2]~1_combout\,
	combout => \bcd_output|scrolling:i[2]~3_combout\);

-- Location: LCCOMB_X33_Y8_N26
\bcd_output|scrolling:i[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[2]~2_combout\ = (!\reset~input_o\ & ((\bcd_output|scrolling:i[3]~10_combout\ & (\bcd_output|i~1_combout\)) # (!\bcd_output|scrolling:i[3]~10_combout\ & ((\bcd_output|scrolling:i[2]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \bcd_output|i~1_combout\,
	datac => \bcd_output|scrolling:i[2]~3_combout\,
	datad => \bcd_output|scrolling:i[3]~10_combout\,
	combout => \bcd_output|scrolling:i[2]~2_combout\);

-- Location: LCCOMB_X33_Y8_N24
\bcd_output|scrolling:i[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~8_combout\ = ((\bcd_output|scrolling:i[2]~2_combout\ & (\bcd_output|scrolling:i[0]~2_combout\ & \bcd_output|scrolling:i[1]~2_combout\))) # (!\bcd_output|state~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[2]~2_combout\,
	datab => \bcd_output|state~combout\,
	datac => \bcd_output|scrolling:i[0]~2_combout\,
	datad => \bcd_output|scrolling:i[1]~2_combout\,
	combout => \bcd_output|scrolling:i[3]~8_combout\);

-- Location: LCCOMB_X33_Y8_N14
\bcd_output|scrolling:i[3]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~9_combout\ = (\bcd_output|scrolling:i[3]~2_combout\) # (!\bcd_output|state~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|state~combout\,
	datad => \bcd_output|scrolling:i[3]~2_combout\,
	combout => \bcd_output|scrolling:i[3]~9_combout\);

-- Location: LCCOMB_X33_Y8_N18
\bcd_output|scrolling:i[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~4_combout\ = \bcd_output|scrolling:i[3]~1_combout\ $ (((\bcd_output|Equal0~0_combout\ & (\bcd_output|scrolling:i[3]~8_combout\ $ (\bcd_output|scrolling:i[3]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~1_combout\,
	datab => \bcd_output|scrolling:i[3]~8_combout\,
	datac => \bcd_output|scrolling:i[3]~9_combout\,
	datad => \bcd_output|Equal0~0_combout\,
	combout => \bcd_output|scrolling:i[3]~4_combout\);

-- Location: FF_X33_Y8_N19
\bcd_output|scrolling:i[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|scroll_clk~clkctrl_outclk\,
	d => \bcd_output|scrolling:i[3]~4_combout\,
	clrn => \bcd_output|ALT_INV_scrolling:i[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|scrolling:i[3]~_emulated_q\);

-- Location: LCCOMB_X33_Y8_N12
\bcd_output|scrolling:i[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~3_combout\ = \bcd_output|scrolling:i[3]~_emulated_q\ $ (\bcd_output|scrolling:i[3]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|scrolling:i[3]~_emulated_q\,
	datad => \bcd_output|scrolling:i[3]~1_combout\,
	combout => \bcd_output|scrolling:i[3]~3_combout\);

-- Location: LCCOMB_X33_Y8_N6
\bcd_output|scrolling:i[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|scrolling:i[3]~2_combout\ = (!\reset~input_o\ & ((\bcd_output|scrolling:i[3]~10_combout\ & ((\bcd_output|i~0_combout\))) # (!\bcd_output|scrolling:i[3]~10_combout\ & (\bcd_output|scrolling:i[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~3_combout\,
	datab => \bcd_output|i~0_combout\,
	datac => \reset~input_o\,
	datad => \bcd_output|scrolling:i[3]~10_combout\,
	combout => \bcd_output|scrolling:i[3]~2_combout\);

-- Location: LCCOMB_X32_Y8_N22
\bcd_output|displaying:i[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|displaying:i[0]~0_combout\ = !\bcd_output|displaying:i[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bcd_output|displaying:i[0]~q\,
	combout => \bcd_output|displaying:i[0]~0_combout\);

-- Location: FF_X32_Y8_N23
\bcd_output|displaying:i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|displaying:i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|displaying:i[0]~q\);

-- Location: LCCOMB_X32_Y8_N12
\bcd_output|displaying:i[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|displaying:i[1]~0_combout\ = \bcd_output|displaying:i[0]~q\ $ (\bcd_output|displaying:i[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datac => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|displaying:i[1]~0_combout\);

-- Location: FF_X32_Y8_N13
\bcd_output|displaying:i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|displaying:i[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|displaying:i[1]~q\);

-- Location: LCCOMB_X32_Y8_N20
\bcd_output|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux21~0_combout\ = (\bcd_output|scrolling:i[1]~2_combout\ & (!\bcd_output|scrolling:i[2]~2_combout\ & !\bcd_output|displaying:i[1]~q\)) # (!\bcd_output|scrolling:i[1]~2_combout\ & ((\bcd_output|displaying:i[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \bcd_output|scrolling:i[2]~2_combout\,
	datac => \bcd_output|scrolling:i[1]~2_combout\,
	datad => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux21~0_combout\);

-- Location: LCCOMB_X32_Y8_N30
\bcd_output|Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux21~1_combout\ = \bcd_output|scrolling:i[2]~2_combout\ $ (((\bcd_output|displaying:i[1]~q\ & !\bcd_output|scrolling:i[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[1]~q\,
	datac => \bcd_output|scrolling:i[1]~2_combout\,
	datad => \bcd_output|scrolling:i[2]~2_combout\,
	combout => \bcd_output|Mux21~1_combout\);

-- Location: LCCOMB_X32_Y8_N28
\bcd_output|Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux21~2_combout\ = (\bcd_output|scrolling:i[0]~2_combout\ & (((\bcd_output|displaying:i[0]~q\) # (\bcd_output|Mux21~0_combout\)))) # (!\bcd_output|scrolling:i[0]~2_combout\ & (((!\bcd_output|displaying:i[0]~q\)) # 
-- (!\bcd_output|scrolling:i[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~2_combout\,
	datab => \bcd_output|scrolling:i[0]~2_combout\,
	datac => \bcd_output|displaying:i[0]~q\,
	datad => \bcd_output|Mux21~0_combout\,
	combout => \bcd_output|Mux21~2_combout\);

-- Location: LCCOMB_X32_Y8_N8
\bcd_output|Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux21~3_combout\ = (\bcd_output|scrolling:i[3]~2_combout\ & ((\bcd_output|Mux21~1_combout\ & (!\bcd_output|Mux21~0_combout\)) # (!\bcd_output|Mux21~1_combout\ & ((\bcd_output|Mux21~2_combout\))))) # (!\bcd_output|scrolling:i[3]~2_combout\ & 
-- (\bcd_output|Mux21~2_combout\ & (\bcd_output|Mux21~0_combout\ $ (!\bcd_output|Mux21~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~2_combout\,
	datab => \bcd_output|Mux21~0_combout\,
	datac => \bcd_output|Mux21~1_combout\,
	datad => \bcd_output|Mux21~2_combout\,
	combout => \bcd_output|Mux21~3_combout\);

-- Location: FF_X32_Y8_N9
\bcd_output|bcd_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux21~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|bcd_out\(2));

-- Location: LCCOMB_X32_Y8_N26
\bcd_output|Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux23~1_combout\ = (\bcd_output|displaying:i[0]~q\ & (!\bcd_output|scrolling:i[0]~2_combout\ & (!\bcd_output|scrolling:i[1]~2_combout\ & \bcd_output|displaying:i[1]~q\))) # (!\bcd_output|displaying:i[0]~q\ & 
-- (\bcd_output|scrolling:i[0]~2_combout\ & (\bcd_output|scrolling:i[1]~2_combout\ & !\bcd_output|displaying:i[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datab => \bcd_output|scrolling:i[0]~2_combout\,
	datac => \bcd_output|scrolling:i[1]~2_combout\,
	datad => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux23~1_combout\);

-- Location: LCCOMB_X32_Y8_N0
\bcd_output|Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux23~0_combout\ = (\bcd_output|displaying:i[1]~q\ & (!\bcd_output|scrolling:i[1]~2_combout\ & ((\bcd_output|displaying:i[0]~q\) # (!\bcd_output|scrolling:i[0]~2_combout\)))) # (!\bcd_output|displaying:i[1]~q\ & 
-- (\bcd_output|scrolling:i[1]~2_combout\ & (\bcd_output|displaying:i[0]~q\ $ (!\bcd_output|scrolling:i[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datab => \bcd_output|displaying:i[1]~q\,
	datac => \bcd_output|scrolling:i[1]~2_combout\,
	datad => \bcd_output|scrolling:i[0]~2_combout\,
	combout => \bcd_output|Mux23~0_combout\);

-- Location: LCCOMB_X32_Y8_N24
\bcd_output|Mux23~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux23~2_combout\ = (\bcd_output|scrolling:i[3]~2_combout\ & ((\bcd_output|scrolling:i[2]~2_combout\) # ((!\bcd_output|Mux23~0_combout\) # (!\bcd_output|Mux23~1_combout\)))) # (!\bcd_output|scrolling:i[3]~2_combout\ & 
-- ((\bcd_output|Mux23~0_combout\) # (\bcd_output|scrolling:i[2]~2_combout\ $ (!\bcd_output|Mux23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~2_combout\,
	datab => \bcd_output|scrolling:i[2]~2_combout\,
	datac => \bcd_output|Mux23~1_combout\,
	datad => \bcd_output|Mux23~0_combout\,
	combout => \bcd_output|Mux23~2_combout\);

-- Location: FF_X32_Y8_N25
\bcd_output|bcd_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux23~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|bcd_out\(0));

-- Location: LCCOMB_X32_Y8_N4
\bcd_output|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux22~0_combout\ = (\bcd_output|scrolling:i[1]~2_combout\ & (((!\bcd_output|displaying:i[1]~q\)))) # (!\bcd_output|scrolling:i[1]~2_combout\ & (\bcd_output|displaying:i[1]~q\ & ((\bcd_output|scrolling:i[2]~2_combout\) # 
-- (!\bcd_output|scrolling:i[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[1]~2_combout\,
	datab => \bcd_output|scrolling:i[2]~2_combout\,
	datac => \bcd_output|scrolling:i[0]~2_combout\,
	datad => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux22~0_combout\);

-- Location: LCCOMB_X32_Y8_N10
\bcd_output|Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux22~1_combout\ = (\bcd_output|scrolling:i[1]~2_combout\ & (\bcd_output|scrolling:i[2]~2_combout\)) # (!\bcd_output|scrolling:i[1]~2_combout\ & ((\bcd_output|scrolling:i[2]~2_combout\ & ((!\bcd_output|displaying:i[1]~q\))) # 
-- (!\bcd_output|scrolling:i[2]~2_combout\ & (!\bcd_output|scrolling:i[0]~2_combout\ & \bcd_output|displaying:i[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[1]~2_combout\,
	datab => \bcd_output|scrolling:i[2]~2_combout\,
	datac => \bcd_output|scrolling:i[0]~2_combout\,
	datad => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux22~1_combout\);

-- Location: LCCOMB_X32_Y8_N18
\bcd_output|Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux22~2_combout\ = (\bcd_output|displaying:i[0]~q\ & (\bcd_output|Mux22~0_combout\ $ (((\bcd_output|scrolling:i[0]~2_combout\ & !\bcd_output|Mux22~1_combout\))))) # (!\bcd_output|displaying:i[0]~q\ & ((\bcd_output|scrolling:i[0]~2_combout\ & 
-- (!\bcd_output|Mux22~0_combout\ & \bcd_output|Mux22~1_combout\)) # (!\bcd_output|scrolling:i[0]~2_combout\ & (\bcd_output|Mux22~0_combout\ $ (!\bcd_output|Mux22~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datab => \bcd_output|scrolling:i[0]~2_combout\,
	datac => \bcd_output|Mux22~0_combout\,
	datad => \bcd_output|Mux22~1_combout\,
	combout => \bcd_output|Mux22~2_combout\);

-- Location: LCCOMB_X32_Y8_N14
\bcd_output|Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux22~3_combout\ = (\bcd_output|scrolling:i[3]~2_combout\ & ((\bcd_output|Mux22~1_combout\) # (\bcd_output|Mux22~0_combout\ $ (\bcd_output|Mux22~2_combout\)))) # (!\bcd_output|scrolling:i[3]~2_combout\ & ((\bcd_output|Mux22~2_combout\) # 
-- ((!\bcd_output|Mux22~0_combout\ & !\bcd_output|Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~2_combout\,
	datab => \bcd_output|Mux22~0_combout\,
	datac => \bcd_output|Mux22~1_combout\,
	datad => \bcd_output|Mux22~2_combout\,
	combout => \bcd_output|Mux22~3_combout\);

-- Location: FF_X32_Y8_N15
\bcd_output|bcd_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux22~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|bcd_out\(1));

-- Location: LCCOMB_X33_Y8_N22
\bcd_output|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux20~0_combout\ = \bcd_output|scrolling:i[3]~2_combout\ $ (((\bcd_output|scrolling:i[2]~2_combout\) # ((\bcd_output|scrolling:i[1]~2_combout\ & !\bcd_output|displaying:i[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~2_combout\,
	datab => \bcd_output|scrolling:i[1]~2_combout\,
	datac => \bcd_output|scrolling:i[2]~2_combout\,
	datad => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux20~0_combout\);

-- Location: LCCOMB_X33_Y8_N16
\bcd_output|Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux20~1_combout\ = (\bcd_output|scrolling:i[1]~2_combout\ & ((\bcd_output|scrolling:i[2]~2_combout\ & (\bcd_output|scrolling:i[3]~2_combout\)) # (!\bcd_output|scrolling:i[2]~2_combout\ & ((!\bcd_output|displaying:i[1]~q\))))) # 
-- (!\bcd_output|scrolling:i[1]~2_combout\ & ((\bcd_output|scrolling:i[3]~2_combout\ & (\bcd_output|scrolling:i[2]~2_combout\)) # (!\bcd_output|scrolling:i[3]~2_combout\ & ((\bcd_output|displaying:i[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|scrolling:i[3]~2_combout\,
	datab => \bcd_output|scrolling:i[1]~2_combout\,
	datac => \bcd_output|scrolling:i[2]~2_combout\,
	datad => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux20~1_combout\);

-- Location: LCCOMB_X33_Y8_N4
\bcd_output|Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux20~2_combout\ = (\bcd_output|displaying:i[0]~q\ & ((\bcd_output|scrolling:i[0]~2_combout\ $ (!\bcd_output|Mux20~1_combout\)) # (!\bcd_output|Mux20~0_combout\))) # (!\bcd_output|displaying:i[0]~q\ & ((\bcd_output|Mux20~1_combout\) # 
-- (\bcd_output|Mux20~0_combout\ $ (!\bcd_output|scrolling:i[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011101101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|Mux20~0_combout\,
	datab => \bcd_output|displaying:i[0]~q\,
	datac => \bcd_output|scrolling:i[0]~2_combout\,
	datad => \bcd_output|Mux20~1_combout\,
	combout => \bcd_output|Mux20~2_combout\);

-- Location: FF_X33_Y8_N5
\bcd_output|bcd_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|bcd_out\(3));

-- Location: LCCOMB_X19_Y18_N28
\seg_output|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg_output|Mux6~0_combout\ = (\bcd_output|bcd_out\(2) & (!\bcd_output|bcd_out\(3) & ((!\bcd_output|bcd_out\(1)) # (!\bcd_output|bcd_out\(0))))) # (!\bcd_output|bcd_out\(2) & ((\bcd_output|bcd_out\(1) & ((!\bcd_output|bcd_out\(3)) # 
-- (!\bcd_output|bcd_out\(0)))) # (!\bcd_output|bcd_out\(1) & ((\bcd_output|bcd_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|bcd_out\(2),
	datab => \bcd_output|bcd_out\(0),
	datac => \bcd_output|bcd_out\(1),
	datad => \bcd_output|bcd_out\(3),
	combout => \seg_output|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y18_N2
\seg_output|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg_output|Mux5~0_combout\ = (\bcd_output|bcd_out\(2) & ((\bcd_output|bcd_out\(3)) # ((\bcd_output|bcd_out\(0) & \bcd_output|bcd_out\(1))))) # (!\bcd_output|bcd_out\(2) & ((\bcd_output|bcd_out\(1)) # ((\bcd_output|bcd_out\(0) & 
-- !\bcd_output|bcd_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|bcd_out\(2),
	datab => \bcd_output|bcd_out\(0),
	datac => \bcd_output|bcd_out\(1),
	datad => \bcd_output|bcd_out\(3),
	combout => \seg_output|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y18_N4
\seg_output|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg_output|Mux4~0_combout\ = (\bcd_output|bcd_out\(0)) # ((\bcd_output|bcd_out\(1) & ((\bcd_output|bcd_out\(3)))) # (!\bcd_output|bcd_out\(1) & (\bcd_output|bcd_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|bcd_out\(2),
	datab => \bcd_output|bcd_out\(0),
	datac => \bcd_output|bcd_out\(1),
	datad => \bcd_output|bcd_out\(3),
	combout => \seg_output|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\seg_output|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg_output|Mux3~0_combout\ = (\bcd_output|bcd_out\(2) & ((\bcd_output|bcd_out\(3)) # (\bcd_output|bcd_out\(0) $ (!\bcd_output|bcd_out\(1))))) # (!\bcd_output|bcd_out\(2) & ((\bcd_output|bcd_out\(1) & ((\bcd_output|bcd_out\(3)))) # 
-- (!\bcd_output|bcd_out\(1) & (\bcd_output|bcd_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|bcd_out\(2),
	datab => \bcd_output|bcd_out\(0),
	datac => \bcd_output|bcd_out\(1),
	datad => \bcd_output|bcd_out\(3),
	combout => \seg_output|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y18_N8
\seg_output|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg_output|Mux2~0_combout\ = (\bcd_output|bcd_out\(2) & (((\bcd_output|bcd_out\(3))))) # (!\bcd_output|bcd_out\(2) & (\bcd_output|bcd_out\(1) & ((\bcd_output|bcd_out\(3)) # (!\bcd_output|bcd_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|bcd_out\(2),
	datab => \bcd_output|bcd_out\(0),
	datac => \bcd_output|bcd_out\(1),
	datad => \bcd_output|bcd_out\(3),
	combout => \seg_output|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y18_N22
\seg_output|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg_output|Mux1~0_combout\ = (\bcd_output|bcd_out\(2) & ((\bcd_output|bcd_out\(3)) # (\bcd_output|bcd_out\(0) $ (\bcd_output|bcd_out\(1))))) # (!\bcd_output|bcd_out\(2) & (((\bcd_output|bcd_out\(1) & \bcd_output|bcd_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|bcd_out\(2),
	datab => \bcd_output|bcd_out\(0),
	datac => \bcd_output|bcd_out\(1),
	datad => \bcd_output|bcd_out\(3),
	combout => \seg_output|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y18_N12
\seg_output|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \seg_output|Mux0~0_combout\ = (\bcd_output|bcd_out\(1) & (((\bcd_output|bcd_out\(3))))) # (!\bcd_output|bcd_out\(1) & (\bcd_output|bcd_out\(2) $ (((\bcd_output|bcd_out\(0) & !\bcd_output|bcd_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|bcd_out\(2),
	datab => \bcd_output|bcd_out\(0),
	datac => \bcd_output|bcd_out\(1),
	datad => \bcd_output|bcd_out\(3),
	combout => \seg_output|Mux0~0_combout\);

-- Location: LCCOMB_X32_Y8_N2
\bcd_output|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux19~0_combout\ = (!\bcd_output|displaying:i[0]~q\ & !\bcd_output|displaying:i[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datac => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux19~0_combout\);

-- Location: FF_X32_Y8_N3
\bcd_output|sel_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|sel_out\(0));

-- Location: LCCOMB_X32_Y8_N16
\bcd_output|Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux18~0_combout\ = (\bcd_output|displaying:i[0]~q\ & !\bcd_output|displaying:i[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datac => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux18~0_combout\);

-- Location: FF_X32_Y8_N17
\bcd_output|sel_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|sel_out\(1));

-- Location: LCCOMB_X32_Y8_N6
\bcd_output|Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux18~1_combout\ = (!\bcd_output|displaying:i[0]~q\ & \bcd_output|displaying:i[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datac => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux18~1_combout\);

-- Location: FF_X32_Y8_N7
\bcd_output|sel_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|sel_out\(2));

-- Location: LCCOMB_X34_Y8_N8
\bcd_output|Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bcd_output|Mux18~2_combout\ = (\bcd_output|displaying:i[0]~q\ & \bcd_output|displaying:i[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bcd_output|displaying:i[0]~q\,
	datad => \bcd_output|displaying:i[1]~q\,
	combout => \bcd_output|Mux18~2_combout\);

-- Location: FF_X34_Y8_N9
\bcd_output|sel_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bcd_output|clk_divider|mux_clk~clkctrl_outclk\,
	d => \bcd_output|Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_output|sel_out\(3));

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
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
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
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_seg_out(0) <= \seg_out[0]~output_o\;

ww_seg_out(1) <= \seg_out[1]~output_o\;

ww_seg_out(2) <= \seg_out[2]~output_o\;

ww_seg_out(3) <= \seg_out[3]~output_o\;

ww_seg_out(4) <= \seg_out[4]~output_o\;

ww_seg_out(5) <= \seg_out[5]~output_o\;

ww_seg_out(6) <= \seg_out[6]~output_o\;

ww_dp_out <= \dp_out~output_o\;

ww_sel_out(0) <= \sel_out[0]~output_o\;

ww_sel_out(1) <= \sel_out[1]~output_o\;

ww_sel_out(2) <= \sel_out[2]~output_o\;

ww_sel_out(3) <= \sel_out[3]~output_o\;
END structure;


