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

-- DATE "05/10/2022 06:21:22"

-- 
-- Device: Altera 5M240ZT144C4 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	datapath IS
    PORT (
	wr_PC : IN std_logic;
	wr_IR : IN std_logic;
	wr_RF : IN std_logic;
	wr_RF_r7 : IN std_logic;
	wr_inc : IN std_logic;
	wr_DMem : IN std_logic;
	wr_cy : IN std_logic;
	wr_z : IN std_logic;
	wr_IFID : IN std_logic;
	wr_IDRR : IN std_logic;
	wr_RREX : IN std_logic;
	wr_EXMEM : IN std_logic;
	wr_MEMWB : IN std_logic;
	select_Mux_RF_D3 : IN std_logic_vector(2 DOWNTO 0);
	dec : IN std_logic_vector(2 DOWNTO 0);
	select_Mux_ALU_B : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_ALU2_B : IN std_logic_vector(1 DOWNTO 0);
	select_ALU : IN std_logic_vector(1 DOWNTO 0);
	select_ALU2 : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_RF_A3 : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_jump_loc : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_Mem_A : IN std_logic;
	select_Mux_Mem_D : IN std_logic;
	select_Mux_ALU_A : IN std_logic;
	select_Mux_ALU2_A : IN std_logic;
	select_Mux_RF_A1 : IN std_logic;
	select_Mux_RF_A2 : IN std_logic;
	select_Mux_DMem_A : IN std_logic;
	select_Mux_DMem_Din : IN std_logic;
	select_Mux_LMSM : IN std_logic;
	clk : IN std_logic;
	indexin : IN std_logic_vector(31 DOWNTO 0);
	cy_out : BUFFER std_logic;
	z_out : BUFFER std_logic;
	IR_out : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END datapath;

-- Design Ports Information


ARCHITECTURE structure OF datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_wr_PC : std_logic;
SIGNAL ww_wr_IR : std_logic;
SIGNAL ww_wr_RF : std_logic;
SIGNAL ww_wr_RF_r7 : std_logic;
SIGNAL ww_wr_inc : std_logic;
SIGNAL ww_wr_DMem : std_logic;
SIGNAL ww_wr_cy : std_logic;
SIGNAL ww_wr_z : std_logic;
SIGNAL ww_wr_IFID : std_logic;
SIGNAL ww_wr_IDRR : std_logic;
SIGNAL ww_wr_RREX : std_logic;
SIGNAL ww_wr_EXMEM : std_logic;
SIGNAL ww_wr_MEMWB : std_logic;
SIGNAL ww_select_Mux_RF_D3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_select_Mux_ALU_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_ALU2_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_ALU : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_ALU2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_RF_A3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_jump_loc : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_Mem_A : std_logic;
SIGNAL ww_select_Mux_Mem_D : std_logic;
SIGNAL ww_select_Mux_ALU_A : std_logic;
SIGNAL ww_select_Mux_ALU2_A : std_logic;
SIGNAL ww_select_Mux_RF_A1 : std_logic;
SIGNAL ww_select_Mux_RF_A2 : std_logic;
SIGNAL ww_select_Mux_DMem_A : std_logic;
SIGNAL ww_select_Mux_DMem_Din : std_logic;
SIGNAL ww_select_Mux_LMSM : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_indexin : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_cy_out : std_logic;
SIGNAL ww_z_out : std_logic;
SIGNAL ww_IR_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \inc|Add0~62\ : std_logic;
SIGNAL \inc|Add0~62COUT1_76\ : std_logic;
SIGNAL \inc|Add0~65_combout\ : std_logic;
SIGNAL \wr_inc~combout\ : std_logic;
SIGNAL \wr_PC~combout\ : std_logic;
SIGNAL \inc|Add0~67\ : std_logic;
SIGNAL \inc|Add0~70_combout\ : std_logic;
SIGNAL \inc|Add0~60_combout\ : std_logic;
SIGNAL \inc|Add0~72\ : std_logic;
SIGNAL \inc|Add0~72COUT1_77\ : std_logic;
SIGNAL \inc|Add0~0_combout\ : std_logic;
SIGNAL \inc|Add0~2\ : std_logic;
SIGNAL \inc|Add0~2COUT1_78\ : std_logic;
SIGNAL \inc|Add0~5_combout\ : std_logic;
SIGNAL \inc|Add0~7\ : std_logic;
SIGNAL \inc|Add0~7COUT1_79\ : std_logic;
SIGNAL \inc|Add0~10_combout\ : std_logic;
SIGNAL \inc|Add0~12\ : std_logic;
SIGNAL \inc|Add0~12COUT1_80\ : std_logic;
SIGNAL \inc|Add0~15_combout\ : std_logic;
SIGNAL \IMem|mem~0_combout\ : std_logic;
SIGNAL \inc|Add0~17\ : std_logic;
SIGNAL \inc|Add0~20_combout\ : std_logic;
SIGNAL \inc|Add0~22\ : std_logic;
SIGNAL \inc|Add0~22COUT1_81\ : std_logic;
SIGNAL \inc|Add0~25_combout\ : std_logic;
SIGNAL \inc|Add0~27\ : std_logic;
SIGNAL \inc|Add0~27COUT1_82\ : std_logic;
SIGNAL \inc|Add0~30_combout\ : std_logic;
SIGNAL \inc|Add0~32\ : std_logic;
SIGNAL \inc|Add0~32COUT1_83\ : std_logic;
SIGNAL \inc|Add0~35_combout\ : std_logic;
SIGNAL \IMem|mem~1_combout\ : std_logic;
SIGNAL \inc|Add0~37\ : std_logic;
SIGNAL \inc|Add0~37COUT1_84\ : std_logic;
SIGNAL \inc|Add0~40_combout\ : std_logic;
SIGNAL \inc|Add0~42\ : std_logic;
SIGNAL \inc|Add0~45_combout\ : std_logic;
SIGNAL \inc|Add0~47\ : std_logic;
SIGNAL \inc|Add0~47COUT1_85\ : std_logic;
SIGNAL \inc|Add0~50_combout\ : std_logic;
SIGNAL \inc|Add0~52\ : std_logic;
SIGNAL \inc|Add0~52COUT1_86\ : std_logic;
SIGNAL \inc|Add0~55_combout\ : std_logic;
SIGNAL \IMem|mem~2_combout\ : std_logic;
SIGNAL \IMem|mem~3_combout\ : std_logic;
SIGNAL \wr_IFID~combout\ : std_logic;
SIGNAL \wr_IR~combout\ : std_logic;
SIGNAL \IMem|mem~5\ : std_logic;
SIGNAL \IMem|mem~7\ : std_logic;
SIGNAL \IR|Op\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \IF_ID|IMem|Op\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \PC|Op\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inc|Op\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_wr_PC <= wr_PC;
ww_wr_IR <= wr_IR;
ww_wr_RF <= wr_RF;
ww_wr_RF_r7 <= wr_RF_r7;
ww_wr_inc <= wr_inc;
ww_wr_DMem <= wr_DMem;
ww_wr_cy <= wr_cy;
ww_wr_z <= wr_z;
ww_wr_IFID <= wr_IFID;
ww_wr_IDRR <= wr_IDRR;
ww_wr_RREX <= wr_RREX;
ww_wr_EXMEM <= wr_EXMEM;
ww_wr_MEMWB <= wr_MEMWB;
ww_select_Mux_RF_D3 <= select_Mux_RF_D3;
ww_dec <= dec;
ww_select_Mux_ALU_B <= select_Mux_ALU_B;
ww_select_Mux_ALU2_B <= select_Mux_ALU2_B;
ww_select_ALU <= select_ALU;
ww_select_ALU2 <= select_ALU2;
ww_select_Mux_RF_A3 <= select_Mux_RF_A3;
ww_select_Mux_jump_loc <= select_Mux_jump_loc;
ww_select_Mux_Mem_A <= select_Mux_Mem_A;
ww_select_Mux_Mem_D <= select_Mux_Mem_D;
ww_select_Mux_ALU_A <= select_Mux_ALU_A;
ww_select_Mux_ALU2_A <= select_Mux_ALU2_A;
ww_select_Mux_RF_A1 <= select_Mux_RF_A1;
ww_select_Mux_RF_A2 <= select_Mux_RF_A2;
ww_select_Mux_DMem_A <= select_Mux_DMem_A;
ww_select_Mux_DMem_Din <= select_Mux_DMem_Din;
ww_select_Mux_LMSM <= select_Mux_LMSM;
ww_clk <= clk;
ww_indexin <= indexin;
cy_out <= ww_cy_out;
z_out <= ww_z_out;
IR_out <= ww_IR_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X7_Y5_N3
\inc|Add0~60\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~60_combout\ = \PC|Op\(0) $ ((\PC|Op\(1)))
-- \inc|Add0~62\ = CARRY((\PC|Op\(0) & (\PC|Op\(1))))
-- \inc|Add0~62COUT1_76\ = CARRY((\PC|Op\(0) & (\PC|Op\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Op\(0),
	datab => \PC|Op\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~60_combout\,
	cout0 => \inc|Add0~62\,
	cout1 => \inc|Add0~62COUT1_76\);

-- Location: LC_X7_Y5_N4
\inc|Add0~65\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~65_combout\ = (\PC|Op\(2) $ ((\inc|Add0~62\)))
-- \inc|Add0~67\ = CARRY(((!\inc|Add0~62COUT1_76\) # (!\PC|Op\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|Op\(2),
	cin0 => \inc|Add0~62\,
	cin1 => \inc|Add0~62COUT1_76\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~65_combout\,
	cout => \inc|Add0~67\);

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_inc,
	combout => \wr_inc~combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_PC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_PC,
	combout => \wr_PC~combout\);

-- Location: LC_X7_Y5_N1
\PC|Op[2]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(2) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~65_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(2)))))
-- \PC|Op\(2) = DFFEAS(\inc|Op\(2), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inc|Add0~65_combout\,
	datac => \wr_inc~combout\,
	datad => \inc|Op\(2),
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(2),
	regout => \PC|Op\(2));

