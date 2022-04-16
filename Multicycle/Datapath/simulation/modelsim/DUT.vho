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

-- DATE "04/16/2022 23:29:38"

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

ENTITY 	controller IS
    PORT (
	IR : IN std_logic_vector(15 DOWNTO 0);
	cy : IN std_logic;
	z : IN std_logic;
	clk : IN std_logic;
	wr_IR : OUT std_logic;
	wr_RF : OUT std_logic;
	wr_T1 : OUT std_logic;
	wr_T2 : OUT std_logic;
	wr_T3 : OUT std_logic;
	wr_inc : OUT std_logic;
	wr_Mem : OUT std_logic;
	wr_cy : OUT std_logic;
	wr_z : OUT std_logic;
	select_Mux_RF_A3 : OUT std_logic_vector(2 DOWNTO 0);
	select_Mux_RF_D3 : OUT std_logic_vector(2 DOWNTO 0);
	dec : OUT std_logic_vector(2 DOWNTO 0);
	select_Mux_RF_A1 : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_ALU_B : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_T2 : OUT std_logic_vector(1 DOWNTO 0);
	select_ALU : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_Mem_A : OUT std_logic;
	select_Mux_Mem_D : OUT std_logic;
	select_Mux_RF_A2 : OUT std_logic;
	select_Mux_T1 : OUT std_logic;
	select_Mux_ALU_A : OUT std_logic
	);
END controller;

-- Design Ports Information


ARCHITECTURE structure OF controller IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IR : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_cy : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_wr_IR : std_logic;
SIGNAL ww_wr_RF : std_logic;
SIGNAL ww_wr_T1 : std_logic;
SIGNAL ww_wr_T2 : std_logic;
SIGNAL ww_wr_T3 : std_logic;
SIGNAL ww_wr_inc : std_logic;
SIGNAL ww_wr_Mem : std_logic;
SIGNAL ww_wr_cy : std_logic;
SIGNAL ww_wr_z : std_logic;
SIGNAL ww_select_Mux_RF_A3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_select_Mux_RF_D3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_select_Mux_RF_A1 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_ALU_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_T2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_ALU : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_Mem_A : std_logic;
SIGNAL ww_select_Mux_Mem_D : std_logic;
SIGNAL ww_select_Mux_RF_A2 : std_logic;
SIGNAL ww_select_Mux_T1 : std_logic;
SIGNAL ww_select_Mux_ALU_A : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \nstate~1_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \state.S2~regout\ : std_logic;
SIGNAL \fsm~0_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~8COUT1_193\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~14COUT1_194\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~44COUT1_195\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~38COUT1_196\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~26COUT1_197\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~20COUT1_198\ : std_logic;
SIGNAL \Add0~186_combout\ : std_logic;
SIGNAL \Add0~191_combout\ : std_logic;
SIGNAL \Add0~188\ : std_logic;
SIGNAL \Add0~188COUT1_199\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~50COUT1_200\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_201\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~68\ : std_logic;
SIGNAL \Add0~68COUT1_202\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~74\ : std_logic;
SIGNAL \Add0~74COUT1_203\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~80\ : std_logic;
SIGNAL \Add0~80COUT1_204\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~86\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_205\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Add0~101_combout\ : std_logic;
SIGNAL \Add0~98\ : std_logic;
SIGNAL \Add0~98COUT1_206\ : std_logic;
SIGNAL \Add0~102_combout\ : std_logic;
SIGNAL \Add0~107_combout\ : std_logic;
SIGNAL \Add0~104\ : std_logic;
SIGNAL \Add0~104COUT1_207\ : std_logic;
SIGNAL \Add0~108_combout\ : std_logic;
SIGNAL \Add0~113_combout\ : std_logic;
SIGNAL \Add0~110\ : std_logic;
SIGNAL \Add0~110COUT1_208\ : std_logic;
SIGNAL \Add0~114_combout\ : std_logic;
SIGNAL \Add0~119_combout\ : std_logic;
SIGNAL \Add0~116\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_209\ : std_logic;
SIGNAL \Add0~126_combout\ : std_logic;
SIGNAL \Add0~131_combout\ : std_logic;
SIGNAL \Add0~128\ : std_logic;
SIGNAL \Add0~128COUT1_210\ : std_logic;
SIGNAL \Add0~132_combout\ : std_logic;
SIGNAL \Add0~137_combout\ : std_logic;
SIGNAL \Add0~134\ : std_logic;
SIGNAL \Add0~134COUT1_211\ : std_logic;
SIGNAL \Add0~138_combout\ : std_logic;
SIGNAL \Add0~143_combout\ : std_logic;
SIGNAL \Add0~140\ : std_logic;
SIGNAL \Add0~140COUT1_212\ : std_logic;
SIGNAL \Add0~144_combout\ : std_logic;
SIGNAL \Add0~149_combout\ : std_logic;
SIGNAL \Add0~146\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_213\ : std_logic;
SIGNAL \Add0~156_combout\ : std_logic;
SIGNAL \Add0~161_combout\ : std_logic;
SIGNAL \Add0~158\ : std_logic;
SIGNAL \Add0~158COUT1_214\ : std_logic;
SIGNAL \Add0~162_combout\ : std_logic;
SIGNAL \Add0~167_combout\ : std_logic;
SIGNAL \Add0~164\ : std_logic;
SIGNAL \Add0~164COUT1_215\ : std_logic;
SIGNAL \Add0~168_combout\ : std_logic;
SIGNAL \Add0~173_combout\ : std_logic;
SIGNAL \Add0~170\ : std_logic;
SIGNAL \Add0~170COUT1_216\ : std_logic;
SIGNAL \Add0~174_combout\ : std_logic;
SIGNAL \Add0~179_combout\ : std_logic;
SIGNAL \Add0~176\ : std_logic;
SIGNAL \Add0~180_combout\ : std_logic;
SIGNAL \Add0~185_combout\ : std_logic;
SIGNAL \Equal15~9_combout\ : std_logic;
SIGNAL \Equal15~5_combout\ : std_logic;
SIGNAL \Equal15~6_combout\ : std_logic;
SIGNAL \Equal15~7_combout\ : std_logic;
SIGNAL \Equal15~1_combout\ : std_logic;
SIGNAL \Equal15~3_combout\ : std_logic;
SIGNAL \Equal15~0_combout\ : std_logic;
SIGNAL \Equal15~2_combout\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \Equal15~8_combout\ : std_logic;
SIGNAL \Equal15~10_combout\ : std_logic;
SIGNAL \nstate~0_combout\ : std_logic;
SIGNAL \Equal11~3_combout\ : std_logic;
SIGNAL \nstate.S22~4\ : std_logic;
SIGNAL \state.S22~regout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux1~9_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \state.S3~regout\ : std_logic;
SIGNAL \Equal11~5_combout\ : std_logic;
SIGNAL \state.S17~regout\ : std_logic;
SIGNAL \state.S24~regout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \state.S4~regout\ : std_logic;
SIGNAL \Equal11~2_combout\ : std_logic;
SIGNAL \state.S23~regout\ : std_logic;
SIGNAL \Equal11~8_combout\ : std_logic;
SIGNAL \state.S6~regout\ : std_logic;
SIGNAL \Equal11~9_combout\ : std_logic;
SIGNAL \state.S19~regout\ : std_logic;
SIGNAL \z~combout\ : std_logic;
SIGNAL \state.S20~regout\ : std_logic;
SIGNAL \state.S5~regout\ : std_logic;
SIGNAL \WideOr2~0\ : std_logic;
SIGNAL \state.S8~regout\ : std_logic;
SIGNAL \Selector36~2_combout\ : std_logic;
SIGNAL \Selector36~7_combout\ : std_logic;
SIGNAL \state.S9~regout\ : std_logic;
SIGNAL \Equal11~6_combout\ : std_logic;
SIGNAL \state.S10~regout\ : std_logic;
SIGNAL \state.S7~regout\ : std_logic;
SIGNAL \WideOr5~0\ : std_logic;
SIGNAL \Equal11~7_combout\ : std_logic;
SIGNAL \state.S12~regout\ : std_logic;
SIGNAL \Selector36~3_combout\ : std_logic;
SIGNAL \state.S13~regout\ : std_logic;
SIGNAL \state.S18~regout\ : std_logic;
SIGNAL \Equal11~4_combout\ : std_logic;
SIGNAL \state.S14~regout\ : std_logic;
SIGNAL \state.S15~regout\ : std_logic;
SIGNAL \state.S16~regout\ : std_logic;
SIGNAL \Selector36~4\ : std_logic;
SIGNAL \Selector36~5\ : std_logic;
SIGNAL \state.S0~regout\ : std_logic;
SIGNAL \state.S1~regout\ : std_logic;
SIGNAL \wr_inc~2_combout\ : std_logic;
SIGNAL \WideOr3~0\ : std_logic;
SIGNAL \WideOr3~1_combout\ : std_logic;
SIGNAL \state.S11~regout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_A1~2_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \WideOr7~0_combout\ : std_logic;
SIGNAL \wr_Mem~0\ : std_logic;
SIGNAL \cy~combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \WideOr1~combout\ : std_logic;
SIGNAL \dec~0_combout\ : std_logic;
SIGNAL \dec~1_combout\ : std_logic;
SIGNAL \dec~2_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~0_combout\ : std_logic;
SIGNAL \state.S21~regout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \select_Mux_Mem_A~1_combout\ : std_logic;
SIGNAL \IR~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_wr_inc~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \ALT_INV_select_Mux_RF_A1~2_combout\ : std_logic;
SIGNAL \ALT_INV_WideOr3~1_combout\ : std_logic;

BEGIN

