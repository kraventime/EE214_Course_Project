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

-- DATE "10/23/2026 15:40:59"

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

ENTITY 	seven_seg_scroll_bcd IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	start : IN std_logic;
	bcd_out : OUT std_logic_vector(3 DOWNTO 0);
	sel_out : OUT std_logic_vector(3 DOWNTO 0)
	);
END seven_seg_scroll_bcd;

-- Design Ports Information
-- bcd_out[0]	=>  Location: PIN_135,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[2]	=>  Location: PIN_140,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- bcd_out[3]	=>  Location: PIN_141,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[0]	=>  Location: PIN_130,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[1]	=>  Location: PIN_131,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[2]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel_out[3]	=>  Location: PIN_134,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- start	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_26,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF seven_seg_scroll_bcd IS
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
SIGNAL ww_bcd_out : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel_out : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \scrolling:i[3]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider|scroll_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_divider|mux_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \bcd_out[0]~output_o\ : std_logic;
SIGNAL \bcd_out[1]~output_o\ : std_logic;
SIGNAL \bcd_out[2]~output_o\ : std_logic;
SIGNAL \bcd_out[3]~output_o\ : std_logic;
SIGNAL \sel_out[0]~output_o\ : std_logic;
SIGNAL \sel_out[1]~output_o\ : std_logic;
SIGNAL \sel_out[2]~output_o\ : std_logic;
SIGNAL \sel_out[3]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_clkout~feeder_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_clkout~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[0]~0_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[0]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[1]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[1]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[1]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[2]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[2]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[2]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[3]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[3]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[3]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[4]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[4]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[4]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[5]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[5]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[5]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[6]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[6]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[6]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[7]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[7]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[7]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[8]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[8]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[8]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[9]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[9]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[9]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[10]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[10]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[10]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[11]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[11]~q\ : std_logic;
SIGNAL \clk_divider|Equal0~3_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[11]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[12]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[12]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[12]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[13]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[13]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[13]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[14]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[14]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[14]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[15]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[15]~q\ : std_logic;
SIGNAL \clk_divider|Equal0~4_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[15]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[16]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[16]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[16]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[17]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[17]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[17]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[18]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[18]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[18]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[19]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[19]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[19]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[20]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[20]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[20]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[21]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[21]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[21]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[22]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[22]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[22]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[23]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[23]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[23]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[24]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[24]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[24]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[25]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[25]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[25]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[26]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[26]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[26]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[27]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[27]~q\ : std_logic;
SIGNAL \clk_divider|Equal0~7_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~5_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~6_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[27]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[28]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[28]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[28]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[29]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[29]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[29]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[30]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[30]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[30]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[31]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:mux_counter[31]~q\ : std_logic;
SIGNAL \clk_divider|Equal0~8_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~9_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~0_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~1_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~2_combout\ : std_logic;
SIGNAL \clk_divider|Equal0~10_combout\ : std_logic;
SIGNAL \clk_divider|mux_clkout~0_combout\ : std_logic;
SIGNAL \clk_divider|mux_clk~feeder_combout\ : std_logic;
SIGNAL \clk_divider|mux_clk~q\ : std_logic;
SIGNAL \clk_divider|mux_clk~clkctrl_outclk\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_clkout~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[3]~2_cout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[3]~4_cout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[3]~5_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[3]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[3]~6\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[4]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[4]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[4]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[5]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[5]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[5]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[6]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[6]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[6]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[7]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[7]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[7]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[8]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[8]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[8]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[9]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[9]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[9]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[10]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[10]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[10]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[11]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[11]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[11]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[12]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[12]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[12]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[13]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[13]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[13]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[14]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[14]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[14]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[15]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[15]~q\ : std_logic;
SIGNAL \clk_divider|Equal1~3_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~2_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~0_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[15]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[16]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[16]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[16]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[17]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[17]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[17]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[18]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[18]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[18]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[19]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[19]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[19]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[20]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[20]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[20]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[21]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[21]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[21]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[22]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[22]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[22]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[23]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[23]~q\ : std_logic;
SIGNAL \clk_divider|Equal1~5_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~4_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[23]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[24]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[24]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[24]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[25]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[25]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[25]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[26]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[26]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[26]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[27]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[27]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[27]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[28]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[28]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[28]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[29]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[29]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[29]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[30]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[30]~q\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[30]~2\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[31]~1_combout\ : std_logic;
SIGNAL \clk_divider|clock_division:scroll_counter[31]~q\ : std_logic;
SIGNAL \clk_divider|Equal1~7_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~6_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~8_combout\ : std_logic;
SIGNAL \clk_divider|Equal1~9_combout\ : std_logic;
SIGNAL \clk_divider|scroll_clkout~0_combout\ : std_logic;
SIGNAL \clk_divider|scroll_clk~feeder_combout\ : std_logic;
SIGNAL \clk_divider|scroll_clk~q\ : std_logic;
SIGNAL \clk_divider|scroll_clk~clkctrl_outclk\ : std_logic;
SIGNAL \scrolling:i[0]~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \start~input_o\ : std_logic;
SIGNAL \scrolling~0_combout\ : std_logic;
SIGNAL \state~combout\ : std_logic;
SIGNAL \scrolling:i[3]~0_combout\ : std_logic;
SIGNAL \scrolling:i[3]~0clkctrl_outclk\ : std_logic;
SIGNAL \scrolling:i[0]~q\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \scrolling:i[1]~q\ : std_logic;
SIGNAL \i~0_combout\ : std_logic;
SIGNAL \scrolling:i[3]~q\ : std_logic;
SIGNAL \i~1_combout\ : std_logic;
SIGNAL \scrolling:i[2]~q\ : std_logic;
SIGNAL \displaying:i[0]~0_combout\ : std_logic;
SIGNAL \displaying:i[0]~q\ : std_logic;
SIGNAL \displaying:i[1]~0_combout\ : std_logic;
SIGNAL \displaying:i[1]~q\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \bcd_out[0]~reg0_q\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \bcd_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \bcd_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \bcd_out[3]~reg0_q\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \sel_out[0]~reg0_q\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \sel_out[1]~reg0_q\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \sel_out[2]~reg0_q\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \sel_out[3]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_scrolling:i[3]~0clkctrl_outclk\ : std_logic;

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
bcd_out <= ww_bcd_out;
sel_out <= ww_sel_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\scrolling:i[3]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \scrolling:i[3]~0_combout\);

\clk_divider|scroll_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider|scroll_clk~q\);

\clk_divider|mux_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_divider|mux_clk~q\);
\ALT_INV_scrolling:i[3]~0clkctrl_outclk\ <= NOT \scrolling:i[3]~0clkctrl_outclk\;
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

-- Location: IOOBUF_X10_Y21_N16
\bcd_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd_out[0]~output_o\);

-- Location: IOOBUF_X19_Y21_N30
\bcd_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd_out[1]~output_o\);

-- Location: IOOBUF_X8_Y21_N16
\bcd_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd_out[2]~output_o\);

-- Location: IOOBUF_X8_Y21_N23
\bcd_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bcd_out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \bcd_out[3]~output_o\);

-- Location: IOOBUF_X12_Y21_N2
\sel_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \sel_out[0]~output_o\);

-- Location: IOOBUF_X12_Y21_N9
\sel_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \sel_out[1]~output_o\);

-- Location: IOOBUF_X12_Y21_N30
\sel_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \sel_out[2]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\sel_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sel_out[3]~reg0_q\,
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

-- Location: LCCOMB_X30_Y34_N18
\clk_divider|clock_division:mux_clkout~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_clkout~feeder_combout\ = \clk_divider|mux_clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|mux_clkout~0_combout\,
	combout => \clk_divider|clock_division:mux_clkout~feeder_combout\);

-- Location: FF_X30_Y34_N19
\clk_divider|clock_division:mux_clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_clkout~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_clkout~q\);

-- Location: LCCOMB_X40_Y34_N16
\clk_divider|clock_division:mux_counter[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[0]~0_combout\ = !\clk_divider|clock_division:mux_counter[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|clock_division:mux_counter[0]~q\,
	combout => \clk_divider|clock_division:mux_counter[0]~0_combout\);

-- Location: FF_X40_Y34_N17
\clk_divider|clock_division:mux_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[0]~q\);

-- Location: LCCOMB_X39_Y34_N2
\clk_divider|clock_division:mux_counter[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[1]~1_combout\ = (\clk_divider|clock_division:mux_counter[0]~q\ & (\clk_divider|clock_division:mux_counter[1]~q\ $ (VCC))) # (!\clk_divider|clock_division:mux_counter[0]~q\ & 
-- (\clk_divider|clock_division:mux_counter[1]~q\ & VCC))
-- \clk_divider|clock_division:mux_counter[1]~2\ = CARRY((\clk_divider|clock_division:mux_counter[0]~q\ & \clk_divider|clock_division:mux_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[0]~q\,
	datab => \clk_divider|clock_division:mux_counter[1]~q\,
	datad => VCC,
	combout => \clk_divider|clock_division:mux_counter[1]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[1]~2\);

-- Location: FF_X39_Y34_N3
\clk_divider|clock_division:mux_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[1]~q\);

-- Location: LCCOMB_X39_Y34_N4
\clk_divider|clock_division:mux_counter[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[2]~1_combout\ = (\clk_divider|clock_division:mux_counter[2]~q\ & (!\clk_divider|clock_division:mux_counter[1]~2\)) # (!\clk_divider|clock_division:mux_counter[2]~q\ & ((\clk_divider|clock_division:mux_counter[1]~2\) 
-- # (GND)))
-- \clk_divider|clock_division:mux_counter[2]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[1]~2\) # (!\clk_divider|clock_division:mux_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[2]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[1]~2\,
	combout => \clk_divider|clock_division:mux_counter[2]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[2]~2\);

-- Location: FF_X39_Y34_N5
\clk_divider|clock_division:mux_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[2]~q\);