-- Location: LC_X7_Y5_N5
\inc|Add0~70\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~70_combout\ = \PC|Op\(3) $ ((((!\inc|Add0~67\))))
-- \inc|Add0~72\ = CARRY((\PC|Op\(3) & ((!\inc|Add0~67\))))
-- \inc|Add0~72COUT1_77\ = CARRY((\PC|Op\(3) & ((!\inc|Add0~67\))))

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
	dataa => \PC|Op\(3),
	cin => \inc|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~70_combout\,
	cout0 => \inc|Add0~72\,
	cout1 => \inc|Add0~72COUT1_77\);

-- Location: LC_X7_Y5_N2
\PC|Op[3]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(3) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~70_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(3)))))
-- \PC|Op\(3) = DFFEAS(\inc|Op\(3), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inc|Add0~70_combout\,
	datac => \wr_inc~combout\,
	datad => \inc|Op\(3),
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(3),
	regout => \PC|Op\(3));

-- Location: LC_X6_Y5_N4
\inc|Op[0]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(0) = ((GLOBAL(\wr_inc~combout\) & (!\PC|Op\(0))) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|Op\(0),
	datac => \inc|Op\(0),
	datad => \wr_inc~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(0));

-- Location: LC_X6_Y5_N5
\PC|Op[0]\ : maxv_lcell
-- Equation(s):
-- \IMem|mem~5\ = (\PC|Op\(3)) # ((\PC|Op\(2)) # ((\PC|Op\(1) & !N1_Op[0])))
-- \PC|Op\(0) = DFFEAS(\IMem|mem~5\, GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, \inc|Op\(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffae",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC|Op\(3),
	datab => \PC|Op\(1),
	datac => \inc|Op\(0),
	datad => \PC|Op\(2),
	aclr => GND,
	sload => VCC,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IMem|mem~5\,
	regout => \PC|Op\(0));

-- Location: LC_X6_Y5_N7
\PC|Op[1]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(1) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~60_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(1)))))
-- \PC|Op\(1) = DFFEAS(\inc|Op\(1), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inc|Add0~60_combout\,
	datac => \inc|Op\(1),
	datad => \wr_inc~combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(1),
	regout => \PC|Op\(1));

