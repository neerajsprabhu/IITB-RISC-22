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

-- DATE "05/11/2022 21:54:47"

-- 
-- Device: Altera 5M240ZM100C4 Package MBGA100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(18 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(30 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(18 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(30 DOWNTO 0);
SIGNAL \add_instance|Equal14~0_combout\ : std_logic;
SIGNAL \add_instance|Equal14~4_combout\ : std_logic;
SIGNAL \add_instance|Selector36~3\ : std_logic;
SIGNAL \add_instance|nstate~1_combout\ : std_logic;
SIGNAL \add_instance|fsm~0_combout\ : std_logic;
SIGNAL \add_instance|nstate~0_combout\ : std_logic;
SIGNAL \add_instance|Equal14~5_combout\ : std_logic;
SIGNAL \add_instance|nstate.S22~0_combout\ : std_logic;
SIGNAL \add_instance|state.S22~regout\ : std_logic;
SIGNAL \add_instance|state.S7~regout\ : std_logic;
SIGNAL \add_instance|Equal14~9_combout\ : std_logic;
SIGNAL \add_instance|state.S10~regout\ : std_logic;
SIGNAL \add_instance|Selector36~4\ : std_logic;
SIGNAL \add_instance|state.init~regout\ : std_logic;
SIGNAL \add_instance|Selector36~5\ : std_logic;
SIGNAL \add_instance|Equal14~6_combout\ : std_logic;
SIGNAL \add_instance|state.S24~regout\ : std_logic;
SIGNAL \add_instance|Equal14~1_combout\ : std_logic;
SIGNAL \add_instance|nstate.S5~1_combout\ : std_logic;
SIGNAL \add_instance|state.S19~regout\ : std_logic;
SIGNAL \add_instance|state.S_19~regout\ : std_logic;
SIGNAL \add_instance|state.S26~regout\ : std_logic;
SIGNAL \add_instance|fsm~1_combout\ : std_logic;
SIGNAL \add_instance|state.S4~regout\ : std_logic;
SIGNAL \add_instance|state.S5~regout\ : std_logic;
SIGNAL \add_instance|Equal14~2_combout\ : std_logic;
SIGNAL \add_instance|state.S6~regout\ : std_logic;
SIGNAL \add_instance|state.S20~regout\ : std_logic;
SIGNAL \add_instance|Equal14~3_combout\ : std_logic;
SIGNAL \add_instance|state.S23~regout\ : std_logic;
SIGNAL \add_instance|WideOr4~0\ : std_logic;
SIGNAL \add_instance|Selector36~0_combout\ : std_logic;
SIGNAL \add_instance|Selector36~6_combout\ : std_logic;
SIGNAL \add_instance|Selector0~0_combout\ : std_logic;
SIGNAL \add_instance|Add0~0_combout\ : std_logic;
SIGNAL \add_instance|Add0~5_combout\ : std_logic;
SIGNAL \add_instance|Add0~2\ : std_logic;
SIGNAL \add_instance|Add0~6_combout\ : std_logic;
SIGNAL \add_instance|Add0~11_combout\ : std_logic;
SIGNAL \add_instance|Add0~8\ : std_logic;
SIGNAL \add_instance|Add0~8COUT1_193\ : std_logic;
SIGNAL \add_instance|Add0~12_combout\ : std_logic;
SIGNAL \add_instance|Add0~17_combout\ : std_logic;
SIGNAL \add_instance|Add0~14\ : std_logic;
SIGNAL \add_instance|Add0~14COUT1_194\ : std_logic;
SIGNAL \add_instance|Add0~90_combout\ : std_logic;
SIGNAL \add_instance|Add0~95_combout\ : std_logic;
SIGNAL \add_instance|Add0~92\ : std_logic;
SIGNAL \add_instance|Add0~92COUT1_195\ : std_logic;
SIGNAL \add_instance|Add0~84_combout\ : std_logic;
SIGNAL \add_instance|Add0~89_combout\ : std_logic;
SIGNAL \add_instance|Add0~86\ : std_logic;
SIGNAL \add_instance|Add0~86COUT1_196\ : std_logic;
SIGNAL \add_instance|Add0~78_combout\ : std_logic;
SIGNAL \add_instance|Add0~83_combout\ : std_logic;
SIGNAL \add_instance|Add0~80\ : std_logic;
SIGNAL \add_instance|Add0~72_combout\ : std_logic;
SIGNAL \add_instance|Add0~77_combout\ : std_logic;
SIGNAL \add_instance|Add0~74\ : std_logic;
SIGNAL \add_instance|Add0~74COUT1_197\ : std_logic;
SIGNAL \add_instance|Add0~66_combout\ : std_logic;
SIGNAL \add_instance|Add0~71_combout\ : std_logic;
SIGNAL \add_instance|Add0~68\ : std_logic;
SIGNAL \add_instance|Add0~68COUT1_198\ : std_logic;
SIGNAL \add_instance|Add0~60_combout\ : std_logic;
SIGNAL \add_instance|Add0~65_combout\ : std_logic;
SIGNAL \add_instance|Add0~62\ : std_logic;
SIGNAL \add_instance|Add0~62COUT1_199\ : std_logic;
SIGNAL \add_instance|Add0~54_combout\ : std_logic;
SIGNAL \add_instance|Add0~59_combout\ : std_logic;
SIGNAL \add_instance|Add0~56\ : std_logic;
SIGNAL \add_instance|Add0~56COUT1_200\ : std_logic;
SIGNAL \add_instance|Add0~48_combout\ : std_logic;
SIGNAL \add_instance|Add0~53_combout\ : std_logic;
SIGNAL \add_instance|Add0~50\ : std_logic;
SIGNAL \add_instance|Add0~42_combout\ : std_logic;
SIGNAL \add_instance|Add0~47_combout\ : std_logic;
SIGNAL \add_instance|Add0~44\ : std_logic;
SIGNAL \add_instance|Add0~44COUT1_201\ : std_logic;
SIGNAL \add_instance|Add0~36_combout\ : std_logic;
SIGNAL \add_instance|Add0~41_combout\ : std_logic;
SIGNAL \add_instance|Add0~38\ : std_logic;
SIGNAL \add_instance|Add0~38COUT1_202\ : std_logic;
SIGNAL \add_instance|Add0~30_combout\ : std_logic;
SIGNAL \add_instance|Add0~35_combout\ : std_logic;
SIGNAL \add_instance|Add0~32\ : std_logic;
SIGNAL \add_instance|Add0~32COUT1_203\ : std_logic;
SIGNAL \add_instance|Add0~24_combout\ : std_logic;
SIGNAL \add_instance|Add0~29_combout\ : std_logic;
SIGNAL \add_instance|Add0~26\ : std_logic;
SIGNAL \add_instance|Add0~26COUT1_204\ : std_logic;
SIGNAL \add_instance|Add0~18_combout\ : std_logic;
SIGNAL \add_instance|Add0~23_combout\ : std_logic;
SIGNAL \add_instance|Add0~20\ : std_logic;
SIGNAL \add_instance|Add0~186_combout\ : std_logic;
SIGNAL \add_instance|Add0~191_combout\ : std_logic;
SIGNAL \add_instance|Add0~188\ : std_logic;
SIGNAL \add_instance|Add0~188COUT1_205\ : std_logic;
SIGNAL \add_instance|Add0~96_combout\ : std_logic;
SIGNAL \add_instance|Add0~101_combout\ : std_logic;
SIGNAL \add_instance|Add0~98\ : std_logic;
SIGNAL \add_instance|Add0~98COUT1_206\ : std_logic;
SIGNAL \add_instance|Add0~102_combout\ : std_logic;
SIGNAL \add_instance|Add0~107_combout\ : std_logic;
SIGNAL \add_instance|Add0~104\ : std_logic;
SIGNAL \add_instance|Add0~104COUT1_207\ : std_logic;
SIGNAL \add_instance|Add0~108_combout\ : std_logic;
SIGNAL \add_instance|Add0~113_combout\ : std_logic;
SIGNAL \add_instance|Add0~110\ : std_logic;
SIGNAL \add_instance|Add0~110COUT1_208\ : std_logic;
SIGNAL \add_instance|Add0~114_combout\ : std_logic;
SIGNAL \add_instance|Add0~119_combout\ : std_logic;
SIGNAL \add_instance|Add0~116\ : std_logic;
SIGNAL \add_instance|Add0~120_combout\ : std_logic;
SIGNAL \add_instance|Add0~125_combout\ : std_logic;
SIGNAL \add_instance|Add0~122\ : std_logic;
SIGNAL \add_instance|Add0~122COUT1_209\ : std_logic;
SIGNAL \add_instance|Add0~126_combout\ : std_logic;
SIGNAL \add_instance|Add0~131_combout\ : std_logic;
SIGNAL \add_instance|Add0~128\ : std_logic;
SIGNAL \add_instance|Add0~128COUT1_210\ : std_logic;
SIGNAL \add_instance|Add0~132_combout\ : std_logic;
SIGNAL \add_instance|Add0~137_combout\ : std_logic;
SIGNAL \add_instance|Add0~134\ : std_logic;
SIGNAL \add_instance|Add0~134COUT1_211\ : std_logic;
SIGNAL \add_instance|Add0~138_combout\ : std_logic;
SIGNAL \add_instance|Add0~143_combout\ : std_logic;
SIGNAL \add_instance|Add0~140\ : std_logic;
SIGNAL \add_instance|Add0~140COUT1_212\ : std_logic;
SIGNAL \add_instance|Add0~144_combout\ : std_logic;
SIGNAL \add_instance|Add0~149_combout\ : std_logic;
SIGNAL \add_instance|Add0~146\ : std_logic;
SIGNAL \add_instance|Add0~150_combout\ : std_logic;
SIGNAL \add_instance|Add0~155_combout\ : std_logic;
SIGNAL \add_instance|Add0~152\ : std_logic;
SIGNAL \add_instance|Add0~152COUT1_213\ : std_logic;
SIGNAL \add_instance|Add0~156_combout\ : std_logic;
SIGNAL \add_instance|Add0~161_combout\ : std_logic;
SIGNAL \add_instance|Add0~158\ : std_logic;
SIGNAL \add_instance|Add0~158COUT1_214\ : std_logic;
SIGNAL \add_instance|Add0~162_combout\ : std_logic;
SIGNAL \add_instance|Add0~167_combout\ : std_logic;
SIGNAL \add_instance|Equal16~8_combout\ : std_logic;
SIGNAL \add_instance|Equal16~0_combout\ : std_logic;
SIGNAL \add_instance|Equal16~1_combout\ : std_logic;
SIGNAL \add_instance|Equal16~2_combout\ : std_logic;
SIGNAL \add_instance|Equal16~3_combout\ : std_logic;
SIGNAL \add_instance|Equal16~4_combout\ : std_logic;
SIGNAL \add_instance|Add0~164\ : std_logic;
SIGNAL \add_instance|Add0~164COUT1_215\ : std_logic;
SIGNAL \add_instance|Add0~168_combout\ : std_logic;
SIGNAL \add_instance|Add0~173_combout\ : std_logic;
SIGNAL \add_instance|Add0~170\ : std_logic;
SIGNAL \add_instance|Add0~170COUT1_216\ : std_logic;
SIGNAL \add_instance|Add0~174_combout\ : std_logic;
SIGNAL \add_instance|Add0~179_combout\ : std_logic;
SIGNAL \add_instance|Add0~176\ : std_logic;
SIGNAL \add_instance|Add0~180_combout\ : std_logic;
SIGNAL \add_instance|Add0~185_combout\ : std_logic;
SIGNAL \add_instance|Equal16~9_combout\ : std_logic;
SIGNAL \add_instance|Equal16~5_combout\ : std_logic;
SIGNAL \add_instance|Equal16~6_combout\ : std_logic;
SIGNAL \add_instance|Equal16~7_combout\ : std_logic;
SIGNAL \add_instance|Equal16~10_combout\ : std_logic;
SIGNAL \add_instance|Equal14~7_combout\ : std_logic;
SIGNAL \add_instance|Selector36~1_combout\ : std_logic;
SIGNAL \add_instance|Selector36~2_combout\ : std_logic;
SIGNAL \add_instance|state.S0~regout\ : std_logic;
SIGNAL \add_instance|state.S1~regout\ : std_logic;
SIGNAL \add_instance|state.S_1~regout\ : std_logic;
SIGNAL \add_instance|state.S2~regout\ : std_logic;
SIGNAL \add_instance|state.S8~regout\ : std_logic;
SIGNAL \add_instance|state.S9~regout\ : std_logic;
SIGNAL \add_instance|Equal14~8_combout\ : std_logic;
SIGNAL \add_instance|state.S12~regout\ : std_logic;
SIGNAL \add_instance|state.S13~regout\ : std_logic;
SIGNAL \add_instance|state.S18~regout\ : std_logic;
SIGNAL \add_instance|Mux1~0_combout\ : std_logic;
SIGNAL \add_instance|Mux1~1_combout\ : std_logic;
SIGNAL \add_instance|Mux1~4_combout\ : std_logic;
SIGNAL \add_instance|Mux1~5_combout\ : std_logic;
SIGNAL \add_instance|Mux1~2_combout\ : std_logic;
SIGNAL \add_instance|Mux1~3_combout\ : std_logic;
SIGNAL \add_instance|Mux1~6_combout\ : std_logic;
SIGNAL \add_instance|Mux1~7_combout\ : std_logic;
SIGNAL \add_instance|Mux1~8_combout\ : std_logic;
SIGNAL \add_instance|Mux1~9_combout\ : std_logic;
SIGNAL \add_instance|state.S14~regout\ : std_logic;
SIGNAL \add_instance|state.S15~regout\ : std_logic;
SIGNAL \add_instance|state.S16~regout\ : std_logic;
SIGNAL \add_instance|state.S_3~regout\ : std_logic;
SIGNAL \add_instance|state.S25~regout\ : std_logic;
SIGNAL \add_instance|Selector37~1_combout\ : std_logic;
SIGNAL \add_instance|Selector37~0_combout\ : std_logic;
SIGNAL \add_instance|state.S3~regout\ : std_logic;
SIGNAL \add_instance|Selector38~0_combout\ : std_logic;
SIGNAL \add_instance|state.S17~regout\ : std_logic;
SIGNAL \add_instance|dec[0]~0\ : std_logic;
SIGNAL \add_instance|dec[1]~1_combout\ : std_logic;
SIGNAL \add_instance|dec[2]~2_combout\ : std_logic;
SIGNAL \add_instance|Mux0~0_combout\ : std_logic;
SIGNAL \add_instance|Selector4~0_combout\ : std_logic;
SIGNAL \add_instance|Selector2~0_combout\ : std_logic;
SIGNAL \add_instance|Selector2~1_combout\ : std_logic;
SIGNAL \add_instance|Selector1~0_combout\ : std_logic;
SIGNAL \add_instance|Selector4~1_combout\ : std_logic;
SIGNAL \add_instance|Selector3~0_combout\ : std_logic;
SIGNAL \add_instance|WideOr2~combout\ : std_logic;
SIGNAL \add_instance|wr_T3~combout\ : std_logic;
SIGNAL \add_instance|WideOr9~0_combout\ : std_logic;
SIGNAL \add_instance|WideOr1~0_combout\ : std_logic;
SIGNAL \add_instance|WideOr1~combout\ : std_logic;
SIGNAL \add_instance|WideOr5~0_combout\ : std_logic;
SIGNAL \add_instance|state.S11~regout\ : std_logic;
SIGNAL \add_instance|WideOr8~combout\ : std_logic;
SIGNAL \add_instance|wr_Mem\ : std_logic;
SIGNAL \add_instance|state.S21~regout\ : std_logic;
SIGNAL \add_instance|WideOr10~combout\ : std_logic;
SIGNAL \add_instance|WideOr4~combout\ : std_logic;
SIGNAL \add_instance|WideOr3~0_combout\ : std_logic;
SIGNAL \add_instance|WideOr8~2_combout\ : std_logic;
SIGNAL \add_instance|WideOr7~combout\ : std_logic;
SIGNAL \add_instance|WideOr6~combout\ : std_logic;
SIGNAL \add_instance|select_Mux_RF_A1[0]~2_combout\ : std_logic;
SIGNAL \add_instance|select_Mux_Mem_A~combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \add_instance|select_Mux_ALU_B\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|i\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \add_instance|ALT_INV_select_Mux_RF_A1[0]~2_combout\ : std_logic;
SIGNAL \add_instance|ALT_INV_WideOr5~0_combout\ : std_logic;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\add_instance|ALT_INV_select_Mux_RF_A1[0]~2_combout\ <= NOT \add_instance|select_Mux_RF_A1[0]~2_combout\;
\add_instance|ALT_INV_WideOr5~0_combout\ <= NOT \add_instance|WideOr5~0_combout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(18),
	combout => \input_vector~combout\(18));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: LC_X3_Y4_N1
\add_instance|Equal14~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~0_combout\ = (\input_vector~combout\(15) & (\input_vector~combout\(17) & (\input_vector~combout\(18) & !\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(17),
	datac => \input_vector~combout\(18),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~0_combout\);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: LC_X2_Y4_N0
\add_instance|Equal14~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~4_combout\ = (\input_vector~combout\(18) & (!\input_vector~combout\(16) & (!\input_vector~combout\(17) & !\input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0002",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(16),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~4_combout\);

-- Location: LC_X3_Y4_N3
\add_instance|state.S9\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector36~3\ = (B1_state.S9 & ((\input_vector~combout\(18)) # ((!\input_vector~combout\(15)) # (!\input_vector~combout\(17)))))
-- \add_instance|state.S9~regout\ = DFFEAS(\add_instance|Selector36~3\, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S8~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b0f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(17),
	datac => \add_instance|state.S8~regout\,
	datad => \input_vector~combout\(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector36~3\,
	regout => \add_instance|state.S9~regout\);

-- Location: LC_X2_Y4_N2
\add_instance|nstate~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|nstate~1_combout\ = (\input_vector~combout\(18) & (!\input_vector~combout\(17) & (\input_vector~combout\(15) $ (\input_vector~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0208",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|nstate~1_combout\);

-- Location: LC_X2_Y4_N6
\add_instance|fsm~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm~0_combout\ = ((\input_vector~combout\(18) & (\input_vector~combout\(17) & !\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(18),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm~0_combout\);

-- Location: LC_X2_Y4_N4
\add_instance|nstate~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|nstate~0_combout\ = ((!\input_vector~combout\(18) & (\input_vector~combout\(17) & \input_vector~combout\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(18),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|nstate~0_combout\);

-- Location: LC_X2_Y4_N1
\add_instance|Equal14~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~5_combout\ = (!\input_vector~combout\(18) & (!\input_vector~combout\(15) & (\input_vector~combout\(17) & !\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~5_combout\);

-- Location: LC_X2_Y4_N7
\add_instance|nstate.S22~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|nstate.S22~0_combout\ = (!\add_instance|nstate~0_combout\ & (((\add_instance|state.S2~regout\ & !\add_instance|Equal14~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0050",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|nstate~0_combout\,
	datac => \add_instance|state.S2~regout\,
	datad => \add_instance|Equal14~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|nstate.S22~0_combout\);

-- Location: LC_X3_Y4_N6
\add_instance|state.S22\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S22~regout\ = DFFEAS(((\add_instance|nstate~1_combout\ & (!\add_instance|fsm~0_combout\ & \add_instance|nstate.S22~0_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|nstate~1_combout\,
	datac => \add_instance|fsm~0_combout\,
	datad => \add_instance|nstate.S22~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S22~regout\);

-- Location: LC_X3_Y4_N2
\add_instance|state.S7\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S7~regout\ = DFFEAS((((\add_instance|Equal14~5_combout\ & \add_instance|state.S2~regout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|Equal14~5_combout\,
	datad => \add_instance|state.S2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S7~regout\);

-- Location: LC_X2_Y3_N2
\add_instance|Equal14~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~9_combout\ = (\input_vector~combout\(15) & (!\input_vector~combout\(18) & (\input_vector~combout\(17) & \input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(18),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~9_combout\);

-- Location: LC_X3_Y2_N1
\add_instance|state.S10\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S10~regout\ = DFFEAS((((\add_instance|state.S9~regout\ & \add_instance|Equal14~9_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|state.S9~regout\,
	datad => \add_instance|Equal14~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S10~regout\);

-- Location: LC_X3_Y4_N7
\add_instance|state.S11\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector36~4\ = (\add_instance|state.S7~regout\) # ((B1_state.S11) # ((\add_instance|state.S22~regout\ & !\add_instance|nstate~1_combout\)))
-- \add_instance|state.S11~regout\ = DFFEAS(\add_instance|Selector36~4\, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S10~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfe",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|state.S22~regout\,
	datab => \add_instance|state.S7~regout\,
	datac => \add_instance|state.S10~regout\,
	datad => \add_instance|nstate~1_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector36~4\,
	regout => \add_instance|state.S11~regout\);

-- Location: LC_X4_Y1_N9
\add_instance|state.init\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.init~regout\ = DFFEAS(VCC, GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.init~regout\);

-- Location: LC_X4_Y1_N1
\add_instance|state.S13\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector36~5\ = (((B1_state.S13) # (!\add_instance|state.init~regout\)))
-- \add_instance|state.S13~regout\ = DFFEAS(\add_instance|Selector36~5\, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S12~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|state.S12~regout\,
	datad => \add_instance|state.init~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector36~5\,
	regout => \add_instance|state.S13~regout\);

-- Location: LC_X3_Y4_N8
\add_instance|Equal14~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~6_combout\ = (!\input_vector~combout\(15) & (!\input_vector~combout\(17) & (\input_vector~combout\(18) & \input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(17),
	datac => \input_vector~combout\(18),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~6_combout\);

-- Location: LC_X4_Y4_N5
\add_instance|state.S24\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S24~regout\ = DFFEAS((((\add_instance|Equal14~6_combout\ & \add_instance|Selector38~0_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|Equal14~6_combout\,
	datad => \add_instance|Selector38~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S24~regout\);

-- Location: LC_X6_Y4_N1
\add_instance|Equal14~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~1_combout\ = (!\input_vector~combout\(18) & (\input_vector~combout\(15) & (!\input_vector~combout\(16) & !\input_vector~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(16),
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~1_combout\);

-- Location: LC_X6_Y4_N0
\add_instance|nstate.S5~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|nstate.S5~1_combout\ = ((\input_vector~combout\(4) & (\input_vector~combout\(3) & \add_instance|Equal14~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(3),
	datad => \add_instance|Equal14~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|nstate.S5~1_combout\);

-- Location: LC_X6_Y4_N8
\add_instance|state.S19\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S19~regout\ = DFFEAS(((!\add_instance|nstate.S5~1_combout\ & (\add_instance|Equal14~4_combout\ & \add_instance|Selector38~0_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|nstate.S5~1_combout\,
	datac => \add_instance|Equal14~4_combout\,
	datad => \add_instance|Selector38~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S19~regout\);

-- Location: LC_X6_Y4_N3
\add_instance|state.S_19\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S_19~regout\ = DFFEAS((((\add_instance|state.S19~regout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datad => \add_instance|state.S19~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S_19~regout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X5_Y4_N5
\add_instance|state.S26\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S26~regout\ = DFFEAS(((\add_instance|state.S_19~regout\ & ((!\input_vector~combout\(1))))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|state.S_19~regout\,
	datad => \input_vector~combout\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S26~regout\);

-- Location: LC_X6_Y4_N6
\add_instance|fsm~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|fsm~1_combout\ = (!\input_vector~combout\(18) & (!\input_vector~combout\(17) & (\input_vector~combout\(15) $ (\input_vector~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0014",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(16),
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|fsm~1_combout\);

-- Location: LC_X6_Y4_N4
\add_instance|state.S4\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S4~regout\ = DFFEAS((\add_instance|state.S3~regout\ & (\add_instance|fsm~1_combout\ & ((!\input_vector~combout\(4)) # (!\input_vector~combout\(3))))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(4),
	datac => \add_instance|state.S3~regout\,
	datad => \add_instance|fsm~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S4~regout\);

-- Location: LC_X4_Y4_N4
\add_instance|state.S5\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S5~regout\ = DFFEAS((\input_vector~combout\(4) & (\add_instance|state.S3~regout\ & (\add_instance|Equal14~1_combout\ & \input_vector~combout\(3)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(4),
	datab => \add_instance|state.S3~regout\,
	datac => \add_instance|Equal14~1_combout\,
	datad => \input_vector~combout\(3),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S5~regout\);

-- Location: LC_X2_Y4_N3
\add_instance|Equal14~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~2_combout\ = (!\input_vector~combout\(18) & (!\input_vector~combout\(15) & (!\input_vector~combout\(17) & !\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~2_combout\);

-- Location: LC_X4_Y4_N9
\add_instance|state.S6\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S6~regout\ = DFFEAS((\add_instance|Equal14~2_combout\ & (((\add_instance|Selector38~0_combout\ & !\add_instance|nstate.S5~1_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal14~2_combout\,
	datac => \add_instance|Selector38~0_combout\,
	datad => \add_instance|nstate.S5~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S6~regout\);

-- Location: LC_X6_Y4_N5
\add_instance|state.S20\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S20~regout\ = DFFEAS((((\input_vector~combout\(1) & \add_instance|state.S_19~regout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \add_instance|state.S_19~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S20~regout\);

-- Location: LC_X3_Y4_N5
\add_instance|Equal14~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~3_combout\ = (\input_vector~combout\(15) & (!\input_vector~combout\(17) & (\input_vector~combout\(18) & !\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(17),
	datac => \input_vector~combout\(18),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~3_combout\);

-- Location: LC_X4_Y4_N8
\add_instance|state.S23\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S23~regout\ = DFFEAS((((\add_instance|state.S22~regout\ & \add_instance|Equal14~3_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|state.S22~regout\,
	datad => \add_instance|Equal14~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S23~regout\);

-- Location: LC_X4_Y4_N0
\add_instance|state.S21\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr4~0\ = (!\add_instance|state.S5~regout\ & (!\add_instance|state.S6~regout\ & (!B1_state.S21 & !\add_instance|state.S23~regout\)))
-- \add_instance|state.S21~regout\ = DFFEAS(\add_instance|WideOr4~0\, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S20~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|state.S5~regout\,
	datab => \add_instance|state.S6~regout\,
	datac => \add_instance|state.S20~regout\,
	datad => \add_instance|state.S23~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr4~0\,
	regout => \add_instance|state.S21~regout\);

-- Location: LC_X4_Y4_N1
\add_instance|Selector36~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector36~0_combout\ = (!\add_instance|state.S24~regout\ & (!\add_instance|state.S26~regout\ & (!\add_instance|state.S4~regout\ & \add_instance|WideOr4~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S24~regout\,
	datab => \add_instance|state.S26~regout\,
	datac => \add_instance|state.S4~regout\,
	datad => \add_instance|WideOr4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector36~0_combout\);

-- Location: LC_X4_Y4_N7
\add_instance|Selector36~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector36~6_combout\ = (\add_instance|Selector36~3\) # ((\add_instance|Selector36~4\) # ((\add_instance|Selector36~5\) # (!\add_instance|Selector36~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Selector36~3\,
	datab => \add_instance|Selector36~4\,
	datac => \add_instance|Selector36~5\,
	datad => \add_instance|Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector36~6_combout\);

-- Location: LC_X2_Y3_N6
\add_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector0~0_combout\ = (\add_instance|Equal16~10_combout\ & (\add_instance|fsm~0_combout\ & (\add_instance|state.S2~regout\))) # (!\add_instance|Equal16~10_combout\ & ((\add_instance|state.S_3~regout\) # ((\add_instance|fsm~0_combout\ & 
-- \add_instance|state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d5c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal16~10_combout\,
	datab => \add_instance|fsm~0_combout\,
	datac => \add_instance|state.S2~regout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector0~0_combout\);

-- Location: LC_X4_Y2_N4
\add_instance|Add0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~0_combout\ = ((!\add_instance|i\(0)))
-- \add_instance|Add0~2\ = CARRY(((\add_instance|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~0_combout\,
	cout => \add_instance|Add0~2\);

-- Location: LC_X4_Y2_N1
\add_instance|Add0~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~5_combout\ = (((\add_instance|Add0~0_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~0_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~5_combout\);

-- Location: LC_X4_Y2_N2
\add_instance|i[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(0) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~5_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(0),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(0));

-- Location: LC_X4_Y2_N5
\add_instance|Add0~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~6_combout\ = (\add_instance|i\(1) $ ((\add_instance|Add0~2\)))
-- \add_instance|Add0~8\ = CARRY(((!\add_instance|Add0~2\) # (!\add_instance|i\(1))))
-- \add_instance|Add0~8COUT1_193\ = CARRY(((!\add_instance|Add0~2\) # (!\add_instance|i\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(1),
	cin => \add_instance|Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~6_combout\,
	cout0 => \add_instance|Add0~8\,
	cout1 => \add_instance|Add0~8COUT1_193\);

-- Location: LC_X3_Y3_N8
\add_instance|Add0~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~11_combout\ = (((\add_instance|Add0~6_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~6_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~11_combout\);

-- Location: LC_X3_Y3_N7
\add_instance|i[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(1) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~11_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(1),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(1));

-- Location: LC_X4_Y2_N6
\add_instance|Add0~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~12_combout\ = \add_instance|i\(2) $ ((((!(!\add_instance|Add0~2\ & \add_instance|Add0~8\) # (\add_instance|Add0~2\ & \add_instance|Add0~8COUT1_193\)))))
-- \add_instance|Add0~14\ = CARRY((\add_instance|i\(2) & ((!\add_instance|Add0~8\))))
-- \add_instance|Add0~14COUT1_194\ = CARRY((\add_instance|i\(2) & ((!\add_instance|Add0~8COUT1_193\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(2),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~8\,
	cin1 => \add_instance|Add0~8COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~12_combout\,
	cout0 => \add_instance|Add0~14\,
	cout1 => \add_instance|Add0~14COUT1_194\);

-- Location: LC_X4_Y3_N0
\add_instance|Add0~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~17_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~17_combout\);

-- Location: LC_X5_Y3_N2
\add_instance|i[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(2) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~17_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(2),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(2));

-- Location: LC_X4_Y2_N7
\add_instance|Add0~90\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~90_combout\ = (\add_instance|i\(3) $ (((!\add_instance|Add0~2\ & \add_instance|Add0~14\) # (\add_instance|Add0~2\ & \add_instance|Add0~14COUT1_194\))))
-- \add_instance|Add0~92\ = CARRY(((!\add_instance|Add0~14\) # (!\add_instance|i\(3))))
-- \add_instance|Add0~92COUT1_195\ = CARRY(((!\add_instance|Add0~14COUT1_194\) # (!\add_instance|i\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(3),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~14\,
	cin1 => \add_instance|Add0~14COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~90_combout\,
	cout0 => \add_instance|Add0~92\,
	cout1 => \add_instance|Add0~92COUT1_195\);

-- Location: LC_X3_Y3_N9
\add_instance|Add0~95\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~95_combout\ = (((\add_instance|Add0~90_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~90_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~95_combout\);

-- Location: LC_X3_Y3_N0
\add_instance|i[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(3) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~95_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(3),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(3));

-- Location: LC_X4_Y2_N8
\add_instance|Add0~84\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~84_combout\ = \add_instance|i\(4) $ ((((!(!\add_instance|Add0~2\ & \add_instance|Add0~92\) # (\add_instance|Add0~2\ & \add_instance|Add0~92COUT1_195\)))))
-- \add_instance|Add0~86\ = CARRY((\add_instance|i\(4) & ((!\add_instance|Add0~92\))))
-- \add_instance|Add0~86COUT1_196\ = CARRY((\add_instance|i\(4) & ((!\add_instance|Add0~92COUT1_195\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(4),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~92\,
	cin1 => \add_instance|Add0~92COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~84_combout\,
	cout0 => \add_instance|Add0~86\,
	cout1 => \add_instance|Add0~86COUT1_196\);

-- Location: LC_X5_Y1_N0
\add_instance|Add0~89\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~89_combout\ = (((\add_instance|Add0~84_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~84_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~89_combout\);

-- Location: LC_X5_Y1_N1
\add_instance|i[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(4) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~89_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(4),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(4));

-- Location: LC_X4_Y2_N9
\add_instance|Add0~78\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~78_combout\ = (\add_instance|i\(5) $ (((!\add_instance|Add0~2\ & \add_instance|Add0~86\) # (\add_instance|Add0~2\ & \add_instance|Add0~86COUT1_196\))))
-- \add_instance|Add0~80\ = CARRY(((!\add_instance|Add0~86COUT1_196\) # (!\add_instance|i\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(5),
	cin => \add_instance|Add0~2\,
	cin0 => \add_instance|Add0~86\,
	cin1 => \add_instance|Add0~86COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~78_combout\,
	cout => \add_instance|Add0~80\);

-- Location: LC_X4_Y2_N3
\add_instance|Add0~83\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~83_combout\ = ((\add_instance|Add0~78_combout\ & ((\add_instance|state.S_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add0~78_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~83_combout\);

-- Location: LC_X4_Y2_N0
\add_instance|i[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(5) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~83_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(5),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(5));

-- Location: LC_X5_Y2_N0
\add_instance|Add0~72\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~72_combout\ = (\add_instance|i\(6) $ ((!\add_instance|Add0~80\)))
-- \add_instance|Add0~74\ = CARRY(((\add_instance|i\(6) & !\add_instance|Add0~80\)))
-- \add_instance|Add0~74COUT1_197\ = CARRY(((\add_instance|i\(6) & !\add_instance|Add0~80\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(6),
	cin => \add_instance|Add0~80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~72_combout\,
	cout0 => \add_instance|Add0~74\,
	cout1 => \add_instance|Add0~74COUT1_197\);

-- Location: LC_X5_Y1_N5
\add_instance|Add0~77\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~77_combout\ = ((\add_instance|Add0~72_combout\ & ((\add_instance|state.S_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add0~72_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~77_combout\);

-- Location: LC_X5_Y1_N6
\add_instance|i[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(6) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~77_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(6),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(6));

-- Location: LC_X5_Y2_N1
\add_instance|Add0~66\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~66_combout\ = (\add_instance|i\(7) $ (((!\add_instance|Add0~80\ & \add_instance|Add0~74\) # (\add_instance|Add0~80\ & \add_instance|Add0~74COUT1_197\))))
-- \add_instance|Add0~68\ = CARRY(((!\add_instance|Add0~74\) # (!\add_instance|i\(7))))
-- \add_instance|Add0~68COUT1_198\ = CARRY(((!\add_instance|Add0~74COUT1_197\) # (!\add_instance|i\(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(7),
	cin => \add_instance|Add0~80\,
	cin0 => \add_instance|Add0~74\,
	cin1 => \add_instance|Add0~74COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~66_combout\,
	cout0 => \add_instance|Add0~68\,
	cout1 => \add_instance|Add0~68COUT1_198\);

-- Location: LC_X5_Y1_N9
\add_instance|Add0~71\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~71_combout\ = (\add_instance|Add0~66_combout\ & (((\add_instance|state.S_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add0~66_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~71_combout\);

-- Location: LC_X5_Y1_N7
\add_instance|i[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(7) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~71_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(7),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(7));

-- Location: LC_X5_Y2_N2
\add_instance|Add0~60\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~60_combout\ = (\add_instance|i\(8) $ ((!(!\add_instance|Add0~80\ & \add_instance|Add0~68\) # (\add_instance|Add0~80\ & \add_instance|Add0~68COUT1_198\))))
-- \add_instance|Add0~62\ = CARRY(((\add_instance|i\(8) & !\add_instance|Add0~68\)))
-- \add_instance|Add0~62COUT1_199\ = CARRY(((\add_instance|i\(8) & !\add_instance|Add0~68COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(8),
	cin => \add_instance|Add0~80\,
	cin0 => \add_instance|Add0~68\,
	cin1 => \add_instance|Add0~68COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~60_combout\,
	cout0 => \add_instance|Add0~62\,
	cout1 => \add_instance|Add0~62COUT1_199\);

-- Location: LC_X5_Y3_N5
\add_instance|Add0~65\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~65_combout\ = ((\add_instance|Add0~60_combout\ & (\add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add0~60_combout\,
	datac => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~65_combout\);

-- Location: LC_X5_Y3_N6
\add_instance|i[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(8) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~65_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(8),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(8));

-- Location: LC_X5_Y2_N3
\add_instance|Add0~54\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~54_combout\ = (\add_instance|i\(9) $ (((!\add_instance|Add0~80\ & \add_instance|Add0~62\) # (\add_instance|Add0~80\ & \add_instance|Add0~62COUT1_199\))))
-- \add_instance|Add0~56\ = CARRY(((!\add_instance|Add0~62\) # (!\add_instance|i\(9))))
-- \add_instance|Add0~56COUT1_200\ = CARRY(((!\add_instance|Add0~62COUT1_199\) # (!\add_instance|i\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(9),
	cin => \add_instance|Add0~80\,
	cin0 => \add_instance|Add0~62\,
	cin1 => \add_instance|Add0~62COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~54_combout\,
	cout0 => \add_instance|Add0~56\,
	cout1 => \add_instance|Add0~56COUT1_200\);

-- Location: LC_X5_Y3_N7
\add_instance|Add0~59\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~59_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~59_combout\);

-- Location: LC_X5_Y3_N8
\add_instance|i[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(9) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~59_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(9),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(9));

-- Location: LC_X5_Y2_N4
\add_instance|Add0~48\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~48_combout\ = \add_instance|i\(10) $ ((((!(!\add_instance|Add0~80\ & \add_instance|Add0~56\) # (\add_instance|Add0~80\ & \add_instance|Add0~56COUT1_200\)))))
-- \add_instance|Add0~50\ = CARRY((\add_instance|i\(10) & ((!\add_instance|Add0~56COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(10),
	cin => \add_instance|Add0~80\,
	cin0 => \add_instance|Add0~56\,
	cin1 => \add_instance|Add0~56COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~48_combout\,
	cout => \add_instance|Add0~50\);

-- Location: LC_X5_Y3_N1
\add_instance|Add0~53\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~53_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~48_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~53_combout\);

-- Location: LC_X5_Y3_N9
\add_instance|i[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(10) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~53_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(10),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(10));

-- Location: LC_X5_Y2_N5
\add_instance|Add0~42\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~42_combout\ = \add_instance|i\(11) $ ((((\add_instance|Add0~50\))))
-- \add_instance|Add0~44\ = CARRY(((!\add_instance|Add0~50\)) # (!\add_instance|i\(11)))
-- \add_instance|Add0~44COUT1_201\ = CARRY(((!\add_instance|Add0~50\)) # (!\add_instance|i\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(11),
	cin => \add_instance|Add0~50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~42_combout\,
	cout0 => \add_instance|Add0~44\,
	cout1 => \add_instance|Add0~44COUT1_201\);

-- Location: LC_X5_Y3_N3
\add_instance|Add0~47\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~47_combout\ = ((\add_instance|Add0~42_combout\ & (\add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add0~42_combout\,
	datac => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~47_combout\);

-- Location: LC_X5_Y3_N4
\add_instance|i[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(11) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~47_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(11),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(11));

-- Location: LC_X5_Y2_N6
\add_instance|Add0~36\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~36_combout\ = (\add_instance|i\(12) $ ((!(!\add_instance|Add0~50\ & \add_instance|Add0~44\) # (\add_instance|Add0~50\ & \add_instance|Add0~44COUT1_201\))))
-- \add_instance|Add0~38\ = CARRY(((\add_instance|i\(12) & !\add_instance|Add0~44\)))
-- \add_instance|Add0~38COUT1_202\ = CARRY(((\add_instance|i\(12) & !\add_instance|Add0~44COUT1_201\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(12),
	cin => \add_instance|Add0~50\,
	cin0 => \add_instance|Add0~44\,
	cin1 => \add_instance|Add0~44COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~36_combout\,
	cout0 => \add_instance|Add0~38\,
	cout1 => \add_instance|Add0~38COUT1_202\);

-- Location: LC_X5_Y1_N8
\add_instance|Add0~41\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~41_combout\ = ((\add_instance|Add0~36_combout\ & ((\add_instance|state.S_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add0~36_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~41_combout\);

-- Location: LC_X5_Y1_N2
\add_instance|i[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(12) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~41_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(12),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(12));

-- Location: LC_X5_Y2_N7
\add_instance|Add0~30\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~30_combout\ = (\add_instance|i\(13) $ (((!\add_instance|Add0~50\ & \add_instance|Add0~38\) # (\add_instance|Add0~50\ & \add_instance|Add0~38COUT1_202\))))
-- \add_instance|Add0~32\ = CARRY(((!\add_instance|Add0~38\) # (!\add_instance|i\(13))))
-- \add_instance|Add0~32COUT1_203\ = CARRY(((!\add_instance|Add0~38COUT1_202\) # (!\add_instance|i\(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(13),
	cin => \add_instance|Add0~50\,
	cin0 => \add_instance|Add0~38\,
	cin1 => \add_instance|Add0~38COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~30_combout\,
	cout0 => \add_instance|Add0~32\,
	cout1 => \add_instance|Add0~32COUT1_203\);

-- Location: LC_X5_Y4_N8
\add_instance|Add0~35\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~35_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~35_combout\);

-- Location: LC_X5_Y4_N3
\add_instance|i[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(13) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~35_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(13),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(13));

-- Location: LC_X5_Y2_N8
\add_instance|Add0~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~24_combout\ = (\add_instance|i\(14) $ ((!(!\add_instance|Add0~50\ & \add_instance|Add0~32\) # (\add_instance|Add0~50\ & \add_instance|Add0~32COUT1_203\))))
-- \add_instance|Add0~26\ = CARRY(((\add_instance|i\(14) & !\add_instance|Add0~32\)))
-- \add_instance|Add0~26COUT1_204\ = CARRY(((\add_instance|i\(14) & !\add_instance|Add0~32COUT1_203\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(14),
	cin => \add_instance|Add0~50\,
	cin0 => \add_instance|Add0~32\,
	cin1 => \add_instance|Add0~32COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~24_combout\,
	cout0 => \add_instance|Add0~26\,
	cout1 => \add_instance|Add0~26COUT1_204\);

-- Location: LC_X4_Y3_N3
\add_instance|Add0~29\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~29_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~29_combout\);

-- Location: LC_X4_Y3_N7
\add_instance|i[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(14) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~29_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(14),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(14));

-- Location: LC_X5_Y2_N9
\add_instance|Add0~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~18_combout\ = (\add_instance|i\(15) $ (((!\add_instance|Add0~50\ & \add_instance|Add0~26\) # (\add_instance|Add0~50\ & \add_instance|Add0~26COUT1_204\))))
-- \add_instance|Add0~20\ = CARRY(((!\add_instance|Add0~26COUT1_204\) # (!\add_instance|i\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(15),
	cin => \add_instance|Add0~50\,
	cin0 => \add_instance|Add0~26\,
	cin1 => \add_instance|Add0~26COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~18_combout\,
	cout => \add_instance|Add0~20\);

-- Location: LC_X4_Y1_N2
\add_instance|Add0~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~23_combout\ = (((\add_instance|Add0~18_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~18_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~23_combout\);

-- Location: LC_X4_Y1_N0
\add_instance|i[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(15) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~23_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(15),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(15));

-- Location: LC_X6_Y2_N0
\add_instance|Add0~186\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~186_combout\ = \add_instance|i\(16) $ ((((!\add_instance|Add0~20\))))
-- \add_instance|Add0~188\ = CARRY((\add_instance|i\(16) & ((!\add_instance|Add0~20\))))
-- \add_instance|Add0~188COUT1_205\ = CARRY((\add_instance|i\(16) & ((!\add_instance|Add0~20\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(16),
	cin => \add_instance|Add0~20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~186_combout\,
	cout0 => \add_instance|Add0~188\,
	cout1 => \add_instance|Add0~188COUT1_205\);

-- Location: LC_X7_Y3_N3
\add_instance|Add0~191\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~191_combout\ = (((\add_instance|Add0~186_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~186_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~191_combout\);

-- Location: LC_X7_Y3_N7
\add_instance|i[16]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(16) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~191_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(16),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(16));

-- Location: LC_X6_Y2_N1
\add_instance|Add0~96\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~96_combout\ = (\add_instance|i\(17) $ (((!\add_instance|Add0~20\ & \add_instance|Add0~188\) # (\add_instance|Add0~20\ & \add_instance|Add0~188COUT1_205\))))
-- \add_instance|Add0~98\ = CARRY(((!\add_instance|Add0~188\) # (!\add_instance|i\(17))))
-- \add_instance|Add0~98COUT1_206\ = CARRY(((!\add_instance|Add0~188COUT1_205\) # (!\add_instance|i\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(17),
	cin => \add_instance|Add0~20\,
	cin0 => \add_instance|Add0~188\,
	cin1 => \add_instance|Add0~188COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~96_combout\,
	cout0 => \add_instance|Add0~98\,
	cout1 => \add_instance|Add0~98COUT1_206\);

-- Location: LC_X6_Y3_N2
\add_instance|Add0~101\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~101_combout\ = (((\add_instance|Add0~96_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~96_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~101_combout\);

-- Location: LC_X6_Y3_N9
\add_instance|i[17]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(17) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~101_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(17),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(17));

-- Location: LC_X6_Y2_N2
\add_instance|Add0~102\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~102_combout\ = (\add_instance|i\(18) $ ((!(!\add_instance|Add0~20\ & \add_instance|Add0~98\) # (\add_instance|Add0~20\ & \add_instance|Add0~98COUT1_206\))))
-- \add_instance|Add0~104\ = CARRY(((\add_instance|i\(18) & !\add_instance|Add0~98\)))
-- \add_instance|Add0~104COUT1_207\ = CARRY(((\add_instance|i\(18) & !\add_instance|Add0~98COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(18),
	cin => \add_instance|Add0~20\,
	cin0 => \add_instance|Add0~98\,
	cin1 => \add_instance|Add0~98COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~102_combout\,
	cout0 => \add_instance|Add0~104\,
	cout1 => \add_instance|Add0~104COUT1_207\);

-- Location: LC_X6_Y3_N4
\add_instance|Add0~107\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~107_combout\ = (\add_instance|Add0~102_combout\ & (((\add_instance|state.S_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Add0~102_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~107_combout\);

-- Location: LC_X6_Y3_N5
\add_instance|i[18]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(18) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~107_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(18),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(18));

-- Location: LC_X6_Y2_N3
\add_instance|Add0~108\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~108_combout\ = (\add_instance|i\(19) $ (((!\add_instance|Add0~20\ & \add_instance|Add0~104\) # (\add_instance|Add0~20\ & \add_instance|Add0~104COUT1_207\))))
-- \add_instance|Add0~110\ = CARRY(((!\add_instance|Add0~104\) # (!\add_instance|i\(19))))
-- \add_instance|Add0~110COUT1_208\ = CARRY(((!\add_instance|Add0~104COUT1_207\) # (!\add_instance|i\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(19),
	cin => \add_instance|Add0~20\,
	cin0 => \add_instance|Add0~104\,
	cin1 => \add_instance|Add0~104COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~108_combout\,
	cout0 => \add_instance|Add0~110\,
	cout1 => \add_instance|Add0~110COUT1_208\);

-- Location: LC_X6_Y3_N8
\add_instance|Add0~113\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~113_combout\ = (((\add_instance|Add0~108_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~108_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~113_combout\);

-- Location: LC_X6_Y3_N0
\add_instance|i[19]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(19) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~113_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(19),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(19));

-- Location: LC_X6_Y2_N4
\add_instance|Add0~114\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~114_combout\ = (\add_instance|i\(20) $ ((!(!\add_instance|Add0~20\ & \add_instance|Add0~110\) # (\add_instance|Add0~20\ & \add_instance|Add0~110COUT1_208\))))
-- \add_instance|Add0~116\ = CARRY(((\add_instance|i\(20) & !\add_instance|Add0~110COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(20),
	cin => \add_instance|Add0~20\,
	cin0 => \add_instance|Add0~110\,
	cin1 => \add_instance|Add0~110COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~114_combout\,
	cout => \add_instance|Add0~116\);

-- Location: LC_X6_Y3_N6
\add_instance|Add0~119\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~119_combout\ = (((\add_instance|Add0~114_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~114_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~119_combout\);

-- Location: LC_X6_Y3_N7
\add_instance|i[20]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(20) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~119_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(20),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(20));

-- Location: LC_X6_Y2_N5
\add_instance|Add0~120\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~120_combout\ = (\add_instance|i\(21) $ ((\add_instance|Add0~116\)))
-- \add_instance|Add0~122\ = CARRY(((!\add_instance|Add0~116\) # (!\add_instance|i\(21))))
-- \add_instance|Add0~122COUT1_209\ = CARRY(((!\add_instance|Add0~116\) # (!\add_instance|i\(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(21),
	cin => \add_instance|Add0~116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~120_combout\,
	cout0 => \add_instance|Add0~122\,
	cout1 => \add_instance|Add0~122COUT1_209\);

-- Location: LC_X3_Y2_N3
\add_instance|Add0~125\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~125_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~125_combout\);

-- Location: LC_X3_Y2_N4
\add_instance|i[21]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(21) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~125_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(21),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(21));

-- Location: LC_X6_Y2_N6
\add_instance|Add0~126\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~126_combout\ = (\add_instance|i\(22) $ ((!(!\add_instance|Add0~116\ & \add_instance|Add0~122\) # (\add_instance|Add0~116\ & \add_instance|Add0~122COUT1_209\))))
-- \add_instance|Add0~128\ = CARRY(((\add_instance|i\(22) & !\add_instance|Add0~122\)))
-- \add_instance|Add0~128COUT1_210\ = CARRY(((\add_instance|i\(22) & !\add_instance|Add0~122COUT1_209\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(22),
	cin => \add_instance|Add0~116\,
	cin0 => \add_instance|Add0~122\,
	cin1 => \add_instance|Add0~122COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~126_combout\,
	cout0 => \add_instance|Add0~128\,
	cout1 => \add_instance|Add0~128COUT1_210\);

-- Location: LC_X3_Y2_N7
\add_instance|Add0~131\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~131_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~126_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~126_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~131_combout\);

-- Location: LC_X3_Y2_N8
\add_instance|i[22]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(22) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~131_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(22),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(22));

-- Location: LC_X6_Y2_N7
\add_instance|Add0~132\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~132_combout\ = (\add_instance|i\(23) $ (((!\add_instance|Add0~116\ & \add_instance|Add0~128\) # (\add_instance|Add0~116\ & \add_instance|Add0~128COUT1_210\))))
-- \add_instance|Add0~134\ = CARRY(((!\add_instance|Add0~128\) # (!\add_instance|i\(23))))
-- \add_instance|Add0~134COUT1_211\ = CARRY(((!\add_instance|Add0~128COUT1_210\) # (!\add_instance|i\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(23),
	cin => \add_instance|Add0~116\,
	cin0 => \add_instance|Add0~128\,
	cin1 => \add_instance|Add0~128COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~132_combout\,
	cout0 => \add_instance|Add0~134\,
	cout1 => \add_instance|Add0~134COUT1_211\);

-- Location: LC_X5_Y1_N3
\add_instance|Add0~137\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~137_combout\ = (((\add_instance|Add0~132_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~132_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~137_combout\);

-- Location: LC_X5_Y1_N4
\add_instance|i[23]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(23) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~137_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(23),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(23));

-- Location: LC_X6_Y2_N8
\add_instance|Add0~138\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~138_combout\ = (\add_instance|i\(24) $ ((!(!\add_instance|Add0~116\ & \add_instance|Add0~134\) # (\add_instance|Add0~116\ & \add_instance|Add0~134COUT1_211\))))
-- \add_instance|Add0~140\ = CARRY(((\add_instance|i\(24) & !\add_instance|Add0~134\)))
-- \add_instance|Add0~140COUT1_212\ = CARRY(((\add_instance|i\(24) & !\add_instance|Add0~134COUT1_211\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(24),
	cin => \add_instance|Add0~116\,
	cin0 => \add_instance|Add0~134\,
	cin1 => \add_instance|Add0~134COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~138_combout\,
	cout0 => \add_instance|Add0~140\,
	cout1 => \add_instance|Add0~140COUT1_212\);

-- Location: LC_X3_Y2_N5
\add_instance|Add0~143\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~143_combout\ = (((\add_instance|state.S_3~regout\ & \add_instance|Add0~138_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S_3~regout\,
	datad => \add_instance|Add0~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~143_combout\);

-- Location: LC_X3_Y2_N6
\add_instance|i[24]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(24) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~143_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(24),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(24));

-- Location: LC_X6_Y2_N9
\add_instance|Add0~144\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~144_combout\ = (\add_instance|i\(25) $ (((!\add_instance|Add0~116\ & \add_instance|Add0~140\) # (\add_instance|Add0~116\ & \add_instance|Add0~140COUT1_212\))))
-- \add_instance|Add0~146\ = CARRY(((!\add_instance|Add0~140COUT1_212\) # (!\add_instance|i\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(25),
	cin => \add_instance|Add0~116\,
	cin0 => \add_instance|Add0~140\,
	cin1 => \add_instance|Add0~140COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~144_combout\,
	cout => \add_instance|Add0~146\);

-- Location: LC_X7_Y3_N5
\add_instance|Add0~149\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~149_combout\ = (((\add_instance|Add0~144_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~144_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~149_combout\);

-- Location: LC_X7_Y3_N6
\add_instance|i[25]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(25) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~149_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(25),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(25));

-- Location: LC_X7_Y2_N0
\add_instance|Add0~150\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~150_combout\ = (\add_instance|i\(26) $ ((!\add_instance|Add0~146\)))
-- \add_instance|Add0~152\ = CARRY(((\add_instance|i\(26) & !\add_instance|Add0~146\)))
-- \add_instance|Add0~152COUT1_213\ = CARRY(((\add_instance|i\(26) & !\add_instance|Add0~146\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(26),
	cin => \add_instance|Add0~146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~150_combout\,
	cout0 => \add_instance|Add0~152\,
	cout1 => \add_instance|Add0~152COUT1_213\);

-- Location: LC_X7_Y3_N1
\add_instance|Add0~155\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~155_combout\ = (((\add_instance|Add0~150_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~150_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~155_combout\);

-- Location: LC_X7_Y3_N2
\add_instance|i[26]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(26) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~155_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(26),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(26));

-- Location: LC_X7_Y2_N1
\add_instance|Add0~156\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~156_combout\ = \add_instance|i\(27) $ (((((!\add_instance|Add0~146\ & \add_instance|Add0~152\) # (\add_instance|Add0~146\ & \add_instance|Add0~152COUT1_213\)))))
-- \add_instance|Add0~158\ = CARRY(((!\add_instance|Add0~152\)) # (!\add_instance|i\(27)))
-- \add_instance|Add0~158COUT1_214\ = CARRY(((!\add_instance|Add0~152COUT1_213\)) # (!\add_instance|i\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(27),
	cin => \add_instance|Add0~146\,
	cin0 => \add_instance|Add0~152\,
	cin1 => \add_instance|Add0~152COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~156_combout\,
	cout0 => \add_instance|Add0~158\,
	cout1 => \add_instance|Add0~158COUT1_214\);

-- Location: LC_X7_Y2_N9
\add_instance|Add0~161\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~161_combout\ = ((\add_instance|Add0~156_combout\ & ((\add_instance|state.S_3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Add0~156_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~161_combout\);

-- Location: LC_X7_Y2_N6
\add_instance|i[27]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(27) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~161_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(27),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(27));

-- Location: LC_X7_Y2_N2
\add_instance|Add0~162\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~162_combout\ = (\add_instance|i\(28) $ ((!(!\add_instance|Add0~146\ & \add_instance|Add0~158\) # (\add_instance|Add0~146\ & \add_instance|Add0~158COUT1_214\))))
-- \add_instance|Add0~164\ = CARRY(((\add_instance|i\(28) & !\add_instance|Add0~158\)))
-- \add_instance|Add0~164COUT1_215\ = CARRY(((\add_instance|i\(28) & !\add_instance|Add0~158COUT1_214\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(28),
	cin => \add_instance|Add0~146\,
	cin0 => \add_instance|Add0~158\,
	cin1 => \add_instance|Add0~158COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~162_combout\,
	cout0 => \add_instance|Add0~164\,
	cout1 => \add_instance|Add0~164COUT1_215\);

-- Location: LC_X7_Y3_N8
\add_instance|Add0~167\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~167_combout\ = (((\add_instance|Add0~162_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~162_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~167_combout\);

-- Location: LC_X7_Y3_N9
\add_instance|i[28]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(28) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~167_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(28),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(28));

-- Location: LC_X6_Y3_N3
\add_instance|Equal16~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~8_combout\ = (!\add_instance|i\(25) & (!\add_instance|i\(28) & (!\add_instance|i\(26) & !\add_instance|i\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(25),
	datab => \add_instance|i\(28),
	datac => \add_instance|i\(26),
	datad => \add_instance|i\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~8_combout\);

-- Location: LC_X5_Y4_N6
\add_instance|Equal16~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~0_combout\ = (!\add_instance|i\(13) & (!\add_instance|i\(14) & (!\add_instance|i\(12) & !\add_instance|i\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(13),
	datab => \add_instance|i\(14),
	datac => \add_instance|i\(12),
	datad => \add_instance|i\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~0_combout\);

-- Location: LC_X5_Y3_N0
\add_instance|Equal16~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~1_combout\ = (!\add_instance|i\(11) & (!\add_instance|i\(10) & (!\add_instance|i\(8) & !\add_instance|i\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(11),
	datab => \add_instance|i\(10),
	datac => \add_instance|i\(8),
	datad => \add_instance|i\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~1_combout\);

-- Location: LC_X5_Y4_N4
\add_instance|Equal16~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~2_combout\ = (!\add_instance|i\(5) & (!\add_instance|i\(4) & (!\add_instance|i\(7) & !\add_instance|i\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(5),
	datab => \add_instance|i\(4),
	datac => \add_instance|i\(7),
	datad => \add_instance|i\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~2_combout\);

-- Location: LC_X5_Y4_N9
\add_instance|Equal16~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~3_combout\ = (!\add_instance|i\(2) & (!\add_instance|i\(0) & (\add_instance|i\(3) & !\add_instance|i\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(2),
	datab => \add_instance|i\(0),
	datac => \add_instance|i\(3),
	datad => \add_instance|i\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~3_combout\);

-- Location: LC_X5_Y4_N7
\add_instance|Equal16~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~4_combout\ = (\add_instance|Equal16~0_combout\ & (\add_instance|Equal16~1_combout\ & (\add_instance|Equal16~2_combout\ & \add_instance|Equal16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal16~0_combout\,
	datab => \add_instance|Equal16~1_combout\,
	datac => \add_instance|Equal16~2_combout\,
	datad => \add_instance|Equal16~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~4_combout\);

-- Location: LC_X7_Y2_N3
\add_instance|Add0~168\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~168_combout\ = (\add_instance|i\(29) $ (((!\add_instance|Add0~146\ & \add_instance|Add0~164\) # (\add_instance|Add0~146\ & \add_instance|Add0~164COUT1_215\))))
-- \add_instance|Add0~170\ = CARRY(((!\add_instance|Add0~164\) # (!\add_instance|i\(29))))
-- \add_instance|Add0~170COUT1_216\ = CARRY(((!\add_instance|Add0~164COUT1_215\) # (!\add_instance|i\(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(29),
	cin => \add_instance|Add0~146\,
	cin0 => \add_instance|Add0~164\,
	cin1 => \add_instance|Add0~164COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~168_combout\,
	cout0 => \add_instance|Add0~170\,
	cout1 => \add_instance|Add0~170COUT1_216\);

-- Location: LC_X7_Y2_N8
\add_instance|Add0~173\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~173_combout\ = (((\add_instance|Add0~168_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~168_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~173_combout\);

-- Location: LC_X7_Y2_N7
\add_instance|i[29]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(29) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~173_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(29),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(29));

-- Location: LC_X7_Y2_N4
\add_instance|Add0~174\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~174_combout\ = (\add_instance|i\(30) $ ((!(!\add_instance|Add0~146\ & \add_instance|Add0~170\) # (\add_instance|Add0~146\ & \add_instance|Add0~170COUT1_216\))))
-- \add_instance|Add0~176\ = CARRY(((\add_instance|i\(30) & !\add_instance|Add0~170COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(30),
	cin => \add_instance|Add0~146\,
	cin0 => \add_instance|Add0~170\,
	cin1 => \add_instance|Add0~170COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~174_combout\,
	cout => \add_instance|Add0~176\);

-- Location: LC_X6_Y1_N0
\add_instance|Add0~179\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~179_combout\ = (((\add_instance|Add0~174_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~174_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~179_combout\);

-- Location: LC_X6_Y1_N1
\add_instance|i[30]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(30) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~179_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|i\(30),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(30));

-- Location: LC_X7_Y2_N5
\add_instance|Add0~180\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~180_combout\ = ((\add_instance|Add0~176\ $ (\add_instance|i\(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|i\(31),
	cin => \add_instance|Add0~176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~180_combout\);

-- Location: LC_X6_Y1_N2
\add_instance|Add0~185\ : maxv_lcell
-- Equation(s):
-- \add_instance|Add0~185_combout\ = (((\add_instance|Add0~180_combout\ & \add_instance|state.S_3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|Add0~180_combout\,
	datad => \add_instance|state.S_3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Add0~185_combout\);

-- Location: LC_X6_Y1_N3
\add_instance|i[31]\ : maxv_lcell
-- Equation(s):
-- \add_instance|i\(31) = ((GLOBAL(\add_instance|Selector0~0_combout\) & ((\add_instance|Add0~185_combout\))) # (!GLOBAL(\add_instance|Selector0~0_combout\) & (\add_instance|i\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(31),
	datac => \add_instance|Selector0~0_combout\,
	datad => \add_instance|Add0~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|i\(31));

-- Location: LC_X6_Y1_N4
\add_instance|Equal16~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~9_combout\ = (!\add_instance|i\(31) & (!\add_instance|i\(30) & (!\add_instance|i\(29) & !\add_instance|i\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(31),
	datab => \add_instance|i\(30),
	datac => \add_instance|i\(29),
	datad => \add_instance|i\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~9_combout\);

-- Location: LC_X6_Y3_N1
\add_instance|Equal16~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~5_combout\ = (!\add_instance|i\(20) & (!\add_instance|i\(19) & (!\add_instance|i\(18) & !\add_instance|i\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(20),
	datab => \add_instance|i\(19),
	datac => \add_instance|i\(18),
	datad => \add_instance|i\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~5_combout\);

-- Location: LC_X3_Y2_N9
\add_instance|Equal16~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~6_combout\ = (((!\add_instance|i\(21) & !\add_instance|i\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|i\(21),
	datad => \add_instance|i\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~6_combout\);

-- Location: LC_X5_Y4_N1
\add_instance|Equal16~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~7_combout\ = (!\add_instance|i\(23) & (!\add_instance|i\(24) & (\add_instance|Equal16~5_combout\ & \add_instance|Equal16~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(23),
	datab => \add_instance|i\(24),
	datac => \add_instance|Equal16~5_combout\,
	datad => \add_instance|Equal16~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~7_combout\);

-- Location: LC_X5_Y4_N2
\add_instance|Equal16~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal16~10_combout\ = (\add_instance|Equal16~8_combout\ & (\add_instance|Equal16~4_combout\ & (\add_instance|Equal16~9_combout\ & \add_instance|Equal16~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal16~8_combout\,
	datab => \add_instance|Equal16~4_combout\,
	datac => \add_instance|Equal16~9_combout\,
	datad => \add_instance|Equal16~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal16~10_combout\);

-- Location: LC_X2_Y4_N9
\add_instance|Equal14~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~7_combout\ = (\input_vector~combout\(18) & (!\input_vector~combout\(15) & (\input_vector~combout\(17) & !\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~7_combout\);

-- Location: LC_X3_Y4_N4
\add_instance|Selector36~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector36~1_combout\ = (!\add_instance|Equal14~6_combout\ & (!\add_instance|Equal14~2_combout\ & (!\add_instance|Equal14~7_combout\ & !\add_instance|Equal14~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal14~6_combout\,
	datab => \add_instance|Equal14~2_combout\,
	datac => \add_instance|Equal14~7_combout\,
	datad => \add_instance|Equal14~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector36~1_combout\);

-- Location: LC_X4_Y4_N2
\add_instance|Selector36~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector36~2_combout\ = (!\add_instance|Equal14~0_combout\ & (\add_instance|Selector36~1_combout\ & (\add_instance|Selector38~0_combout\ & !\add_instance|nstate.S5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0040",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Equal14~0_combout\,
	datab => \add_instance|Selector36~1_combout\,
	datac => \add_instance|Selector38~0_combout\,
	datad => \add_instance|nstate.S5~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector36~2_combout\);

-- Location: LC_X4_Y4_N3
\add_instance|state.S0\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S0~regout\ = DFFEAS((\add_instance|Selector36~6_combout\) # ((\add_instance|Selector36~2_combout\) # ((\add_instance|state.S_3~regout\ & \add_instance|Equal16~10_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffec",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|state.S_3~regout\,
	datab => \add_instance|Selector36~6_combout\,
	datac => \add_instance|Equal16~10_combout\,
	datad => \add_instance|Selector36~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S0~regout\);

-- Location: LC_X4_Y1_N3
\add_instance|state.S1\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S1~regout\ = DFFEAS(GND, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S0~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|state.S0~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S1~regout\);

-- Location: LC_X6_Y1_N9
\add_instance|state.S_1\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S_1~regout\ = DFFEAS(GND, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|state.S1~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S_1~regout\);

-- Location: LC_X2_Y4_N5
\add_instance|state.S2\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S2~regout\ = DFFEAS((((!\add_instance|Equal14~4_combout\ & \add_instance|state.S_1~regout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|Equal14~4_combout\,
	datad => \add_instance|state.S_1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S2~regout\);

-- Location: LC_X2_Y3_N5
\add_instance|state.S8\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S8~regout\ = DFFEAS((\input_vector~combout\(15) & (\input_vector~combout\(17) & (\add_instance|state.S2~regout\ & !\input_vector~combout\(18)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(17),
	datac => \add_instance|state.S2~regout\,
	datad => \input_vector~combout\(18),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S8~regout\);

-- Location: LC_X2_Y3_N0
\add_instance|Equal14~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|Equal14~8_combout\ = (\input_vector~combout\(15) & (!\input_vector~combout\(18) & (\input_vector~combout\(17) & !\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0020",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(18),
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Equal14~8_combout\);

-- Location: LC_X3_Y2_N0
\add_instance|state.S12\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S12~regout\ = DFFEAS((((\add_instance|state.S9~regout\ & \add_instance|Equal14~8_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|state.S9~regout\,
	datad => \add_instance|Equal14~8_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S12~regout\);

-- Location: LC_X4_Y1_N6
\add_instance|state.S18\ : maxv_lcell
-- Equation(s):
-- \add_instance|wr_Mem\ = (((B1_state.S18) # (\add_instance|state.S13~regout\)))
-- \add_instance|state.S18~regout\ = DFFEAS(\add_instance|wr_Mem\, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S17~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datac => \add_instance|state.S17~regout\,
	datad => \add_instance|state.S13~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|wr_Mem\,
	regout => \add_instance|state.S18~regout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X3_Y3_N1
\add_instance|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~0_combout\ = (\add_instance|i\(1) & (((\input_vector~combout\(6)) # (\add_instance|i\(3))))) # (!\add_instance|i\(1) & (\input_vector~combout\(4) & ((!\add_instance|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(6),
	datac => \add_instance|i\(1),
	datad => \add_instance|i\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~0_combout\);

-- Location: LC_X3_Y3_N2
\add_instance|Mux1~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~1_combout\ = (\add_instance|i\(3) & ((\add_instance|Mux1~0_combout\ & (\input_vector~combout\(14))) # (!\add_instance|Mux1~0_combout\ & ((\input_vector~combout\(12)))))) # (!\add_instance|i\(3) & (((\add_instance|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(14),
	datab => \input_vector~combout\(12),
	datac => \add_instance|i\(3),
	datad => \add_instance|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~1_combout\);

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X3_Y3_N5
\add_instance|Mux1~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~4_combout\ = (\add_instance|i\(1) & ((\input_vector~combout\(5)) # ((\add_instance|i\(3))))) # (!\add_instance|i\(1) & (((\input_vector~combout\(3) & !\add_instance|i\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(5),
	datab => \input_vector~combout\(3),
	datac => \add_instance|i\(1),
	datad => \add_instance|i\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~4_combout\);

-- Location: LC_X3_Y3_N6
\add_instance|Mux1~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~5_combout\ = (\add_instance|i\(3) & ((\add_instance|Mux1~4_combout\ & (\input_vector~combout\(13))) # (!\add_instance|Mux1~4_combout\ & ((\input_vector~combout\(11)))))) # (!\add_instance|i\(3) & (((\add_instance|Mux1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(13),
	datab => \input_vector~combout\(11),
	datac => \add_instance|i\(3),
	datad => \add_instance|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~5_combout\);

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X3_Y3_N3
\add_instance|Mux1~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~2_combout\ = (\add_instance|i\(1) & (((\add_instance|i\(3))))) # (!\add_instance|i\(1) & ((\add_instance|i\(3) & ((\input_vector~combout\(15)))) # (!\add_instance|i\(3) & (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(15),
	datac => \add_instance|i\(1),
	datad => \add_instance|i\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~2_combout\);

-- Location: LC_X3_Y3_N4
\add_instance|Mux1~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~3_combout\ = (\add_instance|i\(1) & ((\add_instance|Mux1~2_combout\ & (\input_vector~combout\(17))) # (!\add_instance|Mux1~2_combout\ & ((\input_vector~combout\(9)))))) # (!\add_instance|i\(1) & (((\add_instance|Mux1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(17),
	datab => \input_vector~combout\(9),
	datac => \add_instance|i\(1),
	datad => \add_instance|Mux1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~3_combout\);

-- Location: LC_X4_Y3_N4
\add_instance|Mux1~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~6_combout\ = (\add_instance|i\(2) & ((\add_instance|i\(0)) # ((\add_instance|Mux1~3_combout\)))) # (!\add_instance|i\(2) & (!\add_instance|i\(0) & (\add_instance|Mux1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(2),
	datab => \add_instance|i\(0),
	datac => \add_instance|Mux1~5_combout\,
	datad => \add_instance|Mux1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~6_combout\);

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X4_Y3_N8
\add_instance|Mux1~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~7_combout\ = (\add_instance|i\(1) & (((\add_instance|i\(3))))) # (!\add_instance|i\(1) & ((\add_instance|i\(3) & ((\input_vector~combout\(16)))) # (!\add_instance|i\(3) & (\input_vector~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|i\(1),
	datac => \add_instance|i\(3),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~7_combout\);

-- Location: LC_X4_Y3_N9
\add_instance|Mux1~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~8_combout\ = (\add_instance|i\(1) & ((\add_instance|Mux1~7_combout\ & (\input_vector~combout\(18))) # (!\add_instance|Mux1~7_combout\ & ((\input_vector~combout\(10)))))) # (!\add_instance|i\(1) & (((\add_instance|Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \add_instance|i\(1),
	datac => \input_vector~combout\(10),
	datad => \add_instance|Mux1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~8_combout\);

-- Location: LC_X4_Y3_N1
\add_instance|Mux1~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux1~9_combout\ = (\add_instance|i\(0) & ((\add_instance|Mux1~6_combout\ & ((\add_instance|Mux1~8_combout\))) # (!\add_instance|Mux1~6_combout\ & (\add_instance|Mux1~1_combout\)))) # (!\add_instance|i\(0) & 
-- (((\add_instance|Mux1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f858",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|i\(0),
	datab => \add_instance|Mux1~1_combout\,
	datac => \add_instance|Mux1~6_combout\,
	datad => \add_instance|Mux1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux1~9_combout\);

-- Location: LC_X4_Y3_N2
\add_instance|state.S14\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S14~regout\ = DFFEAS(((\add_instance|Equal14~7_combout\ & (\add_instance|Mux1~9_combout\ & \add_instance|Selector38~0_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|Equal14~7_combout\,
	datac => \add_instance|Mux1~9_combout\,
	datad => \add_instance|Selector38~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S14~regout\);

-- Location: LC_X3_Y1_N8
\add_instance|state.S15\ : maxv_lcell
-- Equation(s):
-- \add_instance|dec[0]~0\ = ((\add_instance|i\(0) & ((\add_instance|state.S17~regout\) # (B1_state.S15))))
-- \add_instance|state.S15~regout\ = DFFEAS(\add_instance|dec[0]~0\, GLOBAL(\input_vector~combout\(0)), VCC, , , \add_instance|state.S14~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|state.S17~regout\,
	datac => \add_instance|state.S14~regout\,
	datad => \add_instance|i\(0),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|dec[0]~0\,
	regout => \add_instance|state.S15~regout\);

-- Location: LC_X3_Y1_N0
\add_instance|state.S16\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S16~regout\ = DFFEAS((\add_instance|state.S18~regout\) # (((\add_instance|state.S15~regout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|state.S18~regout\,
	datad => \add_instance|state.S15~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S16~regout\);

-- Location: LC_X4_Y3_N6
\add_instance|state.S_3\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S_3~regout\ = DFFEAS((\add_instance|state.S16~regout\) # ((\add_instance|fsm~0_combout\ & (\add_instance|Selector38~0_combout\ & !\add_instance|Mux1~9_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaea",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|state.S16~regout\,
	datab => \add_instance|fsm~0_combout\,
	datac => \add_instance|Selector38~0_combout\,
	datad => \add_instance|Mux1~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S_3~regout\);

-- Location: LC_X3_Y4_N0
\add_instance|state.S25\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S25~regout\ = DFFEAS((\add_instance|Equal14~4_combout\ & (((\add_instance|state.S_1~regout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal14~4_combout\,
	datad => \add_instance|state.S_1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S25~regout\);

-- Location: LC_X3_Y4_N9
\add_instance|Selector37~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector37~1_combout\ = ((\add_instance|state.S25~regout\) # ((\add_instance|state.S22~regout\ & \add_instance|Equal14~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S22~regout\,
	datac => \add_instance|state.S25~regout\,
	datad => \add_instance|Equal14~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector37~1_combout\);

-- Location: LC_X2_Y4_N8
\add_instance|Selector37~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector37~0_combout\ = ((\add_instance|nstate.S22~0_combout\ & ((\add_instance|fsm~0_combout\) # (!\add_instance|nstate~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f300",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|nstate~1_combout\,
	datac => \add_instance|fsm~0_combout\,
	datad => \add_instance|nstate.S22~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector37~0_combout\);

-- Location: LC_X5_Y4_N0
\add_instance|state.S3\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S3~regout\ = DFFEAS((\add_instance|Selector37~1_combout\) # ((\add_instance|Selector37~0_combout\) # ((\add_instance|state.S_3~regout\ & !\add_instance|Equal16~10_combout\))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff2",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|state.S_3~regout\,
	datab => \add_instance|Equal16~10_combout\,
	datac => \add_instance|Selector37~1_combout\,
	datad => \add_instance|Selector37~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S3~regout\);

-- Location: LC_X6_Y4_N7
\add_instance|Selector38~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector38~0_combout\ = (\add_instance|state.S3~regout\ & (((\input_vector~combout\(3) & \input_vector~combout\(4))) # (!\add_instance|fsm~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "80f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(4),
	datac => \add_instance|state.S3~regout\,
	datad => \add_instance|fsm~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector38~0_combout\);

-- Location: LC_X4_Y3_N5
\add_instance|state.S17\ : maxv_lcell
-- Equation(s):
-- \add_instance|state.S17~regout\ = DFFEAS((\add_instance|Equal14~0_combout\ & (((\add_instance|Selector38~0_combout\ & \add_instance|Mux1~9_combout\)))), GLOBAL(\input_vector~combout\(0)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Equal14~0_combout\,
	datac => \add_instance|Selector38~0_combout\,
	datad => \add_instance|Mux1~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|state.S17~regout\);

-- Location: LC_X3_Y1_N9
\add_instance|dec[1]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|dec[1]~1_combout\ = (\add_instance|i\(1) & ((\add_instance|state.S15~regout\) # ((\add_instance|state.S17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S15~regout\,
	datab => \add_instance|i\(1),
	datad => \add_instance|state.S17~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|dec[1]~1_combout\);

-- Location: LC_X3_Y1_N5
\add_instance|dec[2]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|dec[2]~2_combout\ = (\add_instance|i\(2) & ((\add_instance|state.S15~regout\) # ((\add_instance|state.S17~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S15~regout\,
	datab => \add_instance|state.S17~regout\,
	datac => \add_instance|i\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|dec[2]~2_combout\);

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X6_Y4_N2
\add_instance|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Mux0~0_combout\ = (\input_vector~combout\(4) & (((!\input_vector~combout\(3) & \input_vector~combout\(2))))) # (!\input_vector~combout\(4) & ((\input_vector~combout\(1)) # ((!\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f23",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Mux0~0_combout\);

-- Location: LC_X6_Y4_N9
\add_instance|Selector4~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector4~0_combout\ = (((\add_instance|state.S4~regout\ & \add_instance|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S4~regout\,
	datad => \add_instance|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector4~0_combout\);

-- Location: LC_X7_Y4_N8
\add_instance|Selector2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector2~0_combout\ = (!\add_instance|state.S19~regout\ & (\add_instance|WideOr4~0\ & ((!\add_instance|state.S9~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0044",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S19~regout\,
	datab => \add_instance|WideOr4~0\,
	datad => \add_instance|state.S9~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector2~0_combout\);

-- Location: LC_X7_Y4_N4
\add_instance|Selector2~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector2~1_combout\ = ((!\input_vector~combout\(16) & (\add_instance|Selector4~0_combout\ & \input_vector~combout\(15)))) # (!\add_instance|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \add_instance|Selector4~0_combout\,
	datac => \input_vector~combout\(15),
	datad => \add_instance|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector2~1_combout\);

-- Location: LC_X7_Y4_N3
\add_instance|Selector1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector1~0_combout\ = (\add_instance|state.S19~regout\) # ((!\input_vector~combout\(15) & (\add_instance|Selector4~0_combout\ & \input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \add_instance|Selector4~0_combout\,
	datac => \add_instance|state.S19~regout\,
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector1~0_combout\);

-- Location: LC_X7_Y4_N2
\add_instance|Selector4~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector4~1_combout\ = ((\add_instance|Selector4~0_combout\ & (\input_vector~combout\(16) $ (\input_vector~combout\(15))))) # (!\add_instance|Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "48ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \add_instance|Selector4~0_combout\,
	datac => \input_vector~combout\(15),
	datad => \add_instance|Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector4~1_combout\);

-- Location: LC_X7_Y4_N9
\add_instance|Selector3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector3~0_combout\ = ((\input_vector~combout\(15) & (!\input_vector~combout\(16) & \add_instance|Selector4~0_combout\))) # (!\add_instance|WideOr4~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3b33",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \add_instance|WideOr4~0\,
	datac => \input_vector~combout\(16),
	datad => \add_instance|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector3~0_combout\);

-- Location: LC_X3_Y1_N6
\add_instance|WideOr2\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr2~combout\ = ((\add_instance|state.S16~regout\) # ((\add_instance|state.S25~regout\) # (\add_instance|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|state.S16~regout\,
	datac => \add_instance|state.S25~regout\,
	datad => \add_instance|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr2~combout\);

-- Location: LC_X3_Y1_N7
\add_instance|wr_T3\ : maxv_lcell
-- Equation(s):
-- \add_instance|wr_T3~combout\ = (((\add_instance|state.S25~regout\) # (\add_instance|state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S25~regout\,
	datad => \add_instance|state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|wr_T3~combout\);

-- Location: LC_X4_Y1_N7
\add_instance|WideOr9~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr9~0_combout\ = (\add_instance|state.S3~regout\) # ((\add_instance|state.S17~regout\) # ((\add_instance|state.S9~regout\) # (\add_instance|state.S14~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S3~regout\,
	datab => \add_instance|state.S17~regout\,
	datac => \add_instance|state.S9~regout\,
	datad => \add_instance|state.S14~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr9~0_combout\);

-- Location: LC_X4_Y1_N4
\add_instance|WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr1~0_combout\ = (\add_instance|state.S0~regout\) # ((\add_instance|state.S3~regout\) # ((\add_instance|state.S12~regout\) # (\add_instance|state.S8~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S0~regout\,
	datab => \add_instance|state.S3~regout\,
	datac => \add_instance|state.S12~regout\,
	datad => \add_instance|state.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr1~0_combout\);

-- Location: LC_X4_Y1_N5
\add_instance|WideOr1\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr1~combout\ = (\add_instance|state.S20~regout\) # (((\add_instance|state.S10~regout\) # (\add_instance|WideOr1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S20~regout\,
	datac => \add_instance|state.S10~regout\,
	datad => \add_instance|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr1~combout\);

-- Location: LC_X3_Y1_N3
\add_instance|WideOr5~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr5~0_combout\ = (!\add_instance|state.S2~regout\ & (!\add_instance|state.S16~regout\ & (\add_instance|Selector36~0_combout\ & !\add_instance|state.S15~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S2~regout\,
	datab => \add_instance|state.S16~regout\,
	datac => \add_instance|Selector36~0_combout\,
	datad => \add_instance|state.S15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr5~0_combout\);

-- Location: LC_X2_Y3_N7
\add_instance|WideOr8\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr8~combout\ = (\add_instance|state.S7~regout\) # (((\add_instance|state.S11~regout\) # (\add_instance|state.S22~regout\)) # (!\add_instance|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S7~regout\,
	datab => \add_instance|WideOr5~0_combout\,
	datac => \add_instance|state.S11~regout\,
	datad => \add_instance|state.S22~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr8~combout\);

-- Location: LC_X2_Y2_N9
\add_instance|select_Mux_ALU_B[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|select_Mux_ALU_B\(0) = (((\add_instance|state.S23~regout\) # (\add_instance|state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S23~regout\,
	datad => \add_instance|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|select_Mux_ALU_B\(0));

-- Location: LC_X4_Y4_N6
\add_instance|WideOr10\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr10~combout\ = (\add_instance|state.S23~regout\) # ((\add_instance|state.S9~regout\) # ((\add_instance|state.S21~regout\) # (\add_instance|state.S6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S23~regout\,
	datab => \add_instance|state.S9~regout\,
	datac => \add_instance|state.S21~regout\,
	datad => \add_instance|state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr10~combout\);

-- Location: LC_X2_Y3_N8
\add_instance|WideOr4\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr4~combout\ = ((\add_instance|state.S22~regout\) # ((\add_instance|state.S4~regout\) # (!\add_instance|WideOr4~0\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|state.S22~regout\,
	datac => \add_instance|state.S4~regout\,
	datad => \add_instance|WideOr4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr4~combout\);

-- Location: LC_X2_Y3_N3
\add_instance|WideOr3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr3~0_combout\ = (\add_instance|state.S7~regout\) # ((\add_instance|state.S2~regout\) # ((\add_instance|state.S16~regout\) # (\add_instance|state.S26~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S7~regout\,
	datab => \add_instance|state.S2~regout\,
	datac => \add_instance|state.S16~regout\,
	datad => \add_instance|state.S26~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr3~0_combout\);

-- Location: LC_X2_Y3_N1
\add_instance|WideOr8~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr8~2_combout\ = ((!\add_instance|state.S7~regout\ & (!\add_instance|state.S11~regout\ & !\add_instance|state.S22~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|state.S7~regout\,
	datac => \add_instance|state.S11~regout\,
	datad => \add_instance|state.S22~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr8~2_combout\);

-- Location: LC_X2_Y3_N4
\add_instance|WideOr7\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr7~combout\ = (\add_instance|state.S4~regout\) # (((\add_instance|state.S16~regout\) # (\add_instance|state.S5~regout\)) # (!\add_instance|WideOr8~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S4~regout\,
	datab => \add_instance|WideOr8~2_combout\,
	datac => \add_instance|state.S16~regout\,
	datad => \add_instance|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr7~combout\);

-- Location: LC_X2_Y3_N9
\add_instance|WideOr6\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr6~combout\ = (\add_instance|state.S6~regout\) # (((\add_instance|state.S4~regout\) # (\add_instance|state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|state.S6~regout\,
	datac => \add_instance|state.S4~regout\,
	datad => \add_instance|state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr6~combout\);

-- Location: LC_X6_Y1_N8
\add_instance|select_Mux_RF_A1[0]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|select_Mux_RF_A1[0]~2_combout\ = (((!\add_instance|state.S3~regout\ & !\add_instance|state.S12~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S3~regout\,
	datad => \add_instance|state.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|select_Mux_RF_A1[0]~2_combout\);

-- Location: LC_X4_Y1_N8
\add_instance|select_Mux_Mem_A\ : maxv_lcell
-- Equation(s):
-- \add_instance|select_Mux_Mem_A~combout\ = (((\add_instance|state.S10~regout\) # (\add_instance|state.S13~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|state.S10~regout\,
	datad => \add_instance|state.S13~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|select_Mux_Mem_A~combout\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|dec[0]~0\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|dec[1]~1_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|dec[2]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector2~1_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector1~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector4~1_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector3~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr2~combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S1~regout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|wr_T3~combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr9~0_combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr1~combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr8~combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|wr_Mem\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_L5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S18~regout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|select_Mux_ALU_B\(0),
	oe => VCC,
	padio => ww_output_vector(15));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr10~combout\,
	oe => VCC,
	padio => ww_output_vector(16));

-- Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(17));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S14~regout\,
	oe => VCC,
	padio => ww_output_vector(18));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S9~regout\,
	oe => VCC,
	padio => ww_output_vector(19));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S10~regout\,
	oe => VCC,
	padio => ww_output_vector(20));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALT_INV_WideOr5~0_combout\,
	oe => VCC,
	padio => ww_output_vector(21));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr4~combout\,
	oe => VCC,
	padio => ww_output_vector(22));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr3~0_combout\,
	oe => VCC,
	padio => ww_output_vector(23));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr7~combout\,
	oe => VCC,
	padio => ww_output_vector(24));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|WideOr6~combout\,
	oe => VCC,
	padio => ww_output_vector(25));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S15~regout\,
	oe => VCC,
	padio => ww_output_vector(26));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S17~regout\,
	oe => VCC,
	padio => ww_output_vector(27));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALT_INV_select_Mux_RF_A1[0]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(28));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|state.S8~regout\,
	oe => VCC,
	padio => ww_output_vector(29));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|select_Mux_Mem_A~combout\,
	oe => VCC,
	padio => ww_output_vector(30));
END structure;