ww_IR <= IR;
ww_cy <= cy;
ww_z <= z;
ww_clk <= clk;
wr_IR <= ww_wr_IR;
wr_RF <= ww_wr_RF;
wr_T1 <= ww_wr_T1;
wr_T2 <= ww_wr_T2;
wr_T3 <= ww_wr_T3;
wr_inc <= ww_wr_inc;
wr_Mem <= ww_wr_Mem;
wr_cy <= ww_wr_cy;
wr_z <= ww_wr_z;
select_Mux_RF_A3 <= ww_select_Mux_RF_A3;
select_Mux_RF_D3 <= ww_select_Mux_RF_D3;
dec <= ww_dec;
select_Mux_RF_A1 <= ww_select_Mux_RF_A1;
select_Mux_ALU_B <= ww_select_Mux_ALU_B;
select_Mux_T2 <= ww_select_Mux_T2;
select_ALU <= ww_select_ALU;
select_Mux_Mem_A <= ww_select_Mux_Mem_A;
select_Mux_Mem_D <= ww_select_Mux_Mem_D;
select_Mux_RF_A2 <= ww_select_Mux_RF_A2;
select_Mux_T1 <= ww_select_Mux_T1;
select_Mux_ALU_A <= ww_select_Mux_ALU_A;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_wr_inc~2_combout\ <= NOT \wr_inc~2_combout\;
\ALT_INV_WideOr8~0_combout\ <= NOT \WideOr8~0_combout\;
\ALT_INV_select_Mux_RF_A1~2_combout\ <= NOT \select_Mux_RF_A1~2_combout\;
\ALT_INV_WideOr3~1_combout\ <= NOT \WideOr3~1_combout\;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(15),
	combout => \IR~combout\(15));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(14),
	combout => \IR~combout\(14));

-- Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(12),
	combout => \IR~combout\(12));

-- Location: LC_X2_Y4_N5
\nstate~1\ : maxv_lcell
-- Equation(s):
-- \nstate~1_combout\ = (!\IR~combout\(15) & (((\IR~combout\(14) & \IR~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datac => \IR~combout\(14),
	datad => \IR~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nstate~1_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(13),
	combout => \IR~combout\(13));

-- Location: LC_X2_Y3_N8
\Equal11~0\ : maxv_lcell
-- Equation(s):
-- \Equal11~0_combout\ = (!\IR~combout\(13) & (\IR~combout\(14) & (!\IR~combout\(15) & !\IR~combout\(12))))

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
	dataa => \IR~combout\(13),
	datab => \IR~combout\(14),
	datac => \IR~combout\(15),
	datad => \IR~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~0_combout\);

-- Location: LC_X2_Y3_N7
\state.S2\ : maxv_lcell
-- Equation(s):
-- \nstate.S22~4\ = ((!\nstate~1_combout\ & (state.S2 & !\Equal11~0_combout\)))
-- \state.S2~regout\ = DFFEAS(\nstate.S22~4\, GLOBAL(\clk~combout\), VCC, , , \state.S1~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0030",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \nstate~1_combout\,
	datac => \state.S1~regout\,
	datad => \Equal11~0_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nstate.S22~4\,
	regout => \state.S2~regout\);

-- Location: LC_X2_Y3_N3
\fsm~0\ : maxv_lcell
-- Equation(s):
-- \fsm~0_combout\ = ((\IR~combout\(15) & (!\IR~combout\(13) & \IR~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \IR~combout\(15),
	datac => \IR~combout\(13),
	datad => \IR~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \fsm~0_combout\);

-- Location: LC_X2_Y3_N4
\Selector0~0\ : maxv_lcell
-- Equation(s):
-- \Selector0~0_combout\ = ((\fsm~0_combout\ & ((\state.S3~regout\) # (\state.S2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~regout\,
	datac => \state.S2~regout\,
	datad => \fsm~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X3_Y1_N4
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = ((!i(0)))
-- \Add0~2\ = CARRY(((i(0))))

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
	datab => i(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X2_Y3_N6
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (((\Add0~0_combout\ & \state.S3~regout\)))

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
	datac => \Add0~0_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\);

-- Location: LC_X3_Y1_N0
\i[0]\ : maxv_lcell
-- Equation(s):
-- i(0) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~5_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(0))))

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
	datab => i(0),
	datac => \Selector0~0_combout\,
	datad => \Add0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(0));

-- Location: LC_X3_Y1_N5
\Add0~6\ : maxv_lcell
-- Equation(s):
-- \Add0~6_combout\ = (i(1) $ ((\Add0~2\)))
-- \Add0~8\ = CARRY(((!\Add0~2\) # (!i(1))))
-- \Add0~8COUT1_193\ = CARRY(((!\Add0~2\) # (!i(1))))

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
	datab => i(1),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~6_combout\,
	cout0 => \Add0~8\,
	cout1 => \Add0~8COUT1_193\);

-- Location: LC_X3_Y3_N0
\Add0~11\ : maxv_lcell
-- Equation(s):
-- \Add0~11_combout\ = ((\state.S3~regout\ & (\Add0~6_combout\)))

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
	datab => \state.S3~regout\,
	datac => \Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~11_combout\);

-- Location: LC_X4_Y3_N6
\i[1]\ : maxv_lcell
-- Equation(s):
-- i(1) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~11_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(1))))

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
	dataa => i(1),
	datac => \Selector0~0_combout\,
	datad => \Add0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(1));

-- Location: LC_X3_Y1_N6
\Add0~12\ : maxv_lcell
-- Equation(s):
-- \Add0~12_combout\ = i(2) $ ((((!(!\Add0~2\ & \Add0~8\) # (\Add0~2\ & \Add0~8COUT1_193\)))))
-- \Add0~14\ = CARRY((i(2) & ((!\Add0~8\))))
-- \Add0~14COUT1_194\ = CARRY((i(2) & ((!\Add0~8COUT1_193\))))

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
	dataa => i(2),
	cin => \Add0~2\,
	cin0 => \Add0~8\,
	cin1 => \Add0~8COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~12_combout\,
	cout0 => \Add0~14\,
	cout1 => \Add0~14COUT1_194\);

-- Location: LC_X3_Y1_N2
\Add0~17\ : maxv_lcell
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~12_combout\ & (((\state.S3~regout\))))

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
	dataa => \Add0~12_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~17_combout\);

-- Location: LC_X3_Y1_N3
\i[2]\ : maxv_lcell
-- Equation(s):
-- i(2) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~17_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(2))))

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
	dataa => i(2),
	datac => \Selector0~0_combout\,
	datad => \Add0~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(2));

-- Location: LC_X3_Y1_N7
\Add0~42\ : maxv_lcell
-- Equation(s):
-- \Add0~42_combout\ = i(3) $ (((((!\Add0~2\ & \Add0~14\) # (\Add0~2\ & \Add0~14COUT1_194\)))))
-- \Add0~44\ = CARRY(((!\Add0~14\)) # (!i(3)))
-- \Add0~44COUT1_195\ = CARRY(((!\Add0~14COUT1_194\)) # (!i(3)))

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
	dataa => i(3),
	cin => \Add0~2\,
	cin0 => \Add0~14\,
	cin1 => \Add0~14COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~42_combout\,
	cout0 => \Add0~44\,
	cout1 => \Add0~44COUT1_195\);

-- Location: LC_X3_Y3_N4
\Add0~47\ : maxv_lcell
-- Equation(s):
-- \Add0~47_combout\ = ((\state.S3~regout\ & (\Add0~42_combout\)))

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
	datab => \state.S3~regout\,
	datac => \Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~47_combout\);

-- Location: LC_X4_Y3_N3
\i[3]\ : maxv_lcell
-- Equation(s):
-- i(3) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~47_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(3))))

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
	dataa => i(3),
	datac => \Selector0~0_combout\,
	datad => \Add0~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(3));

-- Location: LC_X3_Y1_N8
\Add0~36\ : maxv_lcell
-- Equation(s):
-- \Add0~36_combout\ = (i(4) $ ((!(!\Add0~2\ & \Add0~44\) # (\Add0~2\ & \Add0~44COUT1_195\))))
-- \Add0~38\ = CARRY(((i(4) & !\Add0~44\)))
-- \Add0~38COUT1_196\ = CARRY(((i(4) & !\Add0~44COUT1_195\)))

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
	datab => i(4),
	cin => \Add0~2\,
	cin0 => \Add0~44\,
	cin1 => \Add0~44COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~36_combout\,
	cout0 => \Add0~38\,
	cout1 => \Add0~38COUT1_196\);

-- Location: LC_X2_Y1_N2
\Add0~41\ : maxv_lcell
-- Equation(s):
-- \Add0~41_combout\ = ((\Add0~36_combout\ & ((\state.S3~regout\))))

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
	datab => \Add0~36_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~41_combout\);

-- Location: LC_X3_Y1_N1
\i[4]\ : maxv_lcell
-- Equation(s):
-- i(4) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~41_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(4))))

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
	datab => i(4),
	datac => \Selector0~0_combout\,
	datad => \Add0~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(4));

-- Location: LC_X3_Y1_N9
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (i(5) $ (((!\Add0~2\ & \Add0~38\) # (\Add0~2\ & \Add0~38COUT1_196\))))
-- \Add0~32\ = CARRY(((!\Add0~38COUT1_196\) # (!i(5))))

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
	datab => i(5),
	cin => \Add0~2\,
	cin0 => \Add0~38\,
	cin1 => \Add0~38COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout => \Add0~32\);

-- Location: LC_X3_Y3_N9
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (((\state.S3~regout\ & \Add0~30_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\);

-- Location: LC_X3_Y3_N1
\i[5]\ : maxv_lcell
-- Equation(s):
-- i(5) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~35_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(5))))

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
	datab => i(5),
	datac => \Selector0~0_combout\,
	datad => \Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(5));

-- Location: LC_X4_Y1_N0
\Add0~24\ : maxv_lcell
-- Equation(s):
-- \Add0~24_combout\ = (i(6) $ ((!\Add0~32\)))
-- \Add0~26\ = CARRY(((i(6) & !\Add0~32\)))
-- \Add0~26COUT1_197\ = CARRY(((i(6) & !\Add0~32\)))

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
	datab => i(6),
	cin => \Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~24_combout\,
	cout0 => \Add0~26\,
	cout1 => \Add0~26COUT1_197\);

-- Location: LC_X4_Y3_N9
\Add0~29\ : maxv_lcell
-- Equation(s):
-- \Add0~29_combout\ = (((\Add0~24_combout\ & \state.S3~regout\)))

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
	datac => \Add0~24_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~29_combout\);

-- Location: LC_X4_Y3_N8
\i[6]\ : maxv_lcell
-- Equation(s):
-- i(6) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~29_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(6))))

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
	datab => i(6),
	datac => \Selector0~0_combout\,
	datad => \Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(6));