-- Location: LC_X7_Y5_N6
\inc|Add0~0\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~0_combout\ = (\PC|Op\(4) $ (((!\inc|Add0~67\ & \inc|Add0~72\) # (\inc|Add0~67\ & \inc|Add0~72COUT1_77\))))
-- \inc|Add0~2\ = CARRY(((!\inc|Add0~72\) # (!\PC|Op\(4))))
-- \inc|Add0~2COUT1_78\ = CARRY(((!\inc|Add0~72COUT1_77\) # (!\PC|Op\(4))))

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
	datab => \PC|Op\(4),
	cin => \inc|Add0~67\,
	cin0 => \inc|Add0~72\,
	cin1 => \inc|Add0~72COUT1_77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~0_combout\,
	cout0 => \inc|Add0~2\,
	cout1 => \inc|Add0~2COUT1_78\);

-- Location: LC_X6_Y5_N6
\PC|Op[4]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(4) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~0_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(4)))))
-- \PC|Op\(4) = DFFEAS(\inc|Op\(4), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inc|Add0~0_combout\,
	datac => \inc|Op\(4),
	datad => \wr_inc~combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(4),
	regout => \PC|Op\(4));

-- Location: LC_X7_Y5_N7
\inc|Add0~5\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~5_combout\ = \PC|Op\(5) $ ((((!(!\inc|Add0~67\ & \inc|Add0~2\) # (\inc|Add0~67\ & \inc|Add0~2COUT1_78\)))))
-- \inc|Add0~7\ = CARRY((\PC|Op\(5) & ((!\inc|Add0~2\))))
-- \inc|Add0~7COUT1_79\ = CARRY((\PC|Op\(5) & ((!\inc|Add0~2COUT1_78\))))

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
	dataa => \PC|Op\(5),
	cin => \inc|Add0~67\,
	cin0 => \inc|Add0~2\,
	cin1 => \inc|Add0~2COUT1_78\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~5_combout\,
	cout0 => \inc|Add0~7\,
	cout1 => \inc|Add0~7COUT1_79\);

-- Location: LC_X6_Y5_N0
\PC|Op[5]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(5) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~5_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(5)))))
-- \PC|Op\(5) = DFFEAS(\inc|Op\(5), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inc|Add0~5_combout\,
	datac => \inc|Op\(5),
	datad => \wr_inc~combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(5),
	regout => \PC|Op\(5));

-- Location: LC_X7_Y5_N8
\inc|Add0~10\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~10_combout\ = (\PC|Op\(6) $ (((!\inc|Add0~67\ & \inc|Add0~7\) # (\inc|Add0~67\ & \inc|Add0~7COUT1_79\))))
-- \inc|Add0~12\ = CARRY(((!\inc|Add0~7\) # (!\PC|Op\(6))))
-- \inc|Add0~12COUT1_80\ = CARRY(((!\inc|Add0~7COUT1_79\) # (!\PC|Op\(6))))

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
	datab => \PC|Op\(6),
	cin => \inc|Add0~67\,
	cin0 => \inc|Add0~7\,
	cin1 => \inc|Add0~7COUT1_79\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~10_combout\,
	cout0 => \inc|Add0~12\,
	cout1 => \inc|Add0~12COUT1_80\);

-- Location: LC_X7_Y5_N0
\PC|Op[6]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(6) = ((GLOBAL(\wr_inc~combout\) & ((\inc|Add0~10_combout\))) # (!GLOBAL(\wr_inc~combout\) & (\inc|Op\(6))))
-- \PC|Op\(6) = DFFEAS(\inc|Op\(6), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Op\(6),
	datac => \wr_inc~combout\,
	datad => \inc|Add0~10_combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(6),
	regout => \PC|Op\(6));

-- Location: LC_X7_Y5_N9
\inc|Add0~15\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~15_combout\ = (\PC|Op\(7) $ ((!(!\inc|Add0~67\ & \inc|Add0~12\) # (\inc|Add0~67\ & \inc|Add0~12COUT1_80\))))
-- \inc|Add0~17\ = CARRY(((\PC|Op\(7) & !\inc|Add0~12COUT1_80\)))

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
	datab => \PC|Op\(7),
	cin => \inc|Add0~67\,
	cin0 => \inc|Add0~12\,
	cin1 => \inc|Add0~12COUT1_80\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~15_combout\,
	cout => \inc|Add0~17\);

-- Location: LC_X6_Y5_N3
\PC|Op[7]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(7) = ((GLOBAL(\wr_inc~combout\) & ((\inc|Add0~15_combout\))) # (!GLOBAL(\wr_inc~combout\) & (\inc|Op\(7))))
-- \PC|Op\(7) = DFFEAS(\inc|Op\(7), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \wr_inc~combout\,
	datac => \inc|Op\(7),
	datad => \inc|Add0~15_combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(7),
	regout => \PC|Op\(7));

-- Location: LC_X6_Y5_N9
\IMem|mem~0\ : maxv_lcell
-- Equation(s):
-- \IMem|mem~0_combout\ = (!\PC|Op\(7) & (!\PC|Op\(4) & (!\PC|Op\(6) & !\PC|Op\(5))))

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
	dataa => \PC|Op\(7),
	datab => \PC|Op\(4),
	datac => \PC|Op\(6),
	datad => \PC|Op\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IMem|mem~0_combout\);

-- Location: LC_X8_Y5_N0
\inc|Add0~20\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~20_combout\ = (\PC|Op\(8) $ ((\inc|Add0~17\)))
-- \inc|Add0~22\ = CARRY(((!\inc|Add0~17\) # (!\PC|Op\(8))))
-- \inc|Add0~22COUT1_81\ = CARRY(((!\inc|Add0~17\) # (!\PC|Op\(8))))

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
	datab => \PC|Op\(8),
	cin => \inc|Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~20_combout\,
	cout0 => \inc|Add0~22\,
	cout1 => \inc|Add0~22COUT1_81\);

-- Location: LC_X8_Y5_N8
\PC|Op[8]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(8) = ((GLOBAL(\wr_inc~combout\) & ((\inc|Add0~20_combout\))) # (!GLOBAL(\wr_inc~combout\) & (\inc|Op\(8))))
-- \PC|Op\(8) = DFFEAS(\inc|Op\(8), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \inc|Op\(8),
	datac => \inc|Add0~20_combout\,
	datad => \wr_inc~combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(8),
	regout => \PC|Op\(8));

-- Location: LC_X8_Y5_N1
\inc|Add0~25\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~25_combout\ = (\PC|Op\(9) $ ((!(!\inc|Add0~17\ & \inc|Add0~22\) # (\inc|Add0~17\ & \inc|Add0~22COUT1_81\))))
-- \inc|Add0~27\ = CARRY(((\PC|Op\(9) & !\inc|Add0~22\)))
-- \inc|Add0~27COUT1_82\ = CARRY(((\PC|Op\(9) & !\inc|Add0~22COUT1_81\)))

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
	datab => \PC|Op\(9),
	cin => \inc|Add0~17\,
	cin0 => \inc|Add0~22\,
	cin1 => \inc|Add0~22COUT1_81\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~25_combout\,
	cout0 => \inc|Add0~27\,
	cout1 => \inc|Add0~27COUT1_82\);

-- Location: LC_X8_Y5_N9
\PC|Op[9]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(9) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~25_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(9)))))
-- \PC|Op\(9) = DFFEAS(\inc|Op\(9), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Add0~25_combout\,
	datac => \inc|Op\(9),
	datad => \wr_inc~combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(9),
	regout => \PC|Op\(9));

-- Location: LC_X8_Y5_N2
\inc|Add0~30\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~30_combout\ = (\PC|Op\(10) $ (((!\inc|Add0~17\ & \inc|Add0~27\) # (\inc|Add0~17\ & \inc|Add0~27COUT1_82\))))
-- \inc|Add0~32\ = CARRY(((!\inc|Add0~27\) # (!\PC|Op\(10))))
-- \inc|Add0~32COUT1_83\ = CARRY(((!\inc|Add0~27COUT1_82\) # (!\PC|Op\(10))))

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
	datab => \PC|Op\(10),
	cin => \inc|Add0~17\,
	cin0 => \inc|Add0~27\,
	cin1 => \inc|Add0~27COUT1_82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~30_combout\,
	cout0 => \inc|Add0~32\,
	cout1 => \inc|Add0~32COUT1_83\);

-- Location: LC_X9_Y5_N4
\PC|Op[10]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(10) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~30_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(10)))))
-- \PC|Op\(10) = DFFEAS(\inc|Op\(10), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Add0~30_combout\,
	datac => \wr_inc~combout\,
	datad => \inc|Op\(10),
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(10),
	regout => \PC|Op\(10));

-- Location: LC_X8_Y5_N3
\inc|Add0~35\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~35_combout\ = \PC|Op\(11) $ ((((!(!\inc|Add0~17\ & \inc|Add0~32\) # (\inc|Add0~17\ & \inc|Add0~32COUT1_83\)))))
-- \inc|Add0~37\ = CARRY((\PC|Op\(11) & ((!\inc|Add0~32\))))
-- \inc|Add0~37COUT1_84\ = CARRY((\PC|Op\(11) & ((!\inc|Add0~32COUT1_83\))))

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
	dataa => \PC|Op\(11),
	cin => \inc|Add0~17\,
	cin0 => \inc|Add0~32\,
	cin1 => \inc|Add0~32COUT1_83\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~35_combout\,
	cout0 => \inc|Add0~37\,
	cout1 => \inc|Add0~37COUT1_84\);

-- Location: LC_X9_Y5_N7
\PC|Op[11]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(11) = ((GLOBAL(\wr_inc~combout\) & ((\inc|Add0~35_combout\))) # (!GLOBAL(\wr_inc~combout\) & (\inc|Op\(11))))
-- \PC|Op\(11) = DFFEAS(\inc|Op\(11), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Op\(11),
	datac => \wr_inc~combout\,
	datad => \inc|Add0~35_combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(11),
	regout => \PC|Op\(11));

-- Location: LC_X5_Y5_N0
\IMem|mem~1\ : maxv_lcell
-- Equation(s):
-- \IMem|mem~1_combout\ = (!\PC|Op\(10) & (!\PC|Op\(11) & (!\PC|Op\(9) & !\PC|Op\(8))))

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
	dataa => \PC|Op\(10),
	datab => \PC|Op\(11),
	datac => \PC|Op\(9),
	datad => \PC|Op\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IMem|mem~1_combout\);

-- Location: LC_X8_Y5_N4
\inc|Add0~40\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~40_combout\ = (\PC|Op\(12) $ (((!\inc|Add0~17\ & \inc|Add0~37\) # (\inc|Add0~17\ & \inc|Add0~37COUT1_84\))))
-- \inc|Add0~42\ = CARRY(((!\inc|Add0~37COUT1_84\) # (!\PC|Op\(12))))

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
	datab => \PC|Op\(12),
	cin => \inc|Add0~17\,
	cin0 => \inc|Add0~37\,
	cin1 => \inc|Add0~37COUT1_84\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~40_combout\,
	cout => \inc|Add0~42\);

-- Location: LC_X9_Y5_N8
\PC|Op[12]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(12) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~40_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(12)))))
-- \PC|Op\(12) = DFFEAS(\inc|Op\(12), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Add0~40_combout\,
	datac => \wr_inc~combout\,
	datad => \inc|Op\(12),
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(12),
	regout => \PC|Op\(12));

-- Location: LC_X8_Y5_N5
\inc|Add0~45\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~45_combout\ = (\PC|Op\(13) $ ((!\inc|Add0~42\)))
-- \inc|Add0~47\ = CARRY(((\PC|Op\(13) & !\inc|Add0~42\)))
-- \inc|Add0~47COUT1_85\ = CARRY(((\PC|Op\(13) & !\inc|Add0~42\)))

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
	datab => \PC|Op\(13),
	cin => \inc|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~45_combout\,
	cout0 => \inc|Add0~47\,
	cout1 => \inc|Add0~47COUT1_85\);

-- Location: LC_X9_Y5_N9
\PC|Op[13]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(13) = ((GLOBAL(\wr_inc~combout\) & ((\inc|Add0~45_combout\))) # (!GLOBAL(\wr_inc~combout\) & (\inc|Op\(13))))
-- \PC|Op\(13) = DFFEAS(\inc|Op\(13), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Op\(13),
	datac => \wr_inc~combout\,
	datad => \inc|Add0~45_combout\,
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(13),
	regout => \PC|Op\(13));

-- Location: LC_X8_Y5_N6
\inc|Add0~50\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~50_combout\ = (\PC|Op\(14) $ (((!\inc|Add0~42\ & \inc|Add0~47\) # (\inc|Add0~42\ & \inc|Add0~47COUT1_85\))))
-- \inc|Add0~52\ = CARRY(((!\inc|Add0~47\) # (!\PC|Op\(14))))
-- \inc|Add0~52COUT1_86\ = CARRY(((!\inc|Add0~47COUT1_85\) # (!\PC|Op\(14))))

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
	datab => \PC|Op\(14),
	cin => \inc|Add0~42\,
	cin0 => \inc|Add0~47\,
	cin1 => \inc|Add0~47COUT1_85\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~50_combout\,
	cout0 => \inc|Add0~52\,
	cout1 => \inc|Add0~52COUT1_86\);

-- Location: LC_X9_Y5_N6
\PC|Op[14]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(14) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~50_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(14)))))
-- \PC|Op\(14) = DFFEAS(\inc|Op\(14), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Add0~50_combout\,
	datac => \wr_inc~combout\,
	datad => \inc|Op\(14),
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(14),
	regout => \PC|Op\(14));

-- Location: LC_X8_Y5_N7
\inc|Add0~55\ : maxv_lcell
-- Equation(s):
-- \inc|Add0~55_combout\ = (\PC|Op\(15) $ ((!(!\inc|Add0~42\ & \inc|Add0~52\) # (\inc|Add0~42\ & \inc|Add0~52COUT1_86\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \PC|Op\(15),
	cin => \inc|Add0~42\,
	cin0 => \inc|Add0~52\,
	cin1 => \inc|Add0~52COUT1_86\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Add0~55_combout\);

-- Location: LC_X9_Y5_N2
\PC|Op[15]\ : maxv_lcell
-- Equation(s):
-- \inc|Op\(15) = ((GLOBAL(\wr_inc~combout\) & (\inc|Add0~55_combout\)) # (!GLOBAL(\wr_inc~combout\) & ((\inc|Op\(15)))))
-- \PC|Op\(15) = DFFEAS(\inc|Op\(15), GLOBAL(\clk~combout\), VCC, , \wr_PC~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \inc|Add0~55_combout\,
	datac => \wr_inc~combout\,
	datad => \inc|Op\(15),
	aclr => GND,
	ena => \wr_PC~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inc|Op\(15),
	regout => \PC|Op\(15));

-- Location: LC_X9_Y5_N3
\IMem|mem~2\ : maxv_lcell
-- Equation(s):
-- \IMem|mem~2_combout\ = (!\PC|Op\(14) & (!\PC|Op\(13) & (!\PC|Op\(15) & !\PC|Op\(12))))

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
	dataa => \PC|Op\(14),
	datab => \PC|Op\(13),
	datac => \PC|Op\(15),
	datad => \PC|Op\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IMem|mem~2_combout\);

-- Location: LC_X5_Y5_N2
\IMem|mem~3\ : maxv_lcell
-- Equation(s):
-- \IMem|mem~3_combout\ = ((\IMem|mem~0_combout\ & (\IMem|mem~1_combout\ & \IMem|mem~2_combout\)))

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
	datab => \IMem|mem~0_combout\,
	datac => \IMem|mem~1_combout\,
	datad => \IMem|mem~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IMem|mem~3_combout\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_IFID~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_IFID,
	combout => \wr_IFID~combout\);

-- Location: LC_X5_Y5_N5
\IF_ID|IMem|Op[0]\ : maxv_lcell
-- Equation(s):
-- \IF_ID|IMem|Op\(0) = DFFEAS((!\PC|Op\(1) & (!\PC|Op\(3) & (!\PC|Op\(2) & \IMem|mem~3_combout\))), GLOBAL(\clk~combout\), VCC, , \wr_IFID~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC|Op\(1),
	datab => \PC|Op\(3),
	datac => \PC|Op\(2),
	datad => \IMem|mem~3_combout\,
	aclr => GND,
	ena => \wr_IFID~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_ID|IMem|Op\(0));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_IR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_IR,
	combout => \wr_IR~combout\);

-- Location: LC_X6_Y4_N8
\IR|Op[0]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(0) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(0), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(0),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(0));

-- Location: LC_X5_Y5_N6
\IF_ID|IMem|Op[1]\ : maxv_lcell
-- Equation(s):
-- \IF_ID|IMem|Op\(1) = DFFEAS((\IMem|mem~2_combout\ & (!\IMem|mem~5\ & (\IMem|mem~0_combout\ & \IMem|mem~1_combout\))), GLOBAL(\clk~combout\), VCC, , \wr_IFID~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \IMem|mem~2_combout\,
	datab => \IMem|mem~5\,
	datac => \IMem|mem~0_combout\,
	datad => \IMem|mem~1_combout\,
	aclr => GND,
	ena => \wr_IFID~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_ID|IMem|Op\(1));

-- Location: LC_X6_Y4_N2
\IR|Op[1]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(1) = DFFEAS((((\IF_ID|IMem|Op\(1)))), GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \IF_ID|IMem|Op\(1),
	aclr => GND,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(1));

-- Location: LC_X6_Y4_N1
\IR|Op[2]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(0), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(0),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(2));

-- Location: LC_X6_Y4_N5
\IR|Op[3]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(3) = DFFEAS((((\IF_ID|IMem|Op\(1)))), GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, , , , )

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
	clk => \clk~combout\,
	datad => \IF_ID|IMem|Op\(1),
	aclr => GND,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(3));

-- Location: LC_X5_Y5_N3
\IF_ID|IMem|Op[4]\ : maxv_lcell
-- Equation(s):
-- \IMem|mem~7\ = (!\PC|Op\(3) & (((!\PC|Op\(2) & \IMem|mem~3_combout\))))
-- \IF_ID|IMem|Op\(4) = DFFEAS(\IMem|mem~7\, GLOBAL(\clk~combout\), VCC, , \wr_IFID~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0500",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC|Op\(3),
	datac => \PC|Op\(2),
	datad => \IMem|mem~3_combout\,
	aclr => GND,
	ena => \wr_IFID~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \IMem|mem~7\,
	regout => \IF_ID|IMem|Op\(4));

-- Location: LC_X6_Y4_N4
\IR|Op[4]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(4) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(4), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(4),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(4));

-- Location: LC_X6_Y4_N0
\IR|Op[5]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(0), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(0),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(5));

-- Location: LC_X6_Y4_N6
\IR|Op[6]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(4), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(4),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(6));

-- Location: LC_X6_Y4_N9
\IR|Op[7]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(0), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(0),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(7));

-- Location: LC_X6_Y4_N7
\IR|Op[8]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(0), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(0),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(8));

-- Location: LC_X5_Y5_N7
\IF_ID|IMem|Op[9]\ : maxv_lcell
-- Equation(s):
-- \IF_ID|IMem|Op\(9) = DFFEAS((!\PC|Op\(1) & (\PC|Op\(0) & ((\IMem|mem~7\)))), GLOBAL(\clk~combout\), VCC, , \wr_IFID~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC|Op\(1),
	datab => \PC|Op\(0),
	datad => \IMem|mem~7\,
	aclr => GND,
	ena => \wr_IFID~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_ID|IMem|Op\(9));

-- Location: LC_X5_Y5_N9
\IR|Op[9]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(9) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(9), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(9),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(9));

-- Location: LC_X5_Y5_N8
\IF_ID|IMem|Op[12]\ : maxv_lcell
-- Equation(s):
-- \IF_ID|IMem|Op\(12) = DFFEAS((\PC|Op\(1) & (!\PC|Op\(0) & ((\IMem|mem~7\)))), GLOBAL(\clk~combout\), VCC, , \wr_IFID~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC|Op\(1),
	datab => \PC|Op\(0),
	datad => \IMem|mem~7\,
	aclr => GND,
	ena => \wr_IFID~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_ID|IMem|Op\(12));

-- Location: LC_X6_Y5_N8
\IR|Op[12]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(12) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(12), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(12),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(12));

-- Location: LC_X5_Y5_N4
\IF_ID|IMem|Op[13]\ : maxv_lcell
-- Equation(s):
-- \IF_ID|IMem|Op\(13) = DFFEAS((\PC|Op\(1) & (\PC|Op\(0) & ((\IMem|mem~7\)))), GLOBAL(\clk~combout\), VCC, , \wr_IFID~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \PC|Op\(1),
	datab => \PC|Op\(0),
	datad => \IMem|mem~7\,
	aclr => GND,
	ena => \wr_IFID~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IF_ID|IMem|Op\(13));

-- Location: LC_X5_Y5_N1
\IR|Op[13]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(13), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(13),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(13));

-- Location: LC_X6_Y4_N3
\IR|Op[14]\ : maxv_lcell
-- Equation(s):
-- \IR|Op\(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \wr_IR~combout\, \IF_ID|IMem|Op\(0), , , VCC)

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
	clk => \clk~combout\,
	datac => \IF_ID|IMem|Op\(0),
	aclr => GND,
	sload => VCC,
	ena => \wr_IR~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IR|Op\(14));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_cy);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_z);

-- Location: PIN_21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_jump_loc[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_jump_loc(0));

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_jump_loc[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_jump_loc(1));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_Mem_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_Mem_A);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_Mem_D~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_Mem_D);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(5));

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(6));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(7));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(8));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(9));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(10));

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(11));