-- Location: LCCOMB_X39_Y34_N6
\clk_divider|clock_division:mux_counter[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[3]~1_combout\ = (\clk_divider|clock_division:mux_counter[2]~2\ & (\clk_divider|clock_division:mux_counter[3]~q\ & (!\clk_divider|Equal0~10_combout\ & VCC))) # (!\clk_divider|clock_division:mux_counter[2]~2\ & 
-- ((((\clk_divider|clock_division:mux_counter[3]~q\ & !\clk_divider|Equal0~10_combout\)))))
-- \clk_divider|clock_division:mux_counter[3]~2\ = CARRY((\clk_divider|clock_division:mux_counter[3]~q\ & (!\clk_divider|Equal0~10_combout\ & !\clk_divider|clock_division:mux_counter[2]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[3]~q\,
	datab => \clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[2]~2\,
	combout => \clk_divider|clock_division:mux_counter[3]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[3]~2\);

-- Location: FF_X39_Y34_N7
\clk_divider|clock_division:mux_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[3]~q\);

-- Location: LCCOMB_X39_Y34_N8
\clk_divider|clock_division:mux_counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[4]~1_combout\ = (\clk_divider|clock_division:mux_counter[4]~q\ & (!\clk_divider|clock_division:mux_counter[3]~2\)) # (!\clk_divider|clock_division:mux_counter[4]~q\ & ((\clk_divider|clock_division:mux_counter[3]~2\) 
-- # (GND)))
-- \clk_divider|clock_division:mux_counter[4]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[3]~2\) # (!\clk_divider|clock_division:mux_counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[4]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[3]~2\,
	combout => \clk_divider|clock_division:mux_counter[4]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[4]~2\);

-- Location: FF_X39_Y34_N9
\clk_divider|clock_division:mux_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[4]~q\);

-- Location: LCCOMB_X39_Y34_N10
\clk_divider|clock_division:mux_counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[5]~1_combout\ = (\clk_divider|clock_division:mux_counter[4]~2\ & (\clk_divider|clock_division:mux_counter[5]~q\ & (!\clk_divider|Equal0~10_combout\ & VCC))) # (!\clk_divider|clock_division:mux_counter[4]~2\ & 
-- ((((\clk_divider|clock_division:mux_counter[5]~q\ & !\clk_divider|Equal0~10_combout\)))))
-- \clk_divider|clock_division:mux_counter[5]~2\ = CARRY((\clk_divider|clock_division:mux_counter[5]~q\ & (!\clk_divider|Equal0~10_combout\ & !\clk_divider|clock_division:mux_counter[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[5]~q\,
	datab => \clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[4]~2\,
	combout => \clk_divider|clock_division:mux_counter[5]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[5]~2\);

-- Location: FF_X39_Y34_N11
\clk_divider|clock_division:mux_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[5]~q\);

-- Location: LCCOMB_X39_Y34_N12
\clk_divider|clock_division:mux_counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[6]~1_combout\ = (\clk_divider|clock_division:mux_counter[6]~q\ & (!\clk_divider|clock_division:mux_counter[5]~2\)) # (!\clk_divider|clock_division:mux_counter[6]~q\ & ((\clk_divider|clock_division:mux_counter[5]~2\) 
-- # (GND)))
-- \clk_divider|clock_division:mux_counter[6]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[5]~2\) # (!\clk_divider|clock_division:mux_counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[6]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[5]~2\,
	combout => \clk_divider|clock_division:mux_counter[6]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[6]~2\);

-- Location: FF_X39_Y34_N13
\clk_divider|clock_division:mux_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[6]~q\);