-- Location: LC_X4_Y1_N1
\Add0~18\ : maxv_lcell
-- Equation(s):
-- \Add0~18_combout\ = (i(7) $ (((!\Add0~32\ & \Add0~26\) # (\Add0~32\ & \Add0~26COUT1_197\))))
-- \Add0~20\ = CARRY(((!\Add0~26\) # (!i(7))))
-- \Add0~20COUT1_198\ = CARRY(((!\Add0~26COUT1_197\) # (!i(7))))

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
	datab => i(7),
	cin => \Add0~32\,
	cin0 => \Add0~26\,
	cin1 => \Add0~26COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~18_combout\,
	cout0 => \Add0~20\,
	cout1 => \Add0~20COUT1_198\);

-- Location: LC_X3_Y3_N3
\Add0~23\ : maxv_lcell
-- Equation(s):
-- \Add0~23_combout\ = ((\state.S3~regout\ & (\Add0~18_combout\)))

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
	datab => \state.S3~regout\,
	datac => \Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~23_combout\);

-- Location: LC_X3_Y3_N5
\i[7]\ : maxv_lcell
-- Equation(s):
-- i(7) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~23_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(7))))

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
	dataa => i(7),
	datac => \Selector0~0_combout\,
	datad => \Add0~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(7));

-- Location: LC_X4_Y1_N2
\Add0~186\ : maxv_lcell
-- Equation(s):
-- \Add0~186_combout\ = (i(8) $ ((!(!\Add0~32\ & \Add0~20\) # (\Add0~32\ & \Add0~20COUT1_198\))))
-- \Add0~188\ = CARRY(((i(8) & !\Add0~20\)))
-- \Add0~188COUT1_199\ = CARRY(((i(8) & !\Add0~20COUT1_198\)))

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
	datab => i(8),
	cin => \Add0~32\,
	cin0 => \Add0~20\,
	cin1 => \Add0~20COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~186_combout\,
	cout0 => \Add0~188\,
	cout1 => \Add0~188COUT1_199\);

-- Location: LC_X7_Y1_N6
\Add0~191\ : maxv_lcell
-- Equation(s):
-- \Add0~191_combout\ = (((\Add0~186_combout\ & \state.S3~regout\)))

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
	datac => \Add0~186_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~191_combout\);

-- Location: LC_X7_Y1_N7
\i[8]\ : maxv_lcell
-- Equation(s):
-- i(8) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~191_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(8))))

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
	datab => i(8),
	datac => \Selector0~0_combout\,
	datad => \Add0~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(8));

-- Location: LC_X4_Y1_N3
\Add0~48\ : maxv_lcell
-- Equation(s):
-- \Add0~48_combout\ = (i(9) $ (((!\Add0~32\ & \Add0~188\) # (\Add0~32\ & \Add0~188COUT1_199\))))
-- \Add0~50\ = CARRY(((!\Add0~188\) # (!i(9))))
-- \Add0~50COUT1_200\ = CARRY(((!\Add0~188COUT1_199\) # (!i(9))))

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
	datab => i(9),
	cin => \Add0~32\,
	cin0 => \Add0~188\,
	cin1 => \Add0~188COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~48_combout\,
	cout0 => \Add0~50\,
	cout1 => \Add0~50COUT1_200\);

-- Location: LC_X5_Y3_N3
\Add0~53\ : maxv_lcell
-- Equation(s):
-- \Add0~53_combout\ = (((\Add0~48_combout\ & \state.S3~regout\)))

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
	datac => \Add0~48_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~53_combout\);

-- Location: LC_X5_Y3_N0
\i[9]\ : maxv_lcell
-- Equation(s):
-- i(9) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~53_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(9))))

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
	datab => i(9),
	datac => \Selector0~0_combout\,
	datad => \Add0~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(9));

-- Location: LC_X4_Y1_N4
\Add0~54\ : maxv_lcell
-- Equation(s):
-- \Add0~54_combout\ = i(10) $ ((((!(!\Add0~32\ & \Add0~50\) # (\Add0~32\ & \Add0~50COUT1_200\)))))
-- \Add0~56\ = CARRY((i(10) & ((!\Add0~50COUT1_200\))))

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
	dataa => i(10),
	cin => \Add0~32\,
	cin0 => \Add0~50\,
	cin1 => \Add0~50COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~54_combout\,
	cout => \Add0~56\);

-- Location: LC_X5_Y3_N8
\Add0~59\ : maxv_lcell
-- Equation(s):
-- \Add0~59_combout\ = (((\state.S3~regout\ & \Add0~54_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~59_combout\);

-- Location: LC_X5_Y3_N9
\i[10]\ : maxv_lcell
-- Equation(s):
-- i(10) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~59_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(10))))

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
	datab => i(10),
	datac => \Selector0~0_combout\,
	datad => \Add0~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(10));

-- Location: LC_X4_Y1_N5
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (i(11) $ ((\Add0~56\)))
-- \Add0~62\ = CARRY(((!\Add0~56\) # (!i(11))))
-- \Add0~62COUT1_201\ = CARRY(((!\Add0~56\) # (!i(11))))

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
	datab => i(11),
	cin => \Add0~56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_201\);

-- Location: LC_X3_Y2_N3
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (((\state.S3~regout\ & \Add0~60_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\);

-- Location: LC_X3_Y2_N8
\i[11]\ : maxv_lcell
-- Equation(s):
-- i(11) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~65_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(11))))

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
	dataa => i(11),
	datac => \Selector0~0_combout\,
	datad => \Add0~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(11));

-- Location: LC_X4_Y1_N6
\Add0~66\ : maxv_lcell
-- Equation(s):
-- \Add0~66_combout\ = (i(12) $ ((!(!\Add0~56\ & \Add0~62\) # (\Add0~56\ & \Add0~62COUT1_201\))))
-- \Add0~68\ = CARRY(((i(12) & !\Add0~62\)))
-- \Add0~68COUT1_202\ = CARRY(((i(12) & !\Add0~62COUT1_201\)))

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
	datab => i(12),
	cin => \Add0~56\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~66_combout\,
	cout0 => \Add0~68\,
	cout1 => \Add0~68COUT1_202\);

-- Location: LC_X3_Y2_N9
\Add0~71\ : maxv_lcell
-- Equation(s):
-- \Add0~71_combout\ = (((\state.S3~regout\ & \Add0~66_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~71_combout\);

-- Location: LC_X3_Y2_N1
\i[12]\ : maxv_lcell
-- Equation(s):
-- i(12) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~71_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(12))))

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
	datab => i(12),
	datac => \Selector0~0_combout\,
	datad => \Add0~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(12));

-- Location: LC_X4_Y1_N7
\Add0~72\ : maxv_lcell
-- Equation(s):
-- \Add0~72_combout\ = (i(13) $ (((!\Add0~56\ & \Add0~68\) # (\Add0~56\ & \Add0~68COUT1_202\))))
-- \Add0~74\ = CARRY(((!\Add0~68\) # (!i(13))))
-- \Add0~74COUT1_203\ = CARRY(((!\Add0~68COUT1_202\) # (!i(13))))

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
	datab => i(13),
	cin => \Add0~56\,
	cin0 => \Add0~68\,
	cin1 => \Add0~68COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~72_combout\,
	cout0 => \Add0~74\,
	cout1 => \Add0~74COUT1_203\);

-- Location: LC_X4_Y2_N1
\Add0~77\ : maxv_lcell
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~72_combout\ & (((\state.S3~regout\))))

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
	dataa => \Add0~72_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~77_combout\);

-- Location: LC_X4_Y2_N7
\i[13]\ : maxv_lcell
-- Equation(s):
-- i(13) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~77_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(13))))

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
	datab => i(13),
	datac => \Selector0~0_combout\,
	datad => \Add0~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(13));

-- Location: LC_X4_Y1_N8
\Add0~78\ : maxv_lcell
-- Equation(s):
-- \Add0~78_combout\ = (i(14) $ ((!(!\Add0~56\ & \Add0~74\) # (\Add0~56\ & \Add0~74COUT1_203\))))
-- \Add0~80\ = CARRY(((i(14) & !\Add0~74\)))
-- \Add0~80COUT1_204\ = CARRY(((i(14) & !\Add0~74COUT1_203\)))

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
	datab => i(14),
	cin => \Add0~56\,
	cin0 => \Add0~74\,
	cin1 => \Add0~74COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~78_combout\,
	cout0 => \Add0~80\,
	cout1 => \Add0~80COUT1_204\);

-- Location: LC_X4_Y2_N2
\Add0~83\ : maxv_lcell
-- Equation(s):
-- \Add0~83_combout\ = ((\Add0~78_combout\ & ((\state.S3~regout\))))

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
	datab => \Add0~78_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~83_combout\);

-- Location: LC_X4_Y2_N3
\i[14]\ : maxv_lcell
-- Equation(s):
-- i(14) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~83_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(14))))

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
	dataa => i(14),
	datac => \Selector0~0_combout\,
	datad => \Add0~83_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(14));

-- Location: LC_X4_Y1_N9
\Add0~84\ : maxv_lcell
-- Equation(s):
-- \Add0~84_combout\ = i(15) $ (((((!\Add0~56\ & \Add0~80\) # (\Add0~56\ & \Add0~80COUT1_204\)))))
-- \Add0~86\ = CARRY(((!\Add0~80COUT1_204\)) # (!i(15)))

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
	dataa => i(15),
	cin => \Add0~56\,
	cin0 => \Add0~80\,
	cin1 => \Add0~80COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~84_combout\,
	cout => \Add0~86\);

-- Location: LC_X3_Y3_N8
\Add0~89\ : maxv_lcell
-- Equation(s):
-- \Add0~89_combout\ = ((\state.S3~regout\ & (\Add0~84_combout\)))

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
	datab => \state.S3~regout\,
	datac => \Add0~84_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~89_combout\);

-- Location: LC_X3_Y3_N2
\i[15]\ : maxv_lcell
-- Equation(s):
-- i(15) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~89_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(15))))

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
	datab => i(15),
	datac => \Selector0~0_combout\,
	datad => \Add0~89_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(15));

-- Location: LC_X5_Y1_N0
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (i(16) $ ((!\Add0~86\)))
-- \Add0~92\ = CARRY(((i(16) & !\Add0~86\)))
-- \Add0~92COUT1_205\ = CARRY(((i(16) & !\Add0~86\)))

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
	datab => i(16),
	cin => \Add0~86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_205\);

-- Location: LC_X4_Y2_N5
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = ((\state.S3~regout\ & ((\Add0~90_combout\))))

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
	datab => \state.S3~regout\,
	datad => \Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\);