-- Location: PIN_80,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(12));

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(13));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(14));

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(15));

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(16));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(17));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(18));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(19));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(20));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(21));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(22));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(23));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(24));

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(25));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(26));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(27));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(28));

-- Location: PIN_105,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(29));

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(30));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(31));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cy_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_cy_out);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_z_out);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(0),
	oe => VCC,
	padio => ww_IR_out(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(1),
	oe => VCC,
	padio => ww_IR_out(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(2),
	oe => VCC,
	padio => ww_IR_out(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(3),
	oe => VCC,
	padio => ww_IR_out(3));

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(4),
	oe => VCC,
	padio => ww_IR_out(4));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(5),
	oe => VCC,
	padio => ww_IR_out(5));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(6),
	oe => VCC,
	padio => ww_IR_out(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(7),
	oe => VCC,
	padio => ww_IR_out(7));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(8),
	oe => VCC,
	padio => ww_IR_out(8));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(9),
	oe => VCC,
	padio => ww_IR_out(9));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR_out(10));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR_out(11));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(12),
	oe => VCC,
	padio => ww_IR_out(12));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(13),
	oe => VCC,
	padio => ww_IR_out(13));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \IR|Op\(14),
	oe => VCC,
	padio => ww_IR_out(14));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IR_out[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IR_out(15));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dec[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dec(2));

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A2);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dec[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dec(1));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dec[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dec(0));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_RREX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_RREX);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_IDRR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_IDRR);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_EXMEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_EXMEM);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU_A);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU_B(0));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU_B(1));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU(0));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU(1));

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_D3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_D3(0));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_D3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_D3(1));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_D3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_D3(2));

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_RF~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_RF);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A3(0));

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A3(1));

-- Location: PIN_32,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_RF_r7~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_RF_r7);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU2_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU2_A);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU2_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU2_B(0));

-- Location: PIN_11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU2_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU2_B(1));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU2(0));

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU2(1));

-- Location: PIN_106,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A1);

-- Location: PIN_138,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_MEMWB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_MEMWB);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_DMem_Din~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_DMem_Din);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_DMem~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_DMem);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_DMem_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_DMem_A);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_LMSM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_LMSM);

-- Location: PIN_108,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(4));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(3));

-- Location: PIN_104,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(2));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(1));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\indexin[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_indexin(0));
END structure;