-- Location: LCCOMB_X39_Y34_N14
\clk_divider|clock_division:mux_counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[7]~1_combout\ = (\clk_divider|clock_division:mux_counter[6]~2\ & (\clk_divider|clock_division:mux_counter[7]~q\ & (!\clk_divider|Equal0~10_combout\ & VCC))) # (!\clk_divider|clock_division:mux_counter[6]~2\ & 
-- ((((\clk_divider|clock_division:mux_counter[7]~q\ & !\clk_divider|Equal0~10_combout\)))))
-- \clk_divider|clock_division:mux_counter[7]~2\ = CARRY((\clk_divider|clock_division:mux_counter[7]~q\ & (!\clk_divider|Equal0~10_combout\ & !\clk_divider|clock_division:mux_counter[6]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[7]~q\,
	datab => \clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[6]~2\,
	combout => \clk_divider|clock_division:mux_counter[7]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[7]~2\);

-- Location: FF_X39_Y34_N15
\clk_divider|clock_division:mux_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[7]~q\);

-- Location: LCCOMB_X39_Y34_N16
\clk_divider|clock_division:mux_counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[8]~1_combout\ = (\clk_divider|clock_division:mux_counter[7]~2\ & (((\clk_divider|Equal0~10_combout\)) # (!\clk_divider|clock_division:mux_counter[8]~q\))) # (!\clk_divider|clock_division:mux_counter[7]~2\ & 
-- (((\clk_divider|clock_division:mux_counter[8]~q\ & !\clk_divider|Equal0~10_combout\)) # (GND)))
-- \clk_divider|clock_division:mux_counter[8]~2\ = CARRY(((\clk_divider|Equal0~10_combout\) # (!\clk_divider|clock_division:mux_counter[7]~2\)) # (!\clk_divider|clock_division:mux_counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[8]~q\,
	datab => \clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[7]~2\,
	combout => \clk_divider|clock_division:mux_counter[8]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[8]~2\);

-- Location: FF_X39_Y34_N17
\clk_divider|clock_division:mux_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[8]~q\);

-- Location: LCCOMB_X39_Y34_N18
\clk_divider|clock_division:mux_counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[9]~1_combout\ = (\clk_divider|clock_division:mux_counter[9]~q\ & (\clk_divider|clock_division:mux_counter[8]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[9]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[8]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[9]~2\ = CARRY((\clk_divider|clock_division:mux_counter[9]~q\ & !\clk_divider|clock_division:mux_counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[9]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[8]~2\,
	combout => \clk_divider|clock_division:mux_counter[9]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[9]~2\);

-- Location: FF_X39_Y34_N19
\clk_divider|clock_division:mux_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[9]~q\);

-- Location: LCCOMB_X39_Y34_N20
\clk_divider|clock_division:mux_counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[10]~1_combout\ = (\clk_divider|clock_division:mux_counter[10]~q\ & (!\clk_divider|clock_division:mux_counter[9]~2\)) # (!\clk_divider|clock_division:mux_counter[10]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[9]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[10]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[9]~2\) # (!\clk_divider|clock_division:mux_counter[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[10]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[9]~2\,
	combout => \clk_divider|clock_division:mux_counter[10]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[10]~2\);

-- Location: FF_X39_Y34_N21
\clk_divider|clock_division:mux_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[10]~q\);

-- Location: LCCOMB_X39_Y34_N22
\clk_divider|clock_division:mux_counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[11]~1_combout\ = (\clk_divider|clock_division:mux_counter[11]~q\ & (\clk_divider|clock_division:mux_counter[10]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[11]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[10]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[11]~2\ = CARRY((\clk_divider|clock_division:mux_counter[11]~q\ & !\clk_divider|clock_division:mux_counter[10]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[11]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[10]~2\,
	combout => \clk_divider|clock_division:mux_counter[11]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[11]~2\);

-- Location: FF_X39_Y34_N23
\clk_divider|clock_division:mux_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[11]~q\);

-- Location: LCCOMB_X38_Y34_N0
\clk_divider|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~3_combout\ = (!\clk_divider|clock_division:mux_counter[10]~q\ & (\clk_divider|clock_division:mux_counter[8]~q\ & (!\clk_divider|clock_division:mux_counter[11]~q\ & !\clk_divider|clock_division:mux_counter[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[10]~q\,
	datab => \clk_divider|clock_division:mux_counter[8]~q\,
	datac => \clk_divider|clock_division:mux_counter[11]~q\,
	datad => \clk_divider|clock_division:mux_counter[9]~q\,
	combout => \clk_divider|Equal0~3_combout\);

-- Location: LCCOMB_X39_Y34_N24
\clk_divider|clock_division:mux_counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[12]~1_combout\ = (\clk_divider|clock_division:mux_counter[12]~q\ & (!\clk_divider|clock_division:mux_counter[11]~2\)) # (!\clk_divider|clock_division:mux_counter[12]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[11]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[12]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[11]~2\) # (!\clk_divider|clock_division:mux_counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[12]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[11]~2\,
	combout => \clk_divider|clock_division:mux_counter[12]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[12]~2\);

-- Location: FF_X39_Y34_N25
\clk_divider|clock_division:mux_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[12]~q\);

-- Location: LCCOMB_X39_Y34_N26
\clk_divider|clock_division:mux_counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[13]~1_combout\ = (\clk_divider|clock_division:mux_counter[12]~2\ & (\clk_divider|clock_division:mux_counter[13]~q\ & (!\clk_divider|Equal0~10_combout\ & VCC))) # (!\clk_divider|clock_division:mux_counter[12]~2\ & 
-- ((((\clk_divider|clock_division:mux_counter[13]~q\ & !\clk_divider|Equal0~10_combout\)))))
-- \clk_divider|clock_division:mux_counter[13]~2\ = CARRY((\clk_divider|clock_division:mux_counter[13]~q\ & (!\clk_divider|Equal0~10_combout\ & !\clk_divider|clock_division:mux_counter[12]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[13]~q\,
	datab => \clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[12]~2\,
	combout => \clk_divider|clock_division:mux_counter[13]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[13]~2\);

-- Location: FF_X39_Y34_N27
\clk_divider|clock_division:mux_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[13]~q\);

-- Location: LCCOMB_X39_Y34_N28
\clk_divider|clock_division:mux_counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[14]~1_combout\ = (\clk_divider|clock_division:mux_counter[13]~2\ & (((\clk_divider|Equal0~10_combout\)) # (!\clk_divider|clock_division:mux_counter[14]~q\))) # (!\clk_divider|clock_division:mux_counter[13]~2\ & 
-- (((\clk_divider|clock_division:mux_counter[14]~q\ & !\clk_divider|Equal0~10_combout\)) # (GND)))
-- \clk_divider|clock_division:mux_counter[14]~2\ = CARRY(((\clk_divider|Equal0~10_combout\) # (!\clk_divider|clock_division:mux_counter[13]~2\)) # (!\clk_divider|clock_division:mux_counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[14]~q\,
	datab => \clk_divider|Equal0~10_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[13]~2\,
	combout => \clk_divider|clock_division:mux_counter[14]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[14]~2\);

-- Location: FF_X39_Y34_N29
\clk_divider|clock_division:mux_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[14]~q\);

-- Location: LCCOMB_X39_Y34_N30
\clk_divider|clock_division:mux_counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[15]~1_combout\ = (\clk_divider|clock_division:mux_counter[15]~q\ & (\clk_divider|clock_division:mux_counter[14]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[15]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[14]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[15]~2\ = CARRY((\clk_divider|clock_division:mux_counter[15]~q\ & !\clk_divider|clock_division:mux_counter[14]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[15]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[14]~2\,
	combout => \clk_divider|clock_division:mux_counter[15]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[15]~2\);

-- Location: FF_X39_Y34_N31
\clk_divider|clock_division:mux_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[15]~q\);

-- Location: LCCOMB_X38_Y34_N6
\clk_divider|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~4_combout\ = (!\clk_divider|clock_division:mux_counter[12]~q\ & (\clk_divider|clock_division:mux_counter[13]~q\ & (!\clk_divider|clock_division:mux_counter[15]~q\ & \clk_divider|clock_division:mux_counter[14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[12]~q\,
	datab => \clk_divider|clock_division:mux_counter[13]~q\,
	datac => \clk_divider|clock_division:mux_counter[15]~q\,
	datad => \clk_divider|clock_division:mux_counter[14]~q\,
	combout => \clk_divider|Equal0~4_combout\);

-- Location: LCCOMB_X39_Y33_N0
\clk_divider|clock_division:mux_counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[16]~1_combout\ = (\clk_divider|clock_division:mux_counter[16]~q\ & (!\clk_divider|clock_division:mux_counter[15]~2\)) # (!\clk_divider|clock_division:mux_counter[16]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[15]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[16]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[15]~2\) # (!\clk_divider|clock_division:mux_counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[16]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[15]~2\,
	combout => \clk_divider|clock_division:mux_counter[16]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[16]~2\);

-- Location: FF_X39_Y33_N1
\clk_divider|clock_division:mux_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[16]~q\);

-- Location: LCCOMB_X39_Y33_N2
\clk_divider|clock_division:mux_counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[17]~1_combout\ = (\clk_divider|clock_division:mux_counter[17]~q\ & (\clk_divider|clock_division:mux_counter[16]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[17]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[16]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[17]~2\ = CARRY((\clk_divider|clock_division:mux_counter[17]~q\ & !\clk_divider|clock_division:mux_counter[16]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[17]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[16]~2\,
	combout => \clk_divider|clock_division:mux_counter[17]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[17]~2\);

-- Location: FF_X39_Y33_N3
\clk_divider|clock_division:mux_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[17]~q\);

-- Location: LCCOMB_X39_Y33_N4
\clk_divider|clock_division:mux_counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[18]~1_combout\ = (\clk_divider|clock_division:mux_counter[18]~q\ & (!\clk_divider|clock_division:mux_counter[17]~2\)) # (!\clk_divider|clock_division:mux_counter[18]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[17]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[18]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[17]~2\) # (!\clk_divider|clock_division:mux_counter[18]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[18]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[17]~2\,
	combout => \clk_divider|clock_division:mux_counter[18]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[18]~2\);

-- Location: FF_X39_Y33_N5
\clk_divider|clock_division:mux_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[18]~q\);

-- Location: LCCOMB_X39_Y33_N6
\clk_divider|clock_division:mux_counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[19]~1_combout\ = (\clk_divider|clock_division:mux_counter[19]~q\ & (\clk_divider|clock_division:mux_counter[18]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[19]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[18]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[19]~2\ = CARRY((\clk_divider|clock_division:mux_counter[19]~q\ & !\clk_divider|clock_division:mux_counter[18]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[19]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[18]~2\,
	combout => \clk_divider|clock_division:mux_counter[19]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[19]~2\);

-- Location: FF_X39_Y33_N7
\clk_divider|clock_division:mux_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[19]~q\);

-- Location: LCCOMB_X39_Y33_N8
\clk_divider|clock_division:mux_counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[20]~1_combout\ = (\clk_divider|clock_division:mux_counter[20]~q\ & (!\clk_divider|clock_division:mux_counter[19]~2\)) # (!\clk_divider|clock_division:mux_counter[20]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[19]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[20]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[19]~2\) # (!\clk_divider|clock_division:mux_counter[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[20]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[19]~2\,
	combout => \clk_divider|clock_division:mux_counter[20]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[20]~2\);

-- Location: FF_X39_Y33_N9
\clk_divider|clock_division:mux_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[20]~q\);

-- Location: LCCOMB_X39_Y33_N10
\clk_divider|clock_division:mux_counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[21]~1_combout\ = (\clk_divider|clock_division:mux_counter[21]~q\ & (\clk_divider|clock_division:mux_counter[20]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[21]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[20]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[21]~2\ = CARRY((\clk_divider|clock_division:mux_counter[21]~q\ & !\clk_divider|clock_division:mux_counter[20]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[21]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[20]~2\,
	combout => \clk_divider|clock_division:mux_counter[21]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[21]~2\);

-- Location: FF_X39_Y33_N11
\clk_divider|clock_division:mux_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[21]~q\);

-- Location: LCCOMB_X39_Y33_N12
\clk_divider|clock_division:mux_counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[22]~1_combout\ = (\clk_divider|clock_division:mux_counter[22]~q\ & (!\clk_divider|clock_division:mux_counter[21]~2\)) # (!\clk_divider|clock_division:mux_counter[22]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[21]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[22]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[21]~2\) # (!\clk_divider|clock_division:mux_counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[22]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[21]~2\,
	combout => \clk_divider|clock_division:mux_counter[22]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[22]~2\);

-- Location: FF_X39_Y33_N13
\clk_divider|clock_division:mux_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[22]~q\);

-- Location: LCCOMB_X39_Y33_N14
\clk_divider|clock_division:mux_counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[23]~1_combout\ = (\clk_divider|clock_division:mux_counter[23]~q\ & (\clk_divider|clock_division:mux_counter[22]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[23]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[22]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[23]~2\ = CARRY((\clk_divider|clock_division:mux_counter[23]~q\ & !\clk_divider|clock_division:mux_counter[22]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[23]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[22]~2\,
	combout => \clk_divider|clock_division:mux_counter[23]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[23]~2\);

-- Location: FF_X39_Y33_N15
\clk_divider|clock_division:mux_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[23]~q\);

-- Location: LCCOMB_X39_Y33_N16
\clk_divider|clock_division:mux_counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[24]~1_combout\ = (\clk_divider|clock_division:mux_counter[24]~q\ & (!\clk_divider|clock_division:mux_counter[23]~2\)) # (!\clk_divider|clock_division:mux_counter[24]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[23]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[24]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[23]~2\) # (!\clk_divider|clock_division:mux_counter[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[24]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[23]~2\,
	combout => \clk_divider|clock_division:mux_counter[24]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[24]~2\);

-- Location: FF_X39_Y33_N17
\clk_divider|clock_division:mux_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[24]~q\);

-- Location: LCCOMB_X39_Y33_N18
\clk_divider|clock_division:mux_counter[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[25]~1_combout\ = (\clk_divider|clock_division:mux_counter[25]~q\ & (\clk_divider|clock_division:mux_counter[24]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[25]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[24]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[25]~2\ = CARRY((\clk_divider|clock_division:mux_counter[25]~q\ & !\clk_divider|clock_division:mux_counter[24]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[25]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[24]~2\,
	combout => \clk_divider|clock_division:mux_counter[25]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[25]~2\);

-- Location: FF_X39_Y33_N19
\clk_divider|clock_division:mux_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[25]~q\);

-- Location: LCCOMB_X39_Y33_N20
\clk_divider|clock_division:mux_counter[26]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[26]~1_combout\ = (\clk_divider|clock_division:mux_counter[26]~q\ & (!\clk_divider|clock_division:mux_counter[25]~2\)) # (!\clk_divider|clock_division:mux_counter[26]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[25]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[26]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[25]~2\) # (!\clk_divider|clock_division:mux_counter[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[26]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[25]~2\,
	combout => \clk_divider|clock_division:mux_counter[26]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[26]~2\);

-- Location: FF_X39_Y33_N21
\clk_divider|clock_division:mux_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[26]~q\);

-- Location: LCCOMB_X39_Y33_N22
\clk_divider|clock_division:mux_counter[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[27]~1_combout\ = (\clk_divider|clock_division:mux_counter[27]~q\ & (\clk_divider|clock_division:mux_counter[26]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[27]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[26]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[27]~2\ = CARRY((\clk_divider|clock_division:mux_counter[27]~q\ & !\clk_divider|clock_division:mux_counter[26]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[27]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[26]~2\,
	combout => \clk_divider|clock_division:mux_counter[27]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[27]~2\);

-- Location: FF_X39_Y33_N23
\clk_divider|clock_division:mux_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[27]~q\);

-- Location: LCCOMB_X38_Y33_N12
\clk_divider|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~7_combout\ = (!\clk_divider|clock_division:mux_counter[26]~q\ & (!\clk_divider|clock_division:mux_counter[25]~q\ & (!\clk_divider|clock_division:mux_counter[27]~q\ & !\clk_divider|clock_division:mux_counter[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[26]~q\,
	datab => \clk_divider|clock_division:mux_counter[25]~q\,
	datac => \clk_divider|clock_division:mux_counter[27]~q\,
	datad => \clk_divider|clock_division:mux_counter[24]~q\,
	combout => \clk_divider|Equal0~7_combout\);

-- Location: LCCOMB_X38_Y33_N8
\clk_divider|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~5_combout\ = (!\clk_divider|clock_division:mux_counter[17]~q\ & (!\clk_divider|clock_division:mux_counter[16]~q\ & (!\clk_divider|clock_division:mux_counter[18]~q\ & !\clk_divider|clock_division:mux_counter[19]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[17]~q\,
	datab => \clk_divider|clock_division:mux_counter[16]~q\,
	datac => \clk_divider|clock_division:mux_counter[18]~q\,
	datad => \clk_divider|clock_division:mux_counter[19]~q\,
	combout => \clk_divider|Equal0~5_combout\);

-- Location: LCCOMB_X38_Y33_N30
\clk_divider|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~6_combout\ = (!\clk_divider|clock_division:mux_counter[23]~q\ & (!\clk_divider|clock_division:mux_counter[20]~q\ & (!\clk_divider|clock_division:mux_counter[22]~q\ & !\clk_divider|clock_division:mux_counter[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[23]~q\,
	datab => \clk_divider|clock_division:mux_counter[20]~q\,
	datac => \clk_divider|clock_division:mux_counter[22]~q\,
	datad => \clk_divider|clock_division:mux_counter[21]~q\,
	combout => \clk_divider|Equal0~6_combout\);

-- Location: LCCOMB_X39_Y33_N24
\clk_divider|clock_division:mux_counter[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[28]~1_combout\ = (\clk_divider|clock_division:mux_counter[28]~q\ & (!\clk_divider|clock_division:mux_counter[27]~2\)) # (!\clk_divider|clock_division:mux_counter[28]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[27]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[28]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[27]~2\) # (!\clk_divider|clock_division:mux_counter[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[28]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[27]~2\,
	combout => \clk_divider|clock_division:mux_counter[28]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[28]~2\);

-- Location: FF_X39_Y33_N25
\clk_divider|clock_division:mux_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[28]~q\);

-- Location: LCCOMB_X39_Y33_N26
\clk_divider|clock_division:mux_counter[29]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[29]~1_combout\ = (\clk_divider|clock_division:mux_counter[29]~q\ & (\clk_divider|clock_division:mux_counter[28]~2\ $ (GND))) # (!\clk_divider|clock_division:mux_counter[29]~q\ & 
-- (!\clk_divider|clock_division:mux_counter[28]~2\ & VCC))
-- \clk_divider|clock_division:mux_counter[29]~2\ = CARRY((\clk_divider|clock_division:mux_counter[29]~q\ & !\clk_divider|clock_division:mux_counter[28]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[29]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[28]~2\,
	combout => \clk_divider|clock_division:mux_counter[29]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[29]~2\);

-- Location: FF_X39_Y33_N27
\clk_divider|clock_division:mux_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[29]~q\);

-- Location: LCCOMB_X39_Y33_N28
\clk_divider|clock_division:mux_counter[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[30]~1_combout\ = (\clk_divider|clock_division:mux_counter[30]~q\ & (!\clk_divider|clock_division:mux_counter[29]~2\)) # (!\clk_divider|clock_division:mux_counter[30]~q\ & 
-- ((\clk_divider|clock_division:mux_counter[29]~2\) # (GND)))
-- \clk_divider|clock_division:mux_counter[30]~2\ = CARRY((!\clk_divider|clock_division:mux_counter[29]~2\) # (!\clk_divider|clock_division:mux_counter[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[30]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:mux_counter[29]~2\,
	combout => \clk_divider|clock_division:mux_counter[30]~1_combout\,
	cout => \clk_divider|clock_division:mux_counter[30]~2\);

-- Location: FF_X39_Y33_N29
\clk_divider|clock_division:mux_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[30]~q\);

-- Location: LCCOMB_X39_Y33_N30
\clk_divider|clock_division:mux_counter[31]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:mux_counter[31]~1_combout\ = \clk_divider|clock_division:mux_counter[31]~q\ $ (!\clk_divider|clock_division:mux_counter[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[31]~q\,
	cin => \clk_divider|clock_division:mux_counter[30]~2\,
	combout => \clk_divider|clock_division:mux_counter[31]~1_combout\);

-- Location: FF_X39_Y33_N31
\clk_divider|clock_division:mux_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:mux_counter[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:mux_counter[31]~q\);

-- Location: LCCOMB_X38_Y33_N10
\clk_divider|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~8_combout\ = (!\clk_divider|clock_division:mux_counter[29]~q\ & (!\clk_divider|clock_division:mux_counter[28]~q\ & (!\clk_divider|clock_division:mux_counter[31]~q\ & !\clk_divider|clock_division:mux_counter[30]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[29]~q\,
	datab => \clk_divider|clock_division:mux_counter[28]~q\,
	datac => \clk_divider|clock_division:mux_counter[31]~q\,
	datad => \clk_divider|clock_division:mux_counter[30]~q\,
	combout => \clk_divider|Equal0~8_combout\);

-- Location: LCCOMB_X38_Y33_N0
\clk_divider|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~9_combout\ = (\clk_divider|Equal0~7_combout\ & (\clk_divider|Equal0~5_combout\ & (\clk_divider|Equal0~6_combout\ & \clk_divider|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~7_combout\,
	datab => \clk_divider|Equal0~5_combout\,
	datac => \clk_divider|Equal0~6_combout\,
	datad => \clk_divider|Equal0~8_combout\,
	combout => \clk_divider|Equal0~9_combout\);

-- Location: LCCOMB_X40_Y34_N10
\clk_divider|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~0_combout\ = (!\clk_divider|clock_division:mux_counter[0]~q\ & (!\clk_divider|clock_division:mux_counter[2]~q\ & !\clk_divider|clock_division:mux_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[0]~q\,
	datac => \clk_divider|clock_division:mux_counter[2]~q\,
	datad => \clk_divider|clock_division:mux_counter[1]~q\,
	combout => \clk_divider|Equal0~0_combout\);

-- Location: LCCOMB_X40_Y34_N20
\clk_divider|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~1_combout\ = (\clk_divider|clock_division:mux_counter[7]~q\ & (!\clk_divider|clock_division:mux_counter[4]~q\ & (!\clk_divider|clock_division:mux_counter[6]~q\ & \clk_divider|clock_division:mux_counter[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[7]~q\,
	datab => \clk_divider|clock_division:mux_counter[4]~q\,
	datac => \clk_divider|clock_division:mux_counter[6]~q\,
	datad => \clk_divider|clock_division:mux_counter[5]~q\,
	combout => \clk_divider|Equal0~1_combout\);

-- Location: LCCOMB_X40_Y34_N18
\clk_divider|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~2_combout\ = (\clk_divider|Equal0~0_combout\ & (\clk_divider|clock_division:mux_counter[3]~q\ & \clk_divider|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~0_combout\,
	datac => \clk_divider|clock_division:mux_counter[3]~q\,
	datad => \clk_divider|Equal0~1_combout\,
	combout => \clk_divider|Equal0~2_combout\);

-- Location: LCCOMB_X39_Y34_N0
\clk_divider|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal0~10_combout\ = (\clk_divider|Equal0~3_combout\ & (\clk_divider|Equal0~4_combout\ & (\clk_divider|Equal0~9_combout\ & \clk_divider|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal0~3_combout\,
	datab => \clk_divider|Equal0~4_combout\,
	datac => \clk_divider|Equal0~9_combout\,
	datad => \clk_divider|Equal0~2_combout\,
	combout => \clk_divider|Equal0~10_combout\);

-- Location: LCCOMB_X30_Y34_N20
\clk_divider|mux_clkout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|mux_clkout~0_combout\ = \clk_divider|clock_division:mux_clkout~q\ $ (\clk_divider|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_clkout~q\,
	datad => \clk_divider|Equal0~10_combout\,
	combout => \clk_divider|mux_clkout~0_combout\);

-- Location: LCCOMB_X30_Y34_N0
\clk_divider|mux_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|mux_clk~feeder_combout\ = \clk_divider|mux_clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|mux_clkout~0_combout\,
	combout => \clk_divider|mux_clk~feeder_combout\);

-- Location: FF_X30_Y34_N1
\clk_divider|mux_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|mux_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|mux_clk~q\);

-- Location: CLKCTRL_G14
\clk_divider|mux_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider|mux_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider|mux_clk~clkctrl_outclk\);

-- Location: FF_X40_Y34_N25
\clk_divider|clock_division:scroll_clkout\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|scroll_clkout~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_clkout~q\);

-- Location: LCCOMB_X41_Y34_N2
\clk_divider|clock_division:scroll_counter[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[3]~2_cout\ = CARRY((\clk_divider|clock_division:mux_counter[0]~q\ & \clk_divider|clock_division:mux_counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:mux_counter[0]~q\,
	datab => \clk_divider|clock_division:mux_counter[1]~q\,
	datad => VCC,
	cout => \clk_divider|clock_division:scroll_counter[3]~2_cout\);

-- Location: LCCOMB_X41_Y34_N4
\clk_divider|clock_division:scroll_counter[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[3]~4_cout\ = CARRY((!\clk_divider|clock_division:scroll_counter[3]~2_cout\) # (!\clk_divider|clock_division:mux_counter[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:mux_counter[2]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[3]~2_cout\,
	cout => \clk_divider|clock_division:scroll_counter[3]~4_cout\);

-- Location: LCCOMB_X41_Y34_N6
\clk_divider|clock_division:scroll_counter[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[3]~5_combout\ = (\clk_divider|clock_division:scroll_counter[3]~q\ & (\clk_divider|clock_division:scroll_counter[3]~4_cout\ $ (GND))) # (!\clk_divider|clock_division:scroll_counter[3]~q\ & 
-- (!\clk_divider|clock_division:scroll_counter[3]~4_cout\ & VCC))
-- \clk_divider|clock_division:scroll_counter[3]~6\ = CARRY((\clk_divider|clock_division:scroll_counter[3]~q\ & !\clk_divider|clock_division:scroll_counter[3]~4_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[3]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[3]~4_cout\,
	combout => \clk_divider|clock_division:scroll_counter[3]~5_combout\,
	cout => \clk_divider|clock_division:scroll_counter[3]~6\);

-- Location: FF_X41_Y34_N7
\clk_divider|clock_division:scroll_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[3]~q\);

-- Location: LCCOMB_X41_Y34_N8
\clk_divider|clock_division:scroll_counter[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[4]~1_combout\ = (\clk_divider|clock_division:scroll_counter[4]~q\ & (!\clk_divider|clock_division:scroll_counter[3]~6\)) # (!\clk_divider|clock_division:scroll_counter[4]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[3]~6\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[4]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[3]~6\) # (!\clk_divider|clock_division:scroll_counter[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[4]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[3]~6\,
	combout => \clk_divider|clock_division:scroll_counter[4]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[4]~2\);

-- Location: FF_X41_Y34_N9
\clk_divider|clock_division:scroll_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[4]~q\);

-- Location: LCCOMB_X41_Y34_N10
\clk_divider|clock_division:scroll_counter[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[5]~1_combout\ = (\clk_divider|clock_division:scroll_counter[4]~2\ & (\clk_divider|clock_division:scroll_counter[5]~q\ & (!\clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[4]~2\ & ((((\clk_divider|clock_division:scroll_counter[5]~q\ & !\clk_divider|Equal1~9_combout\)))))
-- \clk_divider|clock_division:scroll_counter[5]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[5]~q\ & (!\clk_divider|Equal1~9_combout\ & !\clk_divider|clock_division:scroll_counter[4]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[5]~q\,
	datab => \clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[4]~2\,
	combout => \clk_divider|clock_division:scroll_counter[5]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[5]~2\);

-- Location: FF_X41_Y34_N11
\clk_divider|clock_division:scroll_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[5]~q\);

-- Location: LCCOMB_X41_Y34_N12
\clk_divider|clock_division:scroll_counter[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[6]~1_combout\ = (\clk_divider|clock_division:scroll_counter[6]~q\ & (!\clk_divider|clock_division:scroll_counter[5]~2\)) # (!\clk_divider|clock_division:scroll_counter[6]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[5]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[6]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[5]~2\) # (!\clk_divider|clock_division:scroll_counter[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[6]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[5]~2\,
	combout => \clk_divider|clock_division:scroll_counter[6]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[6]~2\);

-- Location: FF_X41_Y34_N13
\clk_divider|clock_division:scroll_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[6]~q\);

-- Location: LCCOMB_X41_Y34_N14
\clk_divider|clock_division:scroll_counter[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[7]~1_combout\ = (\clk_divider|clock_division:scroll_counter[7]~q\ & (\clk_divider|clock_division:scroll_counter[6]~2\ $ (GND))) # (!\clk_divider|clock_division:scroll_counter[7]~q\ & 
-- (!\clk_divider|clock_division:scroll_counter[6]~2\ & VCC))
-- \clk_divider|clock_division:scroll_counter[7]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[7]~q\ & !\clk_divider|clock_division:scroll_counter[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[7]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[6]~2\,
	combout => \clk_divider|clock_division:scroll_counter[7]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[7]~2\);

-- Location: FF_X41_Y34_N15
\clk_divider|clock_division:scroll_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[7]~q\);

-- Location: LCCOMB_X41_Y34_N16
\clk_divider|clock_division:scroll_counter[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[8]~1_combout\ = (\clk_divider|clock_division:scroll_counter[8]~q\ & (!\clk_divider|clock_division:scroll_counter[7]~2\)) # (!\clk_divider|clock_division:scroll_counter[8]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[7]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[8]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[7]~2\) # (!\clk_divider|clock_division:scroll_counter[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[8]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[7]~2\,
	combout => \clk_divider|clock_division:scroll_counter[8]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[8]~2\);

-- Location: FF_X41_Y34_N17
\clk_divider|clock_division:scroll_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[8]~q\);

-- Location: LCCOMB_X41_Y34_N18
\clk_divider|clock_division:scroll_counter[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[9]~1_combout\ = (\clk_divider|clock_division:scroll_counter[9]~q\ & (\clk_divider|clock_division:scroll_counter[8]~2\ $ (GND))) # (!\clk_divider|clock_division:scroll_counter[9]~q\ & 
-- (!\clk_divider|clock_division:scroll_counter[8]~2\ & VCC))
-- \clk_divider|clock_division:scroll_counter[9]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[9]~q\ & !\clk_divider|clock_division:scroll_counter[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[9]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[8]~2\,
	combout => \clk_divider|clock_division:scroll_counter[9]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[9]~2\);

-- Location: FF_X41_Y34_N19
\clk_divider|clock_division:scroll_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[9]~q\);

-- Location: LCCOMB_X41_Y34_N20
\clk_divider|clock_division:scroll_counter[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[10]~1_combout\ = (\clk_divider|clock_division:scroll_counter[9]~2\ & (((\clk_divider|Equal1~9_combout\)) # (!\clk_divider|clock_division:scroll_counter[10]~q\))) # 
-- (!\clk_divider|clock_division:scroll_counter[9]~2\ & (((\clk_divider|clock_division:scroll_counter[10]~q\ & !\clk_divider|Equal1~9_combout\)) # (GND)))
-- \clk_divider|clock_division:scroll_counter[10]~2\ = CARRY(((\clk_divider|Equal1~9_combout\) # (!\clk_divider|clock_division:scroll_counter[9]~2\)) # (!\clk_divider|clock_division:scroll_counter[10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[10]~q\,
	datab => \clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[9]~2\,
	combout => \clk_divider|clock_division:scroll_counter[10]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[10]~2\);

-- Location: FF_X41_Y34_N21
\clk_divider|clock_division:scroll_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[10]~q\);

-- Location: LCCOMB_X41_Y34_N22
\clk_divider|clock_division:scroll_counter[11]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[11]~1_combout\ = (\clk_divider|clock_division:scroll_counter[10]~2\ & (\clk_divider|clock_division:scroll_counter[11]~q\ & (!\clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[10]~2\ & ((((\clk_divider|clock_division:scroll_counter[11]~q\ & !\clk_divider|Equal1~9_combout\)))))
-- \clk_divider|clock_division:scroll_counter[11]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[11]~q\ & (!\clk_divider|Equal1~9_combout\ & !\clk_divider|clock_division:scroll_counter[10]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[11]~q\,
	datab => \clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[10]~2\,
	combout => \clk_divider|clock_division:scroll_counter[11]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[11]~2\);

-- Location: FF_X41_Y34_N23
\clk_divider|clock_division:scroll_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[11]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[11]~q\);

-- Location: LCCOMB_X41_Y34_N24
\clk_divider|clock_division:scroll_counter[12]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[12]~1_combout\ = (\clk_divider|clock_division:scroll_counter[11]~2\ & (((\clk_divider|Equal1~9_combout\)) # (!\clk_divider|clock_division:scroll_counter[12]~q\))) # 
-- (!\clk_divider|clock_division:scroll_counter[11]~2\ & (((\clk_divider|clock_division:scroll_counter[12]~q\ & !\clk_divider|Equal1~9_combout\)) # (GND)))
-- \clk_divider|clock_division:scroll_counter[12]~2\ = CARRY(((\clk_divider|Equal1~9_combout\) # (!\clk_divider|clock_division:scroll_counter[11]~2\)) # (!\clk_divider|clock_division:scroll_counter[12]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[12]~q\,
	datab => \clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[11]~2\,
	combout => \clk_divider|clock_division:scroll_counter[12]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[12]~2\);

-- Location: FF_X41_Y34_N25
\clk_divider|clock_division:scroll_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[12]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[12]~q\);

-- Location: LCCOMB_X41_Y34_N26
\clk_divider|clock_division:scroll_counter[13]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[13]~1_combout\ = (\clk_divider|clock_division:scroll_counter[12]~2\ & (\clk_divider|clock_division:scroll_counter[13]~q\ & (!\clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[12]~2\ & ((((\clk_divider|clock_division:scroll_counter[13]~q\ & !\clk_divider|Equal1~9_combout\)))))
-- \clk_divider|clock_division:scroll_counter[13]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[13]~q\ & (!\clk_divider|Equal1~9_combout\ & !\clk_divider|clock_division:scroll_counter[12]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[13]~q\,
	datab => \clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[12]~2\,
	combout => \clk_divider|clock_division:scroll_counter[13]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[13]~2\);

-- Location: FF_X41_Y34_N27
\clk_divider|clock_division:scroll_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[13]~q\);

-- Location: LCCOMB_X41_Y34_N28
\clk_divider|clock_division:scroll_counter[14]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[14]~1_combout\ = (\clk_divider|clock_division:scroll_counter[14]~q\ & (!\clk_divider|clock_division:scroll_counter[13]~2\)) # (!\clk_divider|clock_division:scroll_counter[14]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[13]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[14]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[13]~2\) # (!\clk_divider|clock_division:scroll_counter[14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[14]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[13]~2\,
	combout => \clk_divider|clock_division:scroll_counter[14]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[14]~2\);

-- Location: FF_X41_Y34_N29
\clk_divider|clock_division:scroll_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[14]~q\);

-- Location: LCCOMB_X41_Y34_N30
\clk_divider|clock_division:scroll_counter[15]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[15]~1_combout\ = (\clk_divider|clock_division:scroll_counter[14]~2\ & (\clk_divider|clock_division:scroll_counter[15]~q\ & (!\clk_divider|Equal1~9_combout\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[14]~2\ & ((((\clk_divider|clock_division:scroll_counter[15]~q\ & !\clk_divider|Equal1~9_combout\)))))
-- \clk_divider|clock_division:scroll_counter[15]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[15]~q\ & (!\clk_divider|Equal1~9_combout\ & !\clk_divider|clock_division:scroll_counter[14]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[15]~q\,
	datab => \clk_divider|Equal1~9_combout\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[14]~2\,
	combout => \clk_divider|clock_division:scroll_counter[15]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[15]~2\);

-- Location: FF_X41_Y34_N31
\clk_divider|clock_division:scroll_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[15]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[15]~q\);

-- Location: LCCOMB_X41_Y34_N0
\clk_divider|Equal1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~3_combout\ = (\clk_divider|clock_division:scroll_counter[15]~q\ & (!\clk_divider|clock_division:scroll_counter[14]~q\ & (\clk_divider|clock_division:scroll_counter[13]~q\ & \clk_divider|clock_division:scroll_counter[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[15]~q\,
	datab => \clk_divider|clock_division:scroll_counter[14]~q\,
	datac => \clk_divider|clock_division:scroll_counter[13]~q\,
	datad => \clk_divider|clock_division:scroll_counter[12]~q\,
	combout => \clk_divider|Equal1~3_combout\);

-- Location: LCCOMB_X40_Y34_N14
\clk_divider|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~2_combout\ = (!\clk_divider|clock_division:scroll_counter[9]~q\ & (\clk_divider|clock_division:scroll_counter[11]~q\ & (\clk_divider|clock_division:scroll_counter[10]~q\ & !\clk_divider|clock_division:scroll_counter[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[9]~q\,
	datab => \clk_divider|clock_division:scroll_counter[11]~q\,
	datac => \clk_divider|clock_division:scroll_counter[10]~q\,
	datad => \clk_divider|clock_division:scroll_counter[8]~q\,
	combout => \clk_divider|Equal1~2_combout\);

-- Location: LCCOMB_X40_Y34_N22
\clk_divider|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~0_combout\ = (!\clk_divider|clock_division:scroll_counter[7]~q\ & (!\clk_divider|clock_division:scroll_counter[6]~q\ & (\clk_divider|clock_division:scroll_counter[5]~q\ & !\clk_divider|clock_division:scroll_counter[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[7]~q\,
	datab => \clk_divider|clock_division:scroll_counter[6]~q\,
	datac => \clk_divider|clock_division:scroll_counter[5]~q\,
	datad => \clk_divider|clock_division:scroll_counter[4]~q\,
	combout => \clk_divider|Equal1~0_combout\);

-- Location: LCCOMB_X40_Y34_N8
\clk_divider|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~1_combout\ = (!\clk_divider|clock_division:scroll_counter[3]~q\ & (\clk_divider|Equal1~0_combout\ & \clk_divider|Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[3]~q\,
	datac => \clk_divider|Equal1~0_combout\,
	datad => \clk_divider|Equal0~0_combout\,
	combout => \clk_divider|Equal1~1_combout\);

-- Location: LCCOMB_X41_Y33_N0
\clk_divider|clock_division:scroll_counter[16]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[16]~1_combout\ = (\clk_divider|clock_division:scroll_counter[16]~q\ & (!\clk_divider|clock_division:scroll_counter[15]~2\)) # (!\clk_divider|clock_division:scroll_counter[16]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[15]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[16]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[15]~2\) # (!\clk_divider|clock_division:scroll_counter[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[16]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[15]~2\,
	combout => \clk_divider|clock_division:scroll_counter[16]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[16]~2\);

-- Location: FF_X41_Y33_N1
\clk_divider|clock_division:scroll_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[16]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[16]~q\);

-- Location: LCCOMB_X41_Y33_N2
\clk_divider|clock_division:scroll_counter[17]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[17]~1_combout\ = (\clk_divider|clock_division:scroll_counter[16]~2\ & (!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[17]~q\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[16]~2\ & ((((!\clk_divider|Equal1~9_combout\ & \clk_divider|clock_division:scroll_counter[17]~q\)))))
-- \clk_divider|clock_division:scroll_counter[17]~2\ = CARRY((!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[17]~q\ & !\clk_divider|clock_division:scroll_counter[16]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~9_combout\,
	datab => \clk_divider|clock_division:scroll_counter[17]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[16]~2\,
	combout => \clk_divider|clock_division:scroll_counter[17]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[17]~2\);

-- Location: FF_X41_Y33_N3
\clk_divider|clock_division:scroll_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[17]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[17]~q\);

-- Location: LCCOMB_X41_Y33_N4
\clk_divider|clock_division:scroll_counter[18]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[18]~1_combout\ = (\clk_divider|clock_division:scroll_counter[17]~2\ & ((\clk_divider|Equal1~9_combout\) # ((!\clk_divider|clock_division:scroll_counter[18]~q\)))) # 
-- (!\clk_divider|clock_division:scroll_counter[17]~2\ & (((!\clk_divider|Equal1~9_combout\ & \clk_divider|clock_division:scroll_counter[18]~q\)) # (GND)))
-- \clk_divider|clock_division:scroll_counter[18]~2\ = CARRY((\clk_divider|Equal1~9_combout\) # ((!\clk_divider|clock_division:scroll_counter[17]~2\) # (!\clk_divider|clock_division:scroll_counter[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~9_combout\,
	datab => \clk_divider|clock_division:scroll_counter[18]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[17]~2\,
	combout => \clk_divider|clock_division:scroll_counter[18]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[18]~2\);

-- Location: FF_X41_Y33_N5
\clk_divider|clock_division:scroll_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[18]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[18]~q\);

-- Location: LCCOMB_X41_Y33_N6
\clk_divider|clock_division:scroll_counter[19]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[19]~1_combout\ = (\clk_divider|clock_division:scroll_counter[18]~2\ & (!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[19]~q\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[18]~2\ & ((((!\clk_divider|Equal1~9_combout\ & \clk_divider|clock_division:scroll_counter[19]~q\)))))
-- \clk_divider|clock_division:scroll_counter[19]~2\ = CARRY((!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[19]~q\ & !\clk_divider|clock_division:scroll_counter[18]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~9_combout\,
	datab => \clk_divider|clock_division:scroll_counter[19]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[18]~2\,
	combout => \clk_divider|clock_division:scroll_counter[19]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[19]~2\);

-- Location: FF_X41_Y33_N7
\clk_divider|clock_division:scroll_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[19]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[19]~q\);

-- Location: LCCOMB_X41_Y33_N8
\clk_divider|clock_division:scroll_counter[20]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[20]~1_combout\ = (\clk_divider|clock_division:scroll_counter[19]~2\ & ((\clk_divider|Equal1~9_combout\) # ((!\clk_divider|clock_division:scroll_counter[20]~q\)))) # 
-- (!\clk_divider|clock_division:scroll_counter[19]~2\ & (((!\clk_divider|Equal1~9_combout\ & \clk_divider|clock_division:scroll_counter[20]~q\)) # (GND)))
-- \clk_divider|clock_division:scroll_counter[20]~2\ = CARRY((\clk_divider|Equal1~9_combout\) # ((!\clk_divider|clock_division:scroll_counter[19]~2\) # (!\clk_divider|clock_division:scroll_counter[20]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~9_combout\,
	datab => \clk_divider|clock_division:scroll_counter[20]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[19]~2\,
	combout => \clk_divider|clock_division:scroll_counter[20]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[20]~2\);

-- Location: FF_X41_Y33_N9
\clk_divider|clock_division:scroll_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[20]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[20]~q\);

-- Location: LCCOMB_X41_Y33_N10
\clk_divider|clock_division:scroll_counter[21]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[21]~1_combout\ = (\clk_divider|clock_division:scroll_counter[20]~2\ & (!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[21]~q\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[20]~2\ & ((((!\clk_divider|Equal1~9_combout\ & \clk_divider|clock_division:scroll_counter[21]~q\)))))
-- \clk_divider|clock_division:scroll_counter[21]~2\ = CARRY((!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[21]~q\ & !\clk_divider|clock_division:scroll_counter[20]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~9_combout\,
	datab => \clk_divider|clock_division:scroll_counter[21]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[20]~2\,
	combout => \clk_divider|clock_division:scroll_counter[21]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[21]~2\);

-- Location: FF_X41_Y33_N11
\clk_divider|clock_division:scroll_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[21]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[21]~q\);

-- Location: LCCOMB_X41_Y33_N12
\clk_divider|clock_division:scroll_counter[22]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[22]~1_combout\ = (\clk_divider|clock_division:scroll_counter[22]~q\ & (!\clk_divider|clock_division:scroll_counter[21]~2\)) # (!\clk_divider|clock_division:scroll_counter[22]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[21]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[22]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[21]~2\) # (!\clk_divider|clock_division:scroll_counter[22]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[22]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[21]~2\,
	combout => \clk_divider|clock_division:scroll_counter[22]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[22]~2\);

-- Location: FF_X41_Y33_N13
\clk_divider|clock_division:scroll_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[22]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[22]~q\);

-- Location: LCCOMB_X41_Y33_N14
\clk_divider|clock_division:scroll_counter[23]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[23]~1_combout\ = (\clk_divider|clock_division:scroll_counter[22]~2\ & (!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[23]~q\ & VCC))) # 
-- (!\clk_divider|clock_division:scroll_counter[22]~2\ & ((((!\clk_divider|Equal1~9_combout\ & \clk_divider|clock_division:scroll_counter[23]~q\)))))
-- \clk_divider|clock_division:scroll_counter[23]~2\ = CARRY((!\clk_divider|Equal1~9_combout\ & (\clk_divider|clock_division:scroll_counter[23]~q\ & !\clk_divider|clock_division:scroll_counter[22]~2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~9_combout\,
	datab => \clk_divider|clock_division:scroll_counter[23]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[22]~2\,
	combout => \clk_divider|clock_division:scroll_counter[23]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[23]~2\);

-- Location: FF_X41_Y33_N15
\clk_divider|clock_division:scroll_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[23]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[23]~q\);

-- Location: LCCOMB_X40_Y34_N26
\clk_divider|Equal1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~5_combout\ = (\clk_divider|clock_division:scroll_counter[20]~q\ & (\clk_divider|clock_division:scroll_counter[21]~q\ & (!\clk_divider|clock_division:scroll_counter[22]~q\ & \clk_divider|clock_division:scroll_counter[23]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[20]~q\,
	datab => \clk_divider|clock_division:scroll_counter[21]~q\,
	datac => \clk_divider|clock_division:scroll_counter[22]~q\,
	datad => \clk_divider|clock_division:scroll_counter[23]~q\,
	combout => \clk_divider|Equal1~5_combout\);

-- Location: LCCOMB_X40_Y34_N4
\clk_divider|Equal1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~4_combout\ = (\clk_divider|clock_division:scroll_counter[18]~q\ & (\clk_divider|clock_division:scroll_counter[19]~q\ & (!\clk_divider|clock_division:scroll_counter[16]~q\ & \clk_divider|clock_division:scroll_counter[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[18]~q\,
	datab => \clk_divider|clock_division:scroll_counter[19]~q\,
	datac => \clk_divider|clock_division:scroll_counter[16]~q\,
	datad => \clk_divider|clock_division:scroll_counter[17]~q\,
	combout => \clk_divider|Equal1~4_combout\);

-- Location: LCCOMB_X41_Y33_N16
\clk_divider|clock_division:scroll_counter[24]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[24]~1_combout\ = (\clk_divider|clock_division:scroll_counter[24]~q\ & (!\clk_divider|clock_division:scroll_counter[23]~2\)) # (!\clk_divider|clock_division:scroll_counter[24]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[23]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[24]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[23]~2\) # (!\clk_divider|clock_division:scroll_counter[24]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[24]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[23]~2\,
	combout => \clk_divider|clock_division:scroll_counter[24]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[24]~2\);

-- Location: FF_X41_Y33_N17
\clk_divider|clock_division:scroll_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[24]~q\);

-- Location: LCCOMB_X41_Y33_N18
\clk_divider|clock_division:scroll_counter[25]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[25]~1_combout\ = (\clk_divider|clock_division:scroll_counter[25]~q\ & (\clk_divider|clock_division:scroll_counter[24]~2\ $ (GND))) # (!\clk_divider|clock_division:scroll_counter[25]~q\ & 
-- (!\clk_divider|clock_division:scroll_counter[24]~2\ & VCC))
-- \clk_divider|clock_division:scroll_counter[25]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[25]~q\ & !\clk_divider|clock_division:scroll_counter[24]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[25]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[24]~2\,
	combout => \clk_divider|clock_division:scroll_counter[25]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[25]~2\);

-- Location: FF_X41_Y33_N19
\clk_divider|clock_division:scroll_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[25]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[25]~q\);

-- Location: LCCOMB_X41_Y33_N20
\clk_divider|clock_division:scroll_counter[26]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[26]~1_combout\ = (\clk_divider|clock_division:scroll_counter[26]~q\ & (!\clk_divider|clock_division:scroll_counter[25]~2\)) # (!\clk_divider|clock_division:scroll_counter[26]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[25]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[26]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[25]~2\) # (!\clk_divider|clock_division:scroll_counter[26]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[26]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[25]~2\,
	combout => \clk_divider|clock_division:scroll_counter[26]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[26]~2\);

-- Location: FF_X41_Y33_N21
\clk_divider|clock_division:scroll_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[26]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[26]~q\);

-- Location: LCCOMB_X41_Y33_N22
\clk_divider|clock_division:scroll_counter[27]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[27]~1_combout\ = (\clk_divider|clock_division:scroll_counter[27]~q\ & (\clk_divider|clock_division:scroll_counter[26]~2\ $ (GND))) # (!\clk_divider|clock_division:scroll_counter[27]~q\ & 
-- (!\clk_divider|clock_division:scroll_counter[26]~2\ & VCC))
-- \clk_divider|clock_division:scroll_counter[27]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[27]~q\ & !\clk_divider|clock_division:scroll_counter[26]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[27]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[26]~2\,
	combout => \clk_divider|clock_division:scroll_counter[27]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[27]~2\);

-- Location: FF_X41_Y33_N23
\clk_divider|clock_division:scroll_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[27]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[27]~q\);

-- Location: LCCOMB_X41_Y33_N24
\clk_divider|clock_division:scroll_counter[28]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[28]~1_combout\ = (\clk_divider|clock_division:scroll_counter[28]~q\ & (!\clk_divider|clock_division:scroll_counter[27]~2\)) # (!\clk_divider|clock_division:scroll_counter[28]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[27]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[28]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[27]~2\) # (!\clk_divider|clock_division:scroll_counter[28]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[28]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[27]~2\,
	combout => \clk_divider|clock_division:scroll_counter[28]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[28]~2\);

-- Location: FF_X41_Y33_N25
\clk_divider|clock_division:scroll_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[28]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[28]~q\);

-- Location: LCCOMB_X41_Y33_N26
\clk_divider|clock_division:scroll_counter[29]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[29]~1_combout\ = (\clk_divider|clock_division:scroll_counter[29]~q\ & (\clk_divider|clock_division:scroll_counter[28]~2\ $ (GND))) # (!\clk_divider|clock_division:scroll_counter[29]~q\ & 
-- (!\clk_divider|clock_division:scroll_counter[28]~2\ & VCC))
-- \clk_divider|clock_division:scroll_counter[29]~2\ = CARRY((\clk_divider|clock_division:scroll_counter[29]~q\ & !\clk_divider|clock_division:scroll_counter[28]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[29]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[28]~2\,
	combout => \clk_divider|clock_division:scroll_counter[29]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[29]~2\);

-- Location: FF_X41_Y33_N27
\clk_divider|clock_division:scroll_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[29]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[29]~q\);

-- Location: LCCOMB_X41_Y33_N28
\clk_divider|clock_division:scroll_counter[30]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[30]~1_combout\ = (\clk_divider|clock_division:scroll_counter[30]~q\ & (!\clk_divider|clock_division:scroll_counter[29]~2\)) # (!\clk_divider|clock_division:scroll_counter[30]~q\ & 
-- ((\clk_divider|clock_division:scroll_counter[29]~2\) # (GND)))
-- \clk_divider|clock_division:scroll_counter[30]~2\ = CARRY((!\clk_divider|clock_division:scroll_counter[29]~2\) # (!\clk_divider|clock_division:scroll_counter[30]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \clk_divider|clock_division:scroll_counter[30]~q\,
	datad => VCC,
	cin => \clk_divider|clock_division:scroll_counter[29]~2\,
	combout => \clk_divider|clock_division:scroll_counter[30]~1_combout\,
	cout => \clk_divider|clock_division:scroll_counter[30]~2\);

-- Location: FF_X41_Y33_N29
\clk_divider|clock_division:scroll_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[30]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[30]~q\);

-- Location: LCCOMB_X41_Y33_N30
\clk_divider|clock_division:scroll_counter[31]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|clock_division:scroll_counter[31]~1_combout\ = \clk_divider|clock_division:scroll_counter[31]~q\ $ (!\clk_divider|clock_division:scroll_counter[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[31]~q\,
	cin => \clk_divider|clock_division:scroll_counter[30]~2\,
	combout => \clk_divider|clock_division:scroll_counter[31]~1_combout\);

-- Location: FF_X41_Y33_N31
\clk_divider|clock_division:scroll_counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|clock_division:scroll_counter[31]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|clock_division:scroll_counter[31]~q\);

-- Location: LCCOMB_X40_Y34_N30
\clk_divider|Equal1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~7_combout\ = (!\clk_divider|clock_division:scroll_counter[28]~q\ & (!\clk_divider|clock_division:scroll_counter[31]~q\ & (!\clk_divider|clock_division:scroll_counter[30]~q\ & !\clk_divider|clock_division:scroll_counter[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[28]~q\,
	datab => \clk_divider|clock_division:scroll_counter[31]~q\,
	datac => \clk_divider|clock_division:scroll_counter[30]~q\,
	datad => \clk_divider|clock_division:scroll_counter[29]~q\,
	combout => \clk_divider|Equal1~7_combout\);

-- Location: LCCOMB_X40_Y34_N28
\clk_divider|Equal1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~6_combout\ = (!\clk_divider|clock_division:scroll_counter[27]~q\ & (!\clk_divider|clock_division:scroll_counter[24]~q\ & (!\clk_divider|clock_division:scroll_counter[26]~q\ & !\clk_divider|clock_division:scroll_counter[25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|clock_division:scroll_counter[27]~q\,
	datab => \clk_divider|clock_division:scroll_counter[24]~q\,
	datac => \clk_divider|clock_division:scroll_counter[26]~q\,
	datad => \clk_divider|clock_division:scroll_counter[25]~q\,
	combout => \clk_divider|Equal1~6_combout\);

-- Location: LCCOMB_X40_Y34_N12
\clk_divider|Equal1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~8_combout\ = (\clk_divider|Equal1~5_combout\ & (\clk_divider|Equal1~4_combout\ & (\clk_divider|Equal1~7_combout\ & \clk_divider|Equal1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~5_combout\,
	datab => \clk_divider|Equal1~4_combout\,
	datac => \clk_divider|Equal1~7_combout\,
	datad => \clk_divider|Equal1~6_combout\,
	combout => \clk_divider|Equal1~8_combout\);

-- Location: LCCOMB_X40_Y34_N6
\clk_divider|Equal1~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|Equal1~9_combout\ = (\clk_divider|Equal1~3_combout\ & (\clk_divider|Equal1~2_combout\ & (\clk_divider|Equal1~1_combout\ & \clk_divider|Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \clk_divider|Equal1~3_combout\,
	datab => \clk_divider|Equal1~2_combout\,
	datac => \clk_divider|Equal1~1_combout\,
	datad => \clk_divider|Equal1~8_combout\,
	combout => \clk_divider|Equal1~9_combout\);

-- Location: LCCOMB_X40_Y34_N24
\clk_divider|scroll_clkout~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|scroll_clkout~0_combout\ = \clk_divider|clock_division:scroll_clkout~q\ $ (\clk_divider|Equal1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_divider|clock_division:scroll_clkout~q\,
	datad => \clk_divider|Equal1~9_combout\,
	combout => \clk_divider|scroll_clkout~0_combout\);

-- Location: LCCOMB_X27_Y34_N28
\clk_divider|scroll_clk~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \clk_divider|scroll_clk~feeder_combout\ = \clk_divider|scroll_clkout~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \clk_divider|scroll_clkout~0_combout\,
	combout => \clk_divider|scroll_clk~feeder_combout\);

-- Location: FF_X27_Y34_N29
\clk_divider|scroll_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_divider|scroll_clk~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_divider|scroll_clk~q\);

-- Location: CLKCTRL_G10
\clk_divider|scroll_clk~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_divider|scroll_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_divider|scroll_clk~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y19_N2
\scrolling:i[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scrolling:i[0]~0_combout\ = !\scrolling:i[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \scrolling:i[0]~q\,
	combout => \scrolling:i[0]~0_combout\);

-- Location: IOIBUF_X53_Y0_N1
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

-- Location: IOIBUF_X40_Y0_N1
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

-- Location: LCCOMB_X11_Y19_N30
\scrolling~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scrolling~0_combout\ = (\start~input_o\ & !\state~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \start~input_o\,
	datad => \state~combout\,
	combout => \scrolling~0_combout\);

-- Location: LCCOMB_X11_Y19_N24
state : fiftyfivenm_lcell_comb
-- Equation(s):
-- \state~combout\ = (!\reset~input_o\ & ((\scrolling~0_combout\) # (\state~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \scrolling~0_combout\,
	datad => \state~combout\,
	combout => \state~combout\);

-- Location: LCCOMB_X11_Y19_N0
\scrolling:i[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \scrolling:i[3]~0_combout\ = (\reset~input_o\) # ((!\state~combout\ & \start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state~combout\,
	datac => \start~input_o\,
	datad => \reset~input_o\,
	combout => \scrolling:i[3]~0_combout\);

-- Location: CLKCTRL_G1
\scrolling:i[3]~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \scrolling:i[3]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \scrolling:i[3]~0clkctrl_outclk\);

-- Location: FF_X11_Y19_N3
\scrolling:i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|scroll_clk~clkctrl_outclk\,
	d => \scrolling:i[0]~0_combout\,
	clrn => \ALT_INV_scrolling:i[3]~0clkctrl_outclk\,
	ena => \state~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scrolling:i[0]~q\);

-- Location: LCCOMB_X11_Y19_N16
\i~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i~2_combout\ = (\scrolling:i[1]~q\ & (!\scrolling:i[0]~q\ & ((!\scrolling:i[3]~q\) # (!\scrolling:i[2]~q\)))) # (!\scrolling:i[1]~q\ & (((\scrolling:i[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[2]~q\,
	datab => \scrolling:i[3]~q\,
	datac => \scrolling:i[1]~q\,
	datad => \scrolling:i[0]~q\,
	combout => \i~2_combout\);

-- Location: FF_X11_Y19_N17
\scrolling:i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|scroll_clk~clkctrl_outclk\,
	d => \i~2_combout\,
	clrn => \ALT_INV_scrolling:i[3]~0clkctrl_outclk\,
	ena => \state~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scrolling:i[1]~q\);

-- Location: LCCOMB_X11_Y19_N20
\i~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i~0_combout\ = (\scrolling:i[2]~q\ & ((\scrolling:i[3]~q\ & ((!\scrolling:i[1]~q\))) # (!\scrolling:i[3]~q\ & (\scrolling:i[0]~q\ & \scrolling:i[1]~q\)))) # (!\scrolling:i[2]~q\ & (((\scrolling:i[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[2]~q\,
	datab => \scrolling:i[0]~q\,
	datac => \scrolling:i[3]~q\,
	datad => \scrolling:i[1]~q\,
	combout => \i~0_combout\);

-- Location: FF_X11_Y19_N21
\scrolling:i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|scroll_clk~clkctrl_outclk\,
	d => \i~0_combout\,
	clrn => \ALT_INV_scrolling:i[3]~0clkctrl_outclk\,
	ena => \state~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scrolling:i[3]~q\);

-- Location: LCCOMB_X11_Y19_N26
\i~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \i~1_combout\ = (\scrolling:i[0]~q\ & ((\scrolling:i[2]~q\ $ (\scrolling:i[1]~q\)))) # (!\scrolling:i[0]~q\ & (\scrolling:i[2]~q\ & ((!\scrolling:i[1]~q\) # (!\scrolling:i[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[0]~q\,
	datab => \scrolling:i[3]~q\,
	datac => \scrolling:i[2]~q\,
	datad => \scrolling:i[1]~q\,
	combout => \i~1_combout\);

-- Location: FF_X11_Y19_N27
\scrolling:i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|scroll_clk~clkctrl_outclk\,
	d => \i~1_combout\,
	clrn => \ALT_INV_scrolling:i[3]~0clkctrl_outclk\,
	ena => \state~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \scrolling:i[2]~q\);

-- Location: LCCOMB_X12_Y19_N6
\displaying:i[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displaying:i[0]~0_combout\ = !\displaying:i[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displaying:i[0]~q\,
	combout => \displaying:i[0]~0_combout\);

-- Location: FF_X12_Y19_N7
\displaying:i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \displaying:i[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displaying:i[0]~q\);

-- Location: LCCOMB_X12_Y19_N24
\displaying:i[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \displaying:i[1]~0_combout\ = \displaying:i[1]~q\ $ (\displaying:i[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \displaying:i[1]~q\,
	datad => \displaying:i[0]~q\,
	combout => \displaying:i[1]~0_combout\);

-- Location: FF_X12_Y19_N25
\displaying:i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \displaying:i[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \displaying:i[1]~q\);

-- Location: LCCOMB_X11_Y19_N10
\Mux23~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\scrolling:i[2]~q\ & (\scrolling:i[3]~q\ & ((\scrolling:i[1]~q\) # (!\displaying:i[1]~q\)))) # (!\scrolling:i[2]~q\ & (!\scrolling:i[3]~q\ & ((\displaying:i[1]~q\) # (!\scrolling:i[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[2]~q\,
	datab => \scrolling:i[3]~q\,
	datac => \scrolling:i[1]~q\,
	datad => \displaying:i[1]~q\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X11_Y19_N28
\Mux23~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\) # (\scrolling:i[0]~q\ $ (\displaying:i[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[0]~q\,
	datac => \Mux23~0_combout\,
	datad => \displaying:i[0]~q\,
	combout => \Mux23~1_combout\);

-- Location: FF_X11_Y19_N29
\bcd_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_out[0]~reg0_q\);

-- Location: LCCOMB_X11_Y19_N4
\Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\scrolling:i[1]~q\ & (\scrolling:i[2]~q\ & ((\scrolling:i[3]~q\) # (\displaying:i[1]~q\)))) # (!\scrolling:i[1]~q\ & (\scrolling:i[2]~q\ $ (((\displaying:i[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[2]~q\,
	datab => \scrolling:i[3]~q\,
	datac => \scrolling:i[1]~q\,
	datad => \displaying:i[1]~q\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X11_Y19_N18
\Mux22~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\scrolling:i[1]~q\ & (!\displaying:i[1]~q\ & ((!\scrolling:i[3]~q\) # (!\scrolling:i[2]~q\)))) # (!\scrolling:i[1]~q\ & (((\displaying:i[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[2]~q\,
	datab => \scrolling:i[3]~q\,
	datac => \scrolling:i[1]~q\,
	datad => \displaying:i[1]~q\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X11_Y19_N8
\Mux22~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\scrolling:i[0]~q\ & (!\Mux22~0_combout\ & (\scrolling:i[3]~q\ $ (!\Mux22~1_combout\)))) # (!\scrolling:i[0]~q\ & (\scrolling:i[3]~q\ $ (\Mux22~0_combout\ $ (\Mux22~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[3]~q\,
	datab => \scrolling:i[0]~q\,
	datac => \Mux22~0_combout\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X11_Y19_N6
\Mux22~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\scrolling:i[0]~q\ & ((\scrolling:i[3]~q\ & (!\Mux22~0_combout\)) # (!\scrolling:i[3]~q\ & (\Mux22~0_combout\ & !\Mux22~1_combout\)))) # (!\scrolling:i[0]~q\ & (\Mux22~1_combout\ & ((\scrolling:i[3]~q\) # (!\Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[3]~q\,
	datab => \scrolling:i[0]~q\,
	datac => \Mux22~0_combout\,
	datad => \Mux22~1_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X11_Y19_N14
\Mux22~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = \Mux22~3_combout\ $ (((\displaying:i[0]~q\) # (!\Mux22~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displaying:i[0]~q\,
	datac => \Mux22~2_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: FF_X11_Y19_N15
\bcd_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux22~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_out[1]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N30
\Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = \scrolling:i[2]~q\ $ (((!\scrolling:i[1]~q\ & \displaying:i[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[1]~q\,
	datab => \displaying:i[1]~q\,
	datad => \scrolling:i[2]~q\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X12_Y19_N28
\Mux21~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = \scrolling:i[1]~q\ $ (\displaying:i[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[1]~q\,
	datad => \displaying:i[1]~q\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X12_Y19_N20
\Mux21~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\displaying:i[0]~q\ & (!\scrolling:i[3]~q\ & !\scrolling:i[0]~q\)) # (!\displaying:i[0]~q\ & (\scrolling:i[3]~q\ & \scrolling:i[0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displaying:i[0]~q\,
	datab => \scrolling:i[3]~q\,
	datad => \scrolling:i[0]~q\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X12_Y19_N14
\Mux21~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = \displaying:i[0]~q\ $ (\scrolling:i[0]~q\ $ (\scrolling:i[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \displaying:i[0]~q\,
	datac => \scrolling:i[0]~q\,
	datad => \scrolling:i[3]~q\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X12_Y19_N16
\Mux21~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux21~2_combout\ & (\Mux21~0_combout\ $ (((!\Mux21~1_combout\ & \Mux21~3_combout\))))) # (!\Mux21~2_combout\ & ((\Mux21~0_combout\) # (\Mux21~1_combout\ $ (!\Mux21~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101011101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \Mux21~1_combout\,
	datac => \Mux21~3_combout\,
	datad => \Mux21~2_combout\,
	combout => \Mux21~4_combout\);

-- Location: FF_X12_Y19_N17
\bcd_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux21~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_out[2]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N26
\Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\scrolling:i[1]~q\ & (!\scrolling:i[2]~q\ & !\displaying:i[1]~q\)) # (!\scrolling:i[1]~q\ & ((\displaying:i[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[2]~q\,
	datac => \scrolling:i[1]~q\,
	datad => \displaying:i[1]~q\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X12_Y19_N8
\Mux20~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\scrolling:i[3]~q\ & ((\scrolling:i[0]~q\ & ((!\displaying:i[0]~q\) # (!\Mux20~0_combout\))) # (!\scrolling:i[0]~q\ & (\Mux20~0_combout\ $ (!\displaying:i[0]~q\))))) # (!\scrolling:i[3]~q\ & (((\Mux20~0_combout\) # 
-- (\displaying:i[0]~q\)) # (!\scrolling:i[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110111011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \scrolling:i[3]~q\,
	datab => \scrolling:i[0]~q\,
	datac => \Mux20~0_combout\,
	datad => \displaying:i[0]~q\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X12_Y19_N2
\Mux20~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\scrolling:i[3]~q\ & ((\Mux21~0_combout\ & ((!\Mux20~0_combout\))) # (!\Mux21~0_combout\ & (\Mux20~1_combout\)))) # (!\scrolling:i[3]~q\ & (\Mux20~1_combout\ & (\Mux21~0_combout\ $ (!\Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~0_combout\,
	datab => \scrolling:i[3]~q\,
	datac => \Mux20~1_combout\,
	datad => \Mux20~0_combout\,
	combout => \Mux20~2_combout\);

-- Location: FF_X12_Y19_N3
\bcd_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux20~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bcd_out[3]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N0
\Mux18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\displaying:i[1]~q\ & \displaying:i[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displaying:i[1]~q\,
	datad => \displaying:i[0]~q\,
	combout => \Mux18~0_combout\);

-- Location: FF_X12_Y19_N1
\sel_out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_out[0]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N18
\Mux18~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\displaying:i[1]~q\ & !\displaying:i[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displaying:i[1]~q\,
	datad => \displaying:i[0]~q\,
	combout => \Mux18~1_combout\);

-- Location: FF_X12_Y19_N19
\sel_out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_out[1]~reg0_q\);

-- Location: LCCOMB_X12_Y19_N12
\Mux18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (!\displaying:i[1]~q\ & \displaying:i[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displaying:i[1]~q\,
	datad => \displaying:i[0]~q\,
	combout => \Mux18~2_combout\);

-- Location: FF_X12_Y19_N13
\sel_out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux18~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_out[2]~reg0_q\);

-- Location: LCCOMB_X11_Y19_N12
\Mux16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!\displaying:i[1]~q\ & !\displaying:i[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \displaying:i[1]~q\,
	datad => \displaying:i[0]~q\,
	combout => \Mux16~0_combout\);

-- Location: FF_X11_Y19_N13
\sel_out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_divider|mux_clk~clkctrl_outclk\,
	d => \Mux16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sel_out[3]~reg0_q\);

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

ww_bcd_out(0) <= \bcd_out[0]~output_o\;

ww_bcd_out(1) <= \bcd_out[1]~output_o\;

ww_bcd_out(2) <= \bcd_out[2]~output_o\;

ww_bcd_out(3) <= \bcd_out[3]~output_o\;

ww_sel_out(0) <= \sel_out[0]~output_o\;

ww_sel_out(1) <= \sel_out[1]~output_o\;

ww_sel_out(2) <= \sel_out[2]~output_o\;

ww_sel_out(3) <= \sel_out[3]~output_o\;
END structure;