-- Location: LC_X4_Y2_N6
\i[16]\ : maxv_lcell
-- Equation(s):
-- i(16) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~95_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(16))))

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
	dataa => i(16),
	datac => \Selector0~0_combout\,
	datad => \Add0~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(16));

-- Location: LC_X5_Y1_N1
\Add0~96\ : maxv_lcell
-- Equation(s):
-- \Add0~96_combout\ = (i(17) $ (((!\Add0~86\ & \Add0~92\) # (\Add0~86\ & \Add0~92COUT1_205\))))
-- \Add0~98\ = CARRY(((!\Add0~92\) # (!i(17))))
-- \Add0~98COUT1_206\ = CARRY(((!\Add0~92COUT1_205\) # (!i(17))))

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
	datab => i(17),
	cin => \Add0~86\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~96_combout\,
	cout0 => \Add0~98\,
	cout1 => \Add0~98COUT1_206\);

-- Location: LC_X2_Y1_N3
\Add0~101\ : maxv_lcell
-- Equation(s):
-- \Add0~101_combout\ = (((\Add0~96_combout\ & \state.S3~regout\)))

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
	datac => \Add0~96_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~101_combout\);

-- Location: LC_X2_Y1_N4
\i[17]\ : maxv_lcell
-- Equation(s):
-- i(17) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~101_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(17))))

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
	dataa => i(17),
	datac => \Selector0~0_combout\,
	datad => \Add0~101_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(17));

-- Location: LC_X5_Y1_N2
\Add0~102\ : maxv_lcell
-- Equation(s):
-- \Add0~102_combout\ = (i(18) $ ((!(!\Add0~86\ & \Add0~98\) # (\Add0~86\ & \Add0~98COUT1_206\))))
-- \Add0~104\ = CARRY(((i(18) & !\Add0~98\)))
-- \Add0~104COUT1_207\ = CARRY(((i(18) & !\Add0~98COUT1_206\)))

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
	datab => i(18),
	cin => \Add0~86\,
	cin0 => \Add0~98\,
	cin1 => \Add0~98COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~102_combout\,
	cout0 => \Add0~104\,
	cout1 => \Add0~104COUT1_207\);

-- Location: LC_X2_Y1_N8
\Add0~107\ : maxv_lcell
-- Equation(s):
-- \Add0~107_combout\ = (((\Add0~102_combout\ & \state.S3~regout\)))

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
	datac => \Add0~102_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~107_combout\);

-- Location: LC_X2_Y1_N9
\i[18]\ : maxv_lcell
-- Equation(s):
-- i(18) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~107_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(18))))

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
	datab => i(18),
	datac => \Selector0~0_combout\,
	datad => \Add0~107_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(18));

-- Location: LC_X5_Y1_N3
\Add0~108\ : maxv_lcell
-- Equation(s):
-- \Add0~108_combout\ = (i(19) $ (((!\Add0~86\ & \Add0~104\) # (\Add0~86\ & \Add0~104COUT1_207\))))
-- \Add0~110\ = CARRY(((!\Add0~104\) # (!i(19))))
-- \Add0~110COUT1_208\ = CARRY(((!\Add0~104COUT1_207\) # (!i(19))))

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
	datab => i(19),
	cin => \Add0~86\,
	cin0 => \Add0~104\,
	cin1 => \Add0~104COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~108_combout\,
	cout0 => \Add0~110\,
	cout1 => \Add0~110COUT1_208\);

-- Location: LC_X2_Y1_N6
\Add0~113\ : maxv_lcell
-- Equation(s):
-- \Add0~113_combout\ = (((\Add0~108_combout\ & \state.S3~regout\)))

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
	datac => \Add0~108_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~113_combout\);

-- Location: LC_X2_Y1_N7
\i[19]\ : maxv_lcell
-- Equation(s):
-- i(19) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~113_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(19))))

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
	datab => i(19),
	datac => \Selector0~0_combout\,
	datad => \Add0~113_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(19));

-- Location: LC_X5_Y1_N4
\Add0~114\ : maxv_lcell
-- Equation(s):
-- \Add0~114_combout\ = (i(20) $ ((!(!\Add0~86\ & \Add0~110\) # (\Add0~86\ & \Add0~110COUT1_208\))))
-- \Add0~116\ = CARRY(((i(20) & !\Add0~110COUT1_208\)))

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
	datab => i(20),
	cin => \Add0~86\,
	cin0 => \Add0~110\,
	cin1 => \Add0~110COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~114_combout\,
	cout => \Add0~116\);

-- Location: LC_X2_Y1_N1
\Add0~119\ : maxv_lcell
-- Equation(s):
-- \Add0~119_combout\ = (((\Add0~114_combout\ & \state.S3~regout\)))

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
	datac => \Add0~114_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~119_combout\);

-- Location: LC_X2_Y1_N5
\i[20]\ : maxv_lcell
-- Equation(s):
-- i(20) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~119_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(20))))

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
	dataa => i(20),
	datac => \Selector0~0_combout\,
	datad => \Add0~119_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(20));

-- Location: LC_X5_Y1_N5
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (i(21) $ ((\Add0~116\)))
-- \Add0~122\ = CARRY(((!\Add0~116\) # (!i(21))))
-- \Add0~122COUT1_209\ = CARRY(((!\Add0~116\) # (!i(21))))

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
	datab => i(21),
	cin => \Add0~116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_209\);

-- Location: LC_X5_Y2_N6
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (((\Add0~120_combout\ & \state.S3~regout\)))

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
	datac => \Add0~120_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\);

-- Location: LC_X5_Y2_N7
\i[21]\ : maxv_lcell
-- Equation(s):
-- i(21) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~125_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(21))))

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
	datab => i(21),
	datac => \Selector0~0_combout\,
	datad => \Add0~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(21));

-- Location: LC_X5_Y1_N6
\Add0~126\ : maxv_lcell
-- Equation(s):
-- \Add0~126_combout\ = (i(22) $ ((!(!\Add0~116\ & \Add0~122\) # (\Add0~116\ & \Add0~122COUT1_209\))))
-- \Add0~128\ = CARRY(((i(22) & !\Add0~122\)))
-- \Add0~128COUT1_210\ = CARRY(((i(22) & !\Add0~122COUT1_209\)))

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
	datab => i(22),
	cin => \Add0~116\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~126_combout\,
	cout0 => \Add0~128\,
	cout1 => \Add0~128COUT1_210\);

-- Location: LC_X5_Y2_N8
\Add0~131\ : maxv_lcell
-- Equation(s):
-- \Add0~131_combout\ = (((\Add0~126_combout\ & \state.S3~regout\)))

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
	datac => \Add0~126_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~131_combout\);

-- Location: LC_X5_Y2_N9
\i[22]\ : maxv_lcell
-- Equation(s):
-- i(22) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~131_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(22))))

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
	datab => i(22),
	datac => \Selector0~0_combout\,
	datad => \Add0~131_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(22));

-- Location: LC_X5_Y1_N7
\Add0~132\ : maxv_lcell
-- Equation(s):
-- \Add0~132_combout\ = (i(23) $ (((!\Add0~116\ & \Add0~128\) # (\Add0~116\ & \Add0~128COUT1_210\))))
-- \Add0~134\ = CARRY(((!\Add0~128\) # (!i(23))))
-- \Add0~134COUT1_211\ = CARRY(((!\Add0~128COUT1_210\) # (!i(23))))

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
	datab => i(23),
	cin => \Add0~116\,
	cin0 => \Add0~128\,
	cin1 => \Add0~128COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~132_combout\,
	cout0 => \Add0~134\,
	cout1 => \Add0~134COUT1_211\);

-- Location: LC_X4_Y2_N8
\Add0~137\ : maxv_lcell
-- Equation(s):
-- \Add0~137_combout\ = (((\Add0~132_combout\ & \state.S3~regout\)))

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
	datac => \Add0~132_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~137_combout\);

-- Location: LC_X4_Y2_N0
\i[23]\ : maxv_lcell
-- Equation(s):
-- i(23) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~137_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(23))))

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
	datab => i(23),
	datac => \Selector0~0_combout\,
	datad => \Add0~137_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(23));

-- Location: LC_X5_Y1_N8
\Add0~138\ : maxv_lcell
-- Equation(s):
-- \Add0~138_combout\ = (i(24) $ ((!(!\Add0~116\ & \Add0~134\) # (\Add0~116\ & \Add0~134COUT1_211\))))
-- \Add0~140\ = CARRY(((i(24) & !\Add0~134\)))
-- \Add0~140COUT1_212\ = CARRY(((i(24) & !\Add0~134COUT1_211\)))

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
	datab => i(24),
	cin => \Add0~116\,
	cin0 => \Add0~134\,
	cin1 => \Add0~134COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~138_combout\,
	cout0 => \Add0~140\,
	cout1 => \Add0~140COUT1_212\);

-- Location: LC_X6_Y3_N8
\Add0~143\ : maxv_lcell
-- Equation(s):
-- \Add0~143_combout\ = (((\state.S3~regout\ & \Add0~138_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~138_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~143_combout\);

-- Location: LC_X6_Y3_N0
\i[24]\ : maxv_lcell
-- Equation(s):
-- i(24) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~143_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(24))))

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
	datab => i(24),
	datac => \Selector0~0_combout\,
	datad => \Add0~143_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(24));

-- Location: LC_X5_Y1_N9
\Add0~144\ : maxv_lcell
-- Equation(s):
-- \Add0~144_combout\ = (i(25) $ (((!\Add0~116\ & \Add0~140\) # (\Add0~116\ & \Add0~140COUT1_212\))))
-- \Add0~146\ = CARRY(((!\Add0~140COUT1_212\) # (!i(25))))

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
	datab => i(25),
	cin => \Add0~116\,
	cin0 => \Add0~140\,
	cin1 => \Add0~140COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~144_combout\,
	cout => \Add0~146\);

-- Location: LC_X6_Y3_N2
\Add0~149\ : maxv_lcell
-- Equation(s):
-- \Add0~149_combout\ = (((\state.S3~regout\ & \Add0~144_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~144_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~149_combout\);

-- Location: LC_X6_Y3_N3
\i[25]\ : maxv_lcell
-- Equation(s):
-- i(25) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~149_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(25))))

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
	dataa => i(25),
	datac => \Selector0~0_combout\,
	datad => \Add0~149_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(25));

-- Location: LC_X6_Y1_N0
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = i(26) $ ((((!\Add0~146\))))
-- \Add0~152\ = CARRY((i(26) & ((!\Add0~146\))))
-- \Add0~152COUT1_213\ = CARRY((i(26) & ((!\Add0~146\))))

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
	dataa => i(26),
	cin => \Add0~146\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_213\);

-- Location: LC_X6_Y1_N9
\Add0~155\ : maxv_lcell
-- Equation(s):
-- \Add0~155_combout\ = (((\Add0~150_combout\ & \state.S3~regout\)))

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
	datac => \Add0~150_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\);

-- Location: LC_X6_Y1_N6
\i[26]\ : maxv_lcell
-- Equation(s):
-- i(26) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~155_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(26))))

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
	dataa => i(26),
	datac => \Selector0~0_combout\,
	datad => \Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(26));

-- Location: LC_X6_Y1_N1
\Add0~156\ : maxv_lcell
-- Equation(s):
-- \Add0~156_combout\ = i(27) $ (((((!\Add0~146\ & \Add0~152\) # (\Add0~146\ & \Add0~152COUT1_213\)))))
-- \Add0~158\ = CARRY(((!\Add0~152\)) # (!i(27)))
-- \Add0~158COUT1_214\ = CARRY(((!\Add0~152COUT1_213\)) # (!i(27)))

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
	dataa => i(27),
	cin => \Add0~146\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~156_combout\,
	cout0 => \Add0~158\,
	cout1 => \Add0~158COUT1_214\);

-- Location: LC_X6_Y1_N7
\Add0~161\ : maxv_lcell
-- Equation(s):
-- \Add0~161_combout\ = ((\Add0~156_combout\ & (\state.S3~regout\)))

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
	datab => \Add0~156_combout\,
	datac => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~161_combout\);

-- Location: LC_X6_Y1_N8
\i[27]\ : maxv_lcell
-- Equation(s):
-- i(27) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~161_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(27))))

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
	dataa => i(27),
	datac => \Selector0~0_combout\,
	datad => \Add0~161_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(27));

-- Location: LC_X6_Y1_N2
\Add0~162\ : maxv_lcell
-- Equation(s):
-- \Add0~162_combout\ = (i(28) $ ((!(!\Add0~146\ & \Add0~158\) # (\Add0~146\ & \Add0~158COUT1_214\))))
-- \Add0~164\ = CARRY(((i(28) & !\Add0~158\)))
-- \Add0~164COUT1_215\ = CARRY(((i(28) & !\Add0~158COUT1_214\)))

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
	datab => i(28),
	cin => \Add0~146\,
	cin0 => \Add0~158\,
	cin1 => \Add0~158COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~162_combout\,
	cout0 => \Add0~164\,
	cout1 => \Add0~164COUT1_215\);

-- Location: LC_X6_Y3_N6
\Add0~167\ : maxv_lcell
-- Equation(s):
-- \Add0~167_combout\ = (((\state.S3~regout\ & \Add0~162_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~162_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~167_combout\);

-- Location: LC_X6_Y3_N7
\i[28]\ : maxv_lcell
-- Equation(s):
-- i(28) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~167_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(28))))

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
	datab => i(28),
	datac => \Selector0~0_combout\,
	datad => \Add0~167_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(28));

-- Location: LC_X6_Y1_N3
\Add0~168\ : maxv_lcell
-- Equation(s):
-- \Add0~168_combout\ = i(29) $ (((((!\Add0~146\ & \Add0~164\) # (\Add0~146\ & \Add0~164COUT1_215\)))))
-- \Add0~170\ = CARRY(((!\Add0~164\)) # (!i(29)))
-- \Add0~170COUT1_216\ = CARRY(((!\Add0~164COUT1_215\)) # (!i(29)))

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
	dataa => i(29),
	cin => \Add0~146\,
	cin0 => \Add0~164\,
	cin1 => \Add0~164COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~168_combout\,
	cout0 => \Add0~170\,
	cout1 => \Add0~170COUT1_216\);

-- Location: LC_X7_Y1_N2
\Add0~173\ : maxv_lcell
-- Equation(s):
-- \Add0~173_combout\ = ((\Add0~168_combout\ & ((\state.S3~regout\))))

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
	datab => \Add0~168_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~173_combout\);

-- Location: LC_X7_Y1_N3
\i[29]\ : maxv_lcell
-- Equation(s):
-- i(29) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~173_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(29))))

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
	dataa => i(29),
	datac => \Selector0~0_combout\,
	datad => \Add0~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(29));

-- Location: LC_X6_Y1_N4
\Add0~174\ : maxv_lcell
-- Equation(s):
-- \Add0~174_combout\ = i(30) $ ((((!(!\Add0~146\ & \Add0~170\) # (\Add0~146\ & \Add0~170COUT1_216\)))))
-- \Add0~176\ = CARRY((i(30) & ((!\Add0~170COUT1_216\))))

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
	dataa => i(30),
	cin => \Add0~146\,
	cin0 => \Add0~170\,
	cin1 => \Add0~170COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~174_combout\,
	cout => \Add0~176\);

-- Location: LC_X7_Y1_N0
\Add0~179\ : maxv_lcell
-- Equation(s):
-- \Add0~179_combout\ = (((\Add0~174_combout\ & \state.S3~regout\)))

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
	datac => \Add0~174_combout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~179_combout\);

-- Location: LC_X7_Y1_N1
\i[30]\ : maxv_lcell
-- Equation(s):
-- i(30) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~179_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(30))))

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
	datab => i(30),
	datac => \Selector0~0_combout\,
	datad => \Add0~179_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(30));

-- Location: LC_X6_Y1_N5
\Add0~180\ : maxv_lcell
-- Equation(s):
-- \Add0~180_combout\ = ((\Add0~176\ $ (i(31))))

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
	datad => i(31),
	cin => \Add0~176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~180_combout\);

-- Location: LC_X7_Y1_N8
\Add0~185\ : maxv_lcell
-- Equation(s):
-- \Add0~185_combout\ = (((\state.S3~regout\ & \Add0~180_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Add0~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~185_combout\);

-- Location: LC_X7_Y1_N5
\i[31]\ : maxv_lcell
-- Equation(s):
-- i(31) = ((GLOBAL(\Selector0~0_combout\) & ((\Add0~185_combout\))) # (!GLOBAL(\Selector0~0_combout\) & (i(31))))

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
	dataa => i(31),
	datac => \Selector0~0_combout\,
	datad => \Add0~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => i(31));

-- Location: LC_X7_Y1_N4
\Equal15~9\ : maxv_lcell
-- Equation(s):
-- \Equal15~9_combout\ = (!i(31) & (!i(30) & (!i(8) & !i(29))))

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
	dataa => i(31),
	datab => i(30),
	datac => i(8),
	datad => i(29),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~9_combout\);

-- Location: LC_X2_Y1_N0
\Equal15~5\ : maxv_lcell
-- Equation(s):
-- \Equal15~5_combout\ = (!i(20) & (!i(19) & (!i(17) & !i(18))))

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
	dataa => i(20),
	datab => i(19),
	datac => i(17),
	datad => i(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~5_combout\);

-- Location: LC_X5_Y2_N3
\Equal15~6\ : maxv_lcell
-- Equation(s):
-- \Equal15~6_combout\ = (((!i(21) & !i(22))))

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
	datac => i(21),
	datad => i(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~6_combout\);

-- Location: LC_X3_Y2_N7
\Equal15~7\ : maxv_lcell
-- Equation(s):
-- \Equal15~7_combout\ = (!i(23) & (!i(24) & (\Equal15~5_combout\ & \Equal15~6_combout\)))

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
	dataa => i(23),
	datab => i(24),
	datac => \Equal15~5_combout\,
	datad => \Equal15~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~7_combout\);

-- Location: LC_X3_Y2_N5
\Equal15~1\ : maxv_lcell
-- Equation(s):
-- \Equal15~1_combout\ = (!i(1) & (i(3) & (!i(2) & !i(0))))

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
	dataa => i(1),
	datab => i(3),
	datac => i(2),
	datad => i(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~1_combout\);

-- Location: LC_X4_Y2_N9
\Equal15~3\ : maxv_lcell
-- Equation(s):
-- \Equal15~3_combout\ = (!i(14) & (!i(16) & (!i(13) & !i(15))))

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
	dataa => i(14),
	datab => i(16),
	datac => i(13),
	datad => i(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~3_combout\);

-- Location: LC_X3_Y2_N6
\Equal15~0\ : maxv_lcell
-- Equation(s):
-- \Equal15~0_combout\ = (!i(5) & (!i(7) & (!i(4) & !i(6))))

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
	dataa => i(5),
	datab => i(7),
	datac => i(4),
	datad => i(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~0_combout\);

-- Location: LC_X3_Y2_N2
\Equal15~2\ : maxv_lcell
-- Equation(s):
-- \Equal15~2_combout\ = (!i(11) & (!i(12) & (!i(9) & !i(10))))

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
	dataa => i(11),
	datab => i(12),
	datac => i(9),
	datad => i(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~2_combout\);

-- Location: LC_X3_Y2_N4
\Equal15~4\ : maxv_lcell
-- Equation(s):
-- \Equal15~4_combout\ = (\Equal15~1_combout\ & (\Equal15~3_combout\ & (\Equal15~0_combout\ & \Equal15~2_combout\)))

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
	dataa => \Equal15~1_combout\,
	datab => \Equal15~3_combout\,
	datac => \Equal15~0_combout\,
	datad => \Equal15~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~4_combout\);

-- Location: LC_X6_Y3_N1
\Equal15~8\ : maxv_lcell
-- Equation(s):
-- \Equal15~8_combout\ = (!i(25) & (!i(28) & (!i(26) & !i(27))))

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
	dataa => i(25),
	datab => i(28),
	datac => i(26),
	datad => i(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~8_combout\);

-- Location: LC_X3_Y2_N0
\Equal15~10\ : maxv_lcell
-- Equation(s):
-- \Equal15~10_combout\ = (\Equal15~9_combout\ & (\Equal15~7_combout\ & (\Equal15~4_combout\ & \Equal15~8_combout\)))

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
	dataa => \Equal15~9_combout\,
	datab => \Equal15~7_combout\,
	datac => \Equal15~4_combout\,
	datad => \Equal15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~10_combout\);

-- Location: LC_X2_Y3_N5
\nstate~0\ : maxv_lcell
-- Equation(s):
-- \nstate~0_combout\ = (\IR~combout\(15) & (!\IR~combout\(14) & (\IR~combout\(13) $ (\IR~combout\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0220",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(13),
	datad => \IR~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \nstate~0_combout\);

-- Location: LC_X2_Y3_N2
\Equal11~3\ : maxv_lcell
-- Equation(s):
-- \Equal11~3_combout\ = (\IR~combout\(13) & (!\IR~combout\(14) & (\IR~combout\(15) & !\IR~combout\(12))))

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
	dataa => \IR~combout\(13),
	datab => \IR~combout\(14),
	datac => \IR~combout\(15),
	datad => \IR~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~3_combout\);

-- Location: LC_X3_Y4_N6
\state.S22\ : maxv_lcell
-- Equation(s):
-- \state.S22~regout\ = DFFEAS((\state.S2~regout\ & (!\nstate~1_combout\ & (!\Equal11~0_combout\ & \nstate~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.S2~regout\,
	datab => \nstate~1_combout\,
	datac => \Equal11~0_combout\,
	datad => \nstate~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S22~regout\);

-- Location: LC_X2_Y3_N1
\Selector37~1\ : maxv_lcell
-- Equation(s):
-- \Selector37~1_combout\ = (\nstate~0_combout\ & (\Equal11~3_combout\ & ((\state.S22~regout\)))) # (!\nstate~0_combout\ & ((\nstate.S22~4\) # ((\Equal11~3_combout\ & \state.S22~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \nstate~0_combout\,
	datab => \Equal11~3_combout\,
	datac => \nstate.S22~4\,
	datad => \state.S22~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector37~1_combout\);

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(11),
	combout => \IR~combout\(11));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(9),
	combout => \IR~combout\(9));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(1),
	combout => \IR~combout\(1));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(3),
	combout => \IR~combout\(3));

-- Location: LC_X5_Y3_N1
\Mux1~0\ : maxv_lcell
-- Equation(s):
-- \Mux1~0_combout\ = (i(1) & (((\IR~combout\(3)) # (i(3))))) # (!i(1) & (\IR~combout\(1) & ((!i(3)))))

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
	dataa => \IR~combout\(1),
	datab => \IR~combout\(3),
	datac => i(1),
	datad => i(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~0_combout\);

-- Location: LC_X5_Y3_N2
\Mux1~1\ : maxv_lcell
-- Equation(s):
-- \Mux1~1_combout\ = (i(3) & ((\Mux1~0_combout\ & (\IR~combout\(11))) # (!\Mux1~0_combout\ & ((\IR~combout\(9)))))) # (!i(3) & (((\Mux1~0_combout\))))

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
	dataa => \IR~combout\(11),
	datab => i(3),
	datac => \IR~combout\(9),
	datad => \Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~1_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(6),
	combout => \IR~combout\(6));

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(4),
	combout => \IR~combout\(4));

-- Location: LC_X4_Y3_N7
\Mux1~2\ : maxv_lcell
-- Equation(s):
-- \Mux1~2_combout\ = (i(3) & ((\IR~combout\(12)) # ((i(1))))) # (!i(3) & (((\IR~combout\(4) & !i(1)))))

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
	dataa => \IR~combout\(12),
	datab => \IR~combout\(4),
	datac => i(3),
	datad => i(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~2_combout\);

-- Location: LC_X4_Y3_N4
\Mux1~3\ : maxv_lcell
-- Equation(s):
-- \Mux1~3_combout\ = (\Mux1~2_combout\ & (((\IR~combout\(14)) # (!i(1))))) # (!\Mux1~2_combout\ & (\IR~combout\(6) & ((i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(6),
	datab => \IR~combout\(14),
	datac => \Mux1~2_combout\,
	datad => i(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~3_combout\);

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(10),
	combout => \IR~combout\(10));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(8),
	combout => \IR~combout\(8));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(2),
	combout => \IR~combout\(2));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(0),
	combout => \IR~combout\(0));

-- Location: LC_X5_Y3_N4
\Mux1~4\ : maxv_lcell
-- Equation(s):
-- \Mux1~4_combout\ = (i(1) & ((\IR~combout\(2)) # ((i(3))))) # (!i(1) & (((\IR~combout\(0) & !i(3)))))

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
	dataa => \IR~combout\(2),
	datab => \IR~combout\(0),
	datac => i(1),
	datad => i(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~4_combout\);

-- Location: LC_X5_Y3_N5
\Mux1~5\ : maxv_lcell
-- Equation(s):
-- \Mux1~5_combout\ = (i(3) & ((\Mux1~4_combout\ & (\IR~combout\(10))) # (!\Mux1~4_combout\ & ((\IR~combout\(8)))))) # (!i(3) & (((\Mux1~4_combout\))))

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
	dataa => \IR~combout\(10),
	datab => i(3),
	datac => \IR~combout\(8),
	datad => \Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~5_combout\);

-- Location: LC_X4_Y3_N5
\Mux1~6\ : maxv_lcell
-- Equation(s):
-- \Mux1~6_combout\ = (i(0) & (i(2))) # (!i(0) & ((i(2) & (\Mux1~3_combout\)) # (!i(2) & ((\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(2),
	datac => \Mux1~3_combout\,
	datad => \Mux1~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~6_combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(7),
	combout => \IR~combout\(7));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IR[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IR(5),
	combout => \IR~combout\(5));

-- Location: LC_X4_Y3_N0
\Mux1~7\ : maxv_lcell
-- Equation(s):
-- \Mux1~7_combout\ = (i(3) & (((\IR~combout\(13)) # (i(1))))) # (!i(3) & (\IR~combout\(5) & ((!i(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aae4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => \IR~combout\(5),
	datac => \IR~combout\(13),
	datad => i(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~7_combout\);

-- Location: LC_X4_Y3_N1
\Mux1~8\ : maxv_lcell
-- Equation(s):
-- \Mux1~8_combout\ = (i(1) & ((\Mux1~7_combout\ & ((\IR~combout\(15)))) # (!\Mux1~7_combout\ & (\IR~combout\(7))))) # (!i(1) & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f588",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \IR~combout\(7),
	datac => \IR~combout\(15),
	datad => \Mux1~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~8_combout\);

-- Location: LC_X4_Y3_N2
\Mux1~9\ : maxv_lcell
-- Equation(s):
-- \Mux1~9_combout\ = (i(0) & ((\Mux1~6_combout\ & ((\Mux1~8_combout\))) # (!\Mux1~6_combout\ & (\Mux1~1_combout\)))) # (!i(0) & (((\Mux1~6_combout\))))

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
	dataa => i(0),
	datab => \Mux1~1_combout\,
	datac => \Mux1~6_combout\,
	datad => \Mux1~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux1~9_combout\);

-- Location: LC_X3_Y3_N6
\Selector37~0\ : maxv_lcell
-- Equation(s):
-- \Selector37~0_combout\ = ((\state.S3~regout\ & (!\Mux1~9_combout\ & \fsm~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.S3~regout\,
	datac => \Mux1~9_combout\,
	datad => \fsm~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector37~0_combout\);

-- Location: LC_X3_Y3_N7
\state.S3\ : maxv_lcell
-- Equation(s):
-- \state.S3~regout\ = DFFEAS((\Selector37~1_combout\) # ((\Selector37~0_combout\) # ((\state.S16~regout\ & !\Equal15~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \state.S16~regout\,
	datab => \Equal15~10_combout\,
	datac => \Selector37~1_combout\,
	datad => \Selector37~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S3~regout\);

-- Location: LC_X5_Y4_N2
\Equal11~5\ : maxv_lcell
-- Equation(s):
-- \Equal11~5_combout\ = (\IR~combout\(15) & (\IR~combout\(14) & (\IR~combout\(12) & !\IR~combout\(13))))

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
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \IR~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~5_combout\);

-- Location: LC_X5_Y3_N6
\state.S17\ : maxv_lcell
-- Equation(s):
-- \state.S17~regout\ = DFFEAS(((\state.S3~regout\ & (\Equal11~5_combout\ & \Mux1~9_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datab => \state.S3~regout\,
	datac => \Equal11~5_combout\,
	datad => \Mux1~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S17~regout\);

-- Location: LC_X2_Y3_N0
\state.S24\ : maxv_lcell
-- Equation(s):
-- \state.S24~regout\ = DFFEAS(((\Equal11~3_combout\ & ((\state.S3~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal11~3_combout\,
	datad => \state.S3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S24~regout\);

-- Location: LC_X4_Y4_N4
\Equal11~1\ : maxv_lcell
-- Equation(s):
-- \Equal11~1_combout\ = (!\IR~combout\(15) & (\IR~combout\(12) & (!\IR~combout\(14) & !\IR~combout\(13))))

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
	dataa => \IR~combout\(15),
	datab => \IR~combout\(12),
	datac => \IR~combout\(14),
	datad => \IR~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~1_combout\);

-- Location: LC_X4_Y4_N5
\state.S4\ : maxv_lcell
-- Equation(s):
-- \state.S4~regout\ = DFFEAS((\state.S3~regout\ & (\Equal11~1_combout\ & ((!\IR~combout\(0)) # (!\IR~combout\(1))))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \IR~combout\(1),
	datab => \IR~combout\(0),
	datac => \state.S3~regout\,
	datad => \Equal11~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S4~regout\);

-- Location: LC_X4_Y4_N8
\Equal11~2\ : maxv_lcell
-- Equation(s):
-- \Equal11~2_combout\ = (\IR~combout\(15) & (\IR~combout\(12) & (!\IR~combout\(14) & !\IR~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datab => \IR~combout\(12),
	datac => \IR~combout\(14),
	datad => \IR~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~2_combout\);

-- Location: LC_X3_Y4_N8
\state.S23\ : maxv_lcell
-- Equation(s):
-- \state.S23~regout\ = DFFEAS((((\state.S22~regout\ & \Equal11~2_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \state.S22~regout\,
	datad => \Equal11~2_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S23~regout\);

-- Location: LC_X4_Y4_N0
\Equal11~8\ : maxv_lcell
-- Equation(s):
-- \Equal11~8_combout\ = (!\IR~combout\(15) & (!\IR~combout\(12) & (!\IR~combout\(14) & !\IR~combout\(13))))

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
	dataa => \IR~combout\(15),
	datab => \IR~combout\(12),
	datac => \IR~combout\(14),
	datad => \IR~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~8_combout\);

-- Location: LC_X4_Y4_N9
\state.S6\ : maxv_lcell
-- Equation(s):
-- \state.S6~regout\ = DFFEAS((!\Equal11~1_combout\ & (((\Equal11~8_combout\ & \state.S3~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal11~1_combout\,
	datac => \Equal11~8_combout\,
	datad => \state.S3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S6~regout\);

-- Location: LC_X2_Y4_N6
\Equal11~9\ : maxv_lcell
-- Equation(s):
-- \Equal11~9_combout\ = (!\IR~combout\(14) & (!\IR~combout\(12) & (!\IR~combout\(13) & \IR~combout\(15))))

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
	dataa => \IR~combout\(14),
	datab => \IR~combout\(12),
	datac => \IR~combout\(13),
	datad => \IR~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~9_combout\);

-- Location: LC_X3_Y4_N1
\state.S19\ : maxv_lcell
-- Equation(s):
-- \state.S19~regout\ = DFFEAS((\state.S3~regout\ & (((\Equal11~9_combout\ & !\Equal11~1_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \state.S3~regout\,
	datac => \Equal11~9_combout\,
	datad => \Equal11~1_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S19~regout\);

-- Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_z,
	combout => \z~combout\);

-- Location: LC_X2_Y4_N8
\state.S20\ : maxv_lcell
-- Equation(s):
-- \state.S20~regout\ = DFFEAS((\state.S19~regout\ & (((\z~combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.S19~regout\,
	datac => \z~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S20~regout\);

-- Location: LC_X4_Y4_N7
\state.S5\ : maxv_lcell
-- Equation(s):
-- \state.S5~regout\ = DFFEAS((\IR~combout\(1) & (\IR~combout\(0) & (\Equal11~1_combout\ & \state.S3~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	dataa => \IR~combout\(1),
	datab => \IR~combout\(0),
	datac => \Equal11~1_combout\,
	datad => \state.S3~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S5~regout\);

-- Location: LC_X3_Y4_N9
\state.S21\ : maxv_lcell
-- Equation(s):
-- \WideOr2~0\ = (!\state.S23~regout\ & (!\state.S6~regout\ & (!state.S21 & !\state.S5~regout\)))
-- \state.S21~regout\ = DFFEAS(\WideOr2~0\, GLOBAL(\clk~combout\), VCC, , , \state.S20~regout\, , , VCC)

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
	clk => \clk~combout\,
	dataa => \state.S23~regout\,
	datab => \state.S6~regout\,
	datac => \state.S20~regout\,
	datad => \state.S5~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~0\,
	regout => \state.S21~regout\);

-- Location: LC_X4_Y4_N2
\state.S8\ : maxv_lcell
-- Equation(s):
-- \state.S8~regout\ = DFFEAS((!\IR~combout\(15) & (\IR~combout\(12) & (\IR~combout\(14) & \state.S2~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IR~combout\(15),
	datab => \IR~combout\(12),
	datac => \IR~combout\(14),
	datad => \state.S2~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S8~regout\);

-- Location: LC_X2_Y4_N4
\Selector36~2\ : maxv_lcell
-- Equation(s):
-- \Selector36~2_combout\ = (\IR~combout\(14) & (((\IR~combout\(13)) # (!\IR~combout\(15))))) # (!\IR~combout\(14) & ((\IR~combout\(15) & (\IR~combout\(12))) # (!\IR~combout\(15) & ((\IR~combout\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4fa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(14),
	datab => \IR~combout\(12),
	datac => \IR~combout\(13),
	datad => \IR~combout\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector36~2_combout\);

-- Location: LC_X3_Y4_N3
\Selector36~7\ : maxv_lcell
-- Equation(s):
-- \Selector36~7_combout\ = (((\state.S3~regout\ & \Selector36~2_combout\)))

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
	datac => \state.S3~regout\,
	datad => \Selector36~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector36~7_combout\);

-- Location: LC_X3_Y4_N4
\state.S9\ : maxv_lcell
-- Equation(s):
-- \Selector36~5\ = ((\Selector36~7_combout\) # ((!\nstate~1_combout\ & state.S9))) # (!\WideOr2~0\)
-- \state.S9~regout\ = DFFEAS(\Selector36~5\, GLOBAL(\clk~combout\), VCC, , , \state.S8~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff73",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \nstate~1_combout\,
	datab => \WideOr2~0\,
	datac => \state.S8~regout\,
	datad => \Selector36~7_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector36~5\,
	regout => \state.S9~regout\);

-- Location: LC_X5_Y4_N8
\Equal11~6\ : maxv_lcell
-- Equation(s):
-- \Equal11~6_combout\ = (!\IR~combout\(15) & (\IR~combout\(14) & (\IR~combout\(12) & \IR~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \IR~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~6_combout\);

-- Location: LC_X5_Y4_N1
\state.S10\ : maxv_lcell
-- Equation(s):
-- \state.S10~regout\ = DFFEAS((((\state.S9~regout\ & \Equal11~6_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \state.S9~regout\,
	datad => \Equal11~6_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S10~regout\);

-- Location: LC_X2_Y4_N0
\state.S7\ : maxv_lcell
-- Equation(s):
-- \state.S7~regout\ = DFFEAS((((\state.S2~regout\ & \Equal11~0_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \state.S2~regout\,
	datad => \Equal11~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S7~regout\);

-- Location: LC_X3_Y4_N7
\state.S11\ : maxv_lcell
-- Equation(s):
-- \WideOr5~0\ = ((!\state.S4~regout\ & (!state.S11 & !\state.S7~regout\)))
-- \state.S11~regout\ = DFFEAS(\WideOr5~0\, GLOBAL(\clk~combout\), VCC, , , \state.S10~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0003",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \state.S4~regout\,
	datac => \state.S10~regout\,
	datad => \state.S7~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~0\,
	regout => \state.S11~regout\);

-- Location: LC_X5_Y4_N9
\Equal11~7\ : maxv_lcell
-- Equation(s):
-- \Equal11~7_combout\ = (!\IR~combout\(15) & (\IR~combout\(14) & (\IR~combout\(12) & !\IR~combout\(13))))

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
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \IR~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~7_combout\);

-- Location: LC_X5_Y4_N4
\state.S12\ : maxv_lcell
-- Equation(s):
-- \state.S12~regout\ = DFFEAS((((\state.S9~regout\ & \Equal11~7_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datac => \state.S9~regout\,
	datad => \Equal11~7_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S12~regout\);

-- Location: LC_X3_Y4_N2
\Selector36~3\ : maxv_lcell
-- Equation(s):
-- \Selector36~3_combout\ = (\z~combout\ & (((\state.S22~regout\ & !\nstate~0_combout\)))) # (!\z~combout\ & ((\state.S19~regout\) # ((\state.S22~regout\ & !\nstate~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "44f4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \z~combout\,
	datab => \state.S19~regout\,
	datac => \state.S22~regout\,
	datad => \nstate~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector36~3_combout\);

-- Location: LC_X3_Y4_N0
\state.S13\ : maxv_lcell
-- Equation(s):
-- \Selector36~4\ = (\state.S24~regout\) # (((state.S13) # (\Selector36~3_combout\)) # (!\WideOr5~0\))
-- \state.S13~regout\ = DFFEAS(\Selector36~4\, GLOBAL(\clk~combout\), VCC, , , \state.S12~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.S24~regout\,
	datab => \WideOr5~0\,
	datac => \state.S12~regout\,
	datad => \Selector36~3_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector36~4\,
	regout => \state.S13~regout\);

-- Location: LC_X6_Y4_N6
\state.S18\ : maxv_lcell
-- Equation(s):
-- \wr_Mem~0\ = (((state.S18) # (\state.S13~regout\)))
-- \state.S18~regout\ = DFFEAS(\wr_Mem~0\, GLOBAL(\clk~combout\), VCC, , , \state.S17~regout\, , , VCC)

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
	clk => \clk~combout\,
	datac => \state.S17~regout\,
	datad => \state.S13~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_Mem~0\,
	regout => \state.S18~regout\);

-- Location: LC_X5_Y4_N7
\Equal11~4\ : maxv_lcell
-- Equation(s):
-- \Equal11~4_combout\ = (\IR~combout\(15) & (\IR~combout\(14) & (!\IR~combout\(12) & !\IR~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(15),
	datab => \IR~combout\(14),
	datac => \IR~combout\(12),
	datad => \IR~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~4_combout\);

-- Location: LC_X5_Y3_N7
\state.S14\ : maxv_lcell
-- Equation(s):
-- \state.S14~regout\ = DFFEAS(((\state.S3~regout\ & (\Equal11~4_combout\ & \Mux1~9_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

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
	clk => \clk~combout\,
	datab => \state.S3~regout\,
	datac => \Equal11~4_combout\,
	datad => \Mux1~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S14~regout\);

-- Location: LC_X6_Y4_N9
\state.S15\ : maxv_lcell
-- Equation(s):
-- \WideOr3~0\ = (!\state.S24~regout\ & (((!state.S15))))
-- \state.S15~regout\ = DFFEAS(\WideOr3~0\, GLOBAL(\clk~combout\), VCC, , , \state.S14~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.S24~regout\,
	datac => \state.S14~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~0\,
	regout => \state.S15~regout\);

-- Location: LC_X6_Y4_N7
\state.S16\ : maxv_lcell
-- Equation(s):
-- \state.S16~regout\ = DFFEAS((((\state.S18~regout\) # (\state.S15~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \state.S18~regout\,
	datad => \state.S15~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S16~regout\);

-- Location: LC_X3_Y4_N5
\state.S0\ : maxv_lcell
-- Equation(s):
-- \state.S0~regout\ = DFFEAS((!\Selector36~4\ & (!\Selector36~5\ & ((!\Equal15~10_combout\) # (!\state.S16~regout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \state.S16~regout\,
	datab => \Selector36~4\,
	datac => \Equal15~10_combout\,
	datad => \Selector36~5\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S0~regout\);

-- Location: LC_X4_Y4_N6
\state.S1\ : maxv_lcell
-- Equation(s):
-- \state.S1~regout\ = DFFEAS((((!\state.S0~regout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00ff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \state.S0~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.S1~regout\);

-- Location: LC_X2_Y2_N6
\wr_inc~2\ : maxv_lcell
-- Equation(s):
-- \wr_inc~2_combout\ = ((!\state.S16~regout\ & (!\state.S2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.S16~regout\,
	datac => \state.S2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_inc~2_combout\);

-- Location: LC_X2_Y2_N7
\WideOr3~1\ : maxv_lcell
-- Equation(s):
-- \WideOr3~1_combout\ = (\WideOr2~0\ & (!\state.S4~regout\ & (\wr_inc~2_combout\ & \WideOr3~0\)))

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
	dataa => \WideOr2~0\,
	datab => \state.S4~regout\,
	datac => \wr_inc~2_combout\,
	datad => \WideOr3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr3~1_combout\);

-- Location: LC_X2_Y3_N9
WideOr6 : maxv_lcell
-- Equation(s):
-- \WideOr6~combout\ = (\state.S7~regout\) # ((\state.S22~regout\) # ((\state.S11~regout\) # (!\WideOr3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.S7~regout\,
	datab => \state.S22~regout\,
	datac => \WideOr3~1_combout\,
	datad => \state.S11~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr6~combout\);

-- Location: LC_X4_Y4_N1
\WideOr0~0\ : maxv_lcell
-- Equation(s):
-- \WideOr0~0_combout\ = (((\state.S8~regout\))) # (!\state.S0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff55",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~regout\,
	datad => \state.S8~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~0_combout\);

-- Location: LC_X5_Y4_N6
\select_Mux_RF_A1~2\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A1~2_combout\ = (!\state.S3~regout\ & (((!\state.S12~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0505",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.S3~regout\,
	datac => \state.S12~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A1~2_combout\);

-- Location: LC_X5_Y4_N0
WideOr0 : maxv_lcell
-- Equation(s):
-- \WideOr0~combout\ = (\state.S20~regout\) # ((\state.S10~regout\) # ((\WideOr0~0_combout\) # (!\select_Mux_RF_A1~2_combout\)))

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
	dataa => \state.S20~regout\,
	datab => \state.S10~regout\,
	datac => \WideOr0~0_combout\,
	datad => \select_Mux_RF_A1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr0~combout\);

-- Location: LC_X6_Y4_N3
\WideOr7~0\ : maxv_lcell
-- Equation(s):
-- \WideOr7~0_combout\ = (\state.S14~regout\) # ((\state.S9~regout\) # ((\state.S17~regout\) # (\state.S3~regout\)))

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
	dataa => \state.S14~regout\,
	datab => \state.S9~regout\,
	datac => \state.S17~regout\,
	datad => \state.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr7~0_combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cy,
	combout => \cy~combout\);

-- Location: LC_X2_Y2_N4
\Mux0~0\ : maxv_lcell
-- Equation(s):
-- \Mux0~0_combout\ = (\IR~combout\(0) & (((!\IR~combout\(1) & \z~combout\)))) # (!\IR~combout\(0) & ((\cy~combout\) # ((!\IR~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f45",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IR~combout\(0),
	datab => \cy~combout\,
	datac => \IR~combout\(1),
	datad => \z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux0~0_combout\);

-- Location: LC_X2_Y2_N5
\Selector1~0\ : maxv_lcell
-- Equation(s):
-- \Selector1~0_combout\ = (((\Mux0~0_combout\ & \state.S4~regout\)))

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
	datac => \Mux0~0_combout\,
	datad => \state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~0_combout\);

-- Location: LC_X2_Y2_N9
\Selector3~0\ : maxv_lcell
-- Equation(s):
-- \Selector3~0_combout\ = ((\Selector1~0_combout\ & (!\IR~combout\(13) & \IR~combout\(12)))) # (!\WideOr2~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \IR~combout\(13),
	datac => \WideOr2~0\,
	datad => \IR~combout\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector3~0_combout\);

-- Location: LC_X2_Y4_N7
\Selector2~0\ : maxv_lcell
-- Equation(s):
-- \Selector2~0_combout\ = (!\state.S9~regout\ & (\WideOr2~0\ & ((!\state.S19~regout\))))

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
	dataa => \state.S9~regout\,
	datab => \WideOr2~0\,
	datad => \state.S19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~0_combout\);

-- Location: LC_X2_Y2_N3
\Selector4~0\ : maxv_lcell
-- Equation(s):
-- \Selector4~0_combout\ = ((\Selector1~0_combout\ & (\IR~combout\(13) $ (\IR~combout\(12))))) # (!\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "28ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \IR~combout\(13),
	datac => \IR~combout\(12),
	datad => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector4~0_combout\);

-- Location: LC_X2_Y4_N2
WideOr5 : maxv_lcell
-- Equation(s):
-- \WideOr5~combout\ = (\state.S5~regout\) # ((\state.S16~regout\) # ((\state.S22~regout\) # (!\WideOr5~0\)))

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
	dataa => \state.S5~regout\,
	datab => \state.S16~regout\,
	datac => \state.S22~regout\,
	datad => \WideOr5~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr5~combout\);

-- Location: LC_X4_Y4_N3
\WideOr4~0\ : maxv_lcell
-- Equation(s):
-- \WideOr4~0_combout\ = (\state.S5~regout\) # (((\state.S4~regout\) # (\state.S6~regout\)))

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
	dataa => \state.S5~regout\,
	datac => \state.S4~regout\,
	datad => \state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr4~0_combout\);

-- Location: LC_X2_Y4_N3
WideOr2 : maxv_lcell
-- Equation(s):
-- \WideOr2~combout\ = (((\state.S22~regout\) # (\state.S4~regout\)) # (!\WideOr2~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \WideOr2~0\,
	datac => \state.S22~regout\,
	datad => \state.S4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr2~combout\);

-- Location: LC_X2_Y2_N2
WideOr1 : maxv_lcell
-- Equation(s):
-- \WideOr1~combout\ = ((\state.S16~regout\) # ((\state.S2~regout\) # (\state.S7~regout\)))

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
	datab => \state.S16~regout\,
	datac => \state.S2~regout\,
	datad => \state.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr1~combout\);

-- Location: LC_X6_Y4_N2
\dec~0\ : maxv_lcell
-- Equation(s):
-- \dec~0_combout\ = ((i(0) & ((\state.S17~regout\) # (\state.S15~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.S17~regout\,
	datac => i(0),
	datad => \state.S15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec~0_combout\);

-- Location: LC_X6_Y4_N8
\dec~1\ : maxv_lcell
-- Equation(s):
-- \dec~1_combout\ = ((i(1) & ((\state.S17~regout\) # (\state.S15~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datac => \state.S17~regout\,
	datad => \state.S15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec~1_combout\);

-- Location: LC_X6_Y4_N4
\dec~2\ : maxv_lcell
-- Equation(s):
-- \dec~2_combout\ = (i(2) & ((\state.S17~regout\) # ((\state.S15~regout\))))

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
	dataa => \state.S17~regout\,
	datab => i(2),
	datad => \state.S15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec~2_combout\);

-- Location: LC_X2_Y4_N1
\select_Mux_ALU_B~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~0_combout\ = (\state.S23~regout\) # (((\state.S5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fafa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.S23~regout\,
	datac => \state.S5~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~0_combout\);

-- Location: LC_X2_Y4_N9
\WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \WideOr8~0_combout\ = (!\state.S23~regout\ & (!\state.S21~regout\ & (!\state.S9~regout\ & !\state.S6~regout\)))

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
	dataa => \state.S23~regout\,
	datab => \state.S21~regout\,
	datac => \state.S9~regout\,
	datad => \state.S6~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \WideOr8~0_combout\);

-- Location: LC_X2_Y2_N8
\Selector2~1\ : maxv_lcell
-- Equation(s):
-- \Selector2~1_combout\ = ((\Selector1~0_combout\ & (!\IR~combout\(13) & \IR~combout\(12)))) # (!\Selector2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "20ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \IR~combout\(13),
	datac => \IR~combout\(12),
	datad => \Selector2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector2~1_combout\);

-- Location: LC_X2_Y2_N1
\Selector1~1\ : maxv_lcell
-- Equation(s):
-- \Selector1~1_combout\ = (\state.S19~regout\) # ((\Selector1~0_combout\ & (\IR~combout\(13) & !\IR~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff08",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \IR~combout\(13),
	datac => \IR~combout\(12),
	datad => \state.S19~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector1~1_combout\);

-- Location: LC_X5_Y4_N3
\select_Mux_Mem_A~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_Mem_A~1_combout\ = ((\state.S13~regout\) # ((\state.S10~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \state.S13~regout\,
	datad => \state.S10~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_Mem_A~1_combout\);

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_IR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S1~regout\,
	oe => VCC,
	padio => ww_wr_IR);

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_RF~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr6~combout\,
	oe => VCC,
	padio => ww_wr_RF);

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_T1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr0~combout\,
	oe => VCC,
	padio => ww_wr_T1);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_T2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr7~0_combout\,
	oe => VCC,
	padio => ww_wr_T2);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_T3~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S2~regout\,
	oe => VCC,
	padio => ww_wr_T3);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_wr_inc~2_combout\,
	oe => VCC,
	padio => ww_wr_inc);

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_Mem~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_Mem~0\,
	oe => VCC,
	padio => ww_wr_Mem);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector3~0_combout\,
	oe => VCC,
	padio => ww_wr_cy);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector4~0_combout\,
	oe => VCC,
	padio => ww_wr_z);

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr5~combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A3(0));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr4~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A3(1));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S15~regout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A3(2));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr3~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(0));

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr2~combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(1));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \WideOr1~combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dec~0_combout\,
	oe => VCC,
	padio => ww_dec(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dec~1_combout\,
	oe => VCC,
	padio => ww_dec(1));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dec~2_combout\,
	oe => VCC,
	padio => ww_dec(2));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A1[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_select_Mux_RF_A1~2_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A1(0));

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A1[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S8~regout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A1(1));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU_B~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_B(0));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_WideOr8~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_B(1));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_T2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S14~regout\,
	oe => VCC,
	padio => ww_select_Mux_T2(0));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_T2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S9~regout\,
	oe => VCC,
	padio => ww_select_Mux_T2(1));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector2~1_combout\,
	oe => VCC,
	padio => ww_select_ALU(0));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Selector1~1_combout\,
	oe => VCC,
	padio => ww_select_ALU(1));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_Mem_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_Mem_A~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_Mem_A);

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_Mem_D~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S18~regout\,
	oe => VCC,
	padio => ww_select_Mux_Mem_D);

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S17~regout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A2);

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_T1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \state.S10~regout\,
	oe => VCC,
	padio => ww_select_Mux_T1);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_ALU_A);
END structure;


