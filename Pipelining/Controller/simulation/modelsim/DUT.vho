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

-- DATE "05/10/2022 05:47:38"

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

ENTITY 	controller IS
    PORT (
	IDRR_opcode_Op : IN std_logic_vector(3 DOWNTO 0);
	RREX_opcode_Op : IN std_logic_vector(3 DOWNTO 0);
	EXMEM_opcode_Op : IN std_logic_vector(3 DOWNTO 0);
	MEMWB_opcode_Op : IN std_logic_vector(3 DOWNTO 0);
	cy : IN std_logic;
	z : IN std_logic;
	clk : IN std_logic;
	haz_EX : IN std_logic;
	haz_MEM : IN std_logic;
	haz_WB : IN std_logic;
	haz_BEQ : IN std_logic;
	haz_JAL : IN std_logic;
	haz_JLR : IN std_logic;
	haz_JRI : IN std_logic;
	IDRR_5_0_Op : IN std_logic_vector(5 DOWNTO 0);
	RREX_5_0_Op : IN std_logic_vector(5 DOWNTO 0);
	wr_PC : OUT std_logic;
	wr_IR : OUT std_logic;
	wr_RF : OUT std_logic;
	wr_RF_r7 : OUT std_logic;
	wr_inc : OUT std_logic;
	wr_DMem : OUT std_logic;
	wr_cy : OUT std_logic;
	wr_z : OUT std_logic;
	wr_IFID : OUT std_logic;
	wr_IDRR : OUT std_logic;
	wr_RREX : OUT std_logic;
	wr_EXMEM : OUT std_logic;
	wr_MEMWB : OUT std_logic;
	select_Mux_RF_D3 : OUT std_logic_vector(2 DOWNTO 0);
	dec : OUT std_logic_vector(2 DOWNTO 0);
	select_Mux_ALU_B : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_ALU2_B : OUT std_logic_vector(1 DOWNTO 0);
	select_ALU : OUT std_logic_vector(1 DOWNTO 0);
	select_ALU2 : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_RF_A3 : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_jump_loc : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_Mem_A : OUT std_logic;
	select_Mux_Mem_D : OUT std_logic;
	select_Mux_ALU_A : OUT std_logic;
	select_Mux_ALU2_A : OUT std_logic;
	select_Mux_RF_A1 : OUT std_logic;
	select_Mux_RF_A2 : OUT std_logic;
	select_Mux_DMem_A : OUT std_logic;
	select_Mux_DMem_Din : OUT std_logic;
	select_Mux_LMSM : OUT std_logic;
	cy_in : OUT std_logic;
	z_in : OUT std_logic
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
SIGNAL ww_IDRR_opcode_Op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RREX_opcode_Op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EXMEM_opcode_Op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MEMWB_opcode_Op : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_cy : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_haz_EX : std_logic;
SIGNAL ww_haz_MEM : std_logic;
SIGNAL ww_haz_WB : std_logic;
SIGNAL ww_haz_BEQ : std_logic;
SIGNAL ww_haz_JAL : std_logic;
SIGNAL ww_haz_JLR : std_logic;
SIGNAL ww_haz_JRI : std_logic;
SIGNAL ww_IDRR_5_0_Op : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_RREX_5_0_Op : std_logic_vector(5 DOWNTO 0);
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
SIGNAL ww_cy_in : std_logic;
SIGNAL ww_z_in : std_logic;
SIGNAL \haz_JLR~combout\ : std_logic;
SIGNAL \haz_MEM~combout\ : std_logic;
SIGNAL \haz_WB~combout\ : std_logic;
SIGNAL \haz_BEQ~combout\ : std_logic;
SIGNAL \haz_JAL~combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \haz_JRI~combout\ : std_logic;
SIGNAL \haz_EX~combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \wr_RF~0_combout\ : std_logic;
SIGNAL \wr_DMem~0_combout\ : std_logic;
SIGNAL \wr_DMem~1_combout\ : std_logic;
SIGNAL \z~combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \cy~combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \wr_z~0_combout\ : std_logic;
SIGNAL \wr_cy~0_combout\ : std_logic;
SIGNAL \wr_cy~1_combout\ : std_logic;
SIGNAL \wr_z~2_combout\ : std_logic;
SIGNAL \wr_z~1_combout\ : std_logic;
SIGNAL \wr_z~3_combout\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \wr_RREX$latch~combout\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Mux10~1_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \wr_EXMEM$latch~combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_D3~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_D3~1_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~1_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~2_combout\ : std_logic;
SIGNAL \select_ALU2~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU2_B~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU2_B~1_combout\ : std_logic;
SIGNAL \select_ALU~2_combout\ : std_logic;
SIGNAL \select_Mux_ALU_A~0_combout\ : std_logic;
SIGNAL \select_ALU~3_combout\ : std_logic;
SIGNAL \select_ALU~4_combout\ : std_logic;
SIGNAL \select_ALU~5_combout\ : std_logic;
SIGNAL \select_Mux_RF_A3~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_A3~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_A3~2_combout\ : std_logic;
SIGNAL \select_Mux_ALU_A~1_combout\ : std_logic;
SIGNAL \select_Mux_RF_A1~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_A1~1_combout\ : std_logic;
SIGNAL \IDRR_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEMWB_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EXMEM_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RREX_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RREX_5_0_Op~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \IDRR_5_0_Op~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_select_Mux_ALU_B~2_combout\ : std_logic;
SIGNAL \ALT_INV_wr_RF~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~2_combout\ : std_logic;

BEGIN

ww_IDRR_opcode_Op <= IDRR_opcode_Op;
ww_RREX_opcode_Op <= RREX_opcode_Op;
ww_EXMEM_opcode_Op <= EXMEM_opcode_Op;
ww_MEMWB_opcode_Op <= MEMWB_opcode_Op;
ww_cy <= cy;
ww_z <= z;
ww_clk <= clk;
ww_haz_EX <= haz_EX;
ww_haz_MEM <= haz_MEM;
ww_haz_WB <= haz_WB;
ww_haz_BEQ <= haz_BEQ;
ww_haz_JAL <= haz_JAL;
ww_haz_JLR <= haz_JLR;
ww_haz_JRI <= haz_JRI;
ww_IDRR_5_0_Op <= IDRR_5_0_Op;
ww_RREX_5_0_Op <= RREX_5_0_Op;
wr_PC <= ww_wr_PC;
wr_IR <= ww_wr_IR;
wr_RF <= ww_wr_RF;
wr_RF_r7 <= ww_wr_RF_r7;
wr_inc <= ww_wr_inc;
wr_DMem <= ww_wr_DMem;
wr_cy <= ww_wr_cy;
wr_z <= ww_wr_z;
wr_IFID <= ww_wr_IFID;
wr_IDRR <= ww_wr_IDRR;
wr_RREX <= ww_wr_RREX;
wr_EXMEM <= ww_wr_EXMEM;
wr_MEMWB <= ww_wr_MEMWB;
select_Mux_RF_D3 <= ww_select_Mux_RF_D3;
dec <= ww_dec;
select_Mux_ALU_B <= ww_select_Mux_ALU_B;
select_Mux_ALU2_B <= ww_select_Mux_ALU2_B;
select_ALU <= ww_select_ALU;
select_ALU2 <= ww_select_ALU2;
select_Mux_RF_A3 <= ww_select_Mux_RF_A3;
select_Mux_jump_loc <= ww_select_Mux_jump_loc;
select_Mux_Mem_A <= ww_select_Mux_Mem_A;
select_Mux_Mem_D <= ww_select_Mux_Mem_D;
select_Mux_ALU_A <= ww_select_Mux_ALU_A;
select_Mux_ALU2_A <= ww_select_Mux_ALU2_A;
select_Mux_RF_A1 <= ww_select_Mux_RF_A1;
select_Mux_RF_A2 <= ww_select_Mux_RF_A2;
select_Mux_DMem_A <= ww_select_Mux_DMem_A;
select_Mux_DMem_Din <= ww_select_Mux_DMem_Din;
select_Mux_LMSM <= ww_select_Mux_LMSM;
cy_in <= ww_cy_in;
z_in <= ww_z_in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_select_Mux_ALU_B~2_combout\ <= NOT \select_Mux_ALU_B~2_combout\;
\ALT_INV_wr_RF~0_combout\ <= NOT \wr_RF~0_combout\;
\ALT_INV_process_0~2_combout\ <= NOT \process_0~2_combout\;

-- Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_JLR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_JLR,
	combout => \haz_JLR~combout\);

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_MEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_MEM,
	combout => \haz_MEM~combout\);

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_WB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_WB,
	combout => \haz_WB~combout\);

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_BEQ~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_BEQ,
	combout => \haz_BEQ~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_JAL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_JAL,
	combout => \haz_JAL~combout\);

-- Location: LC_X12_Y4_N2
\process_0~1\ : maxv_lcell
-- Equation(s):
-- \process_0~1_combout\ = (\haz_MEM~combout\) # ((\haz_WB~combout\) # ((\haz_BEQ~combout\) # (\haz_JAL~combout\)))

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
	dataa => \haz_MEM~combout\,
	datab => \haz_WB~combout\,
	datac => \haz_BEQ~combout\,
	datad => \haz_JAL~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~1_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_JRI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_JRI,
	combout => \haz_JRI~combout\);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(3),
	combout => \IDRR_opcode_Op~combout\(3));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(2),
	combout => \IDRR_opcode_Op~combout\(2));

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_EX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_EX,
	combout => \haz_EX~combout\);

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(1),
	combout => \IDRR_opcode_Op~combout\(1));

-- Location: LC_X12_Y4_N3
\process_0~0\ : maxv_lcell
-- Equation(s):
-- \process_0~0_combout\ = (\haz_EX~combout\) # ((\IDRR_opcode_Op~combout\(3) & (\IDRR_opcode_Op~combout\(2) & !\IDRR_opcode_Op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_opcode_Op~combout\(3),
	datab => \IDRR_opcode_Op~combout\(2),
	datac => \haz_EX~combout\,
	datad => \IDRR_opcode_Op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: LC_X12_Y4_N4
\process_0~2\ : maxv_lcell
-- Equation(s):
-- \process_0~2_combout\ = (\haz_JLR~combout\) # ((\process_0~1_combout\) # ((\haz_JRI~combout\) # (\process_0~0_combout\)))

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
	dataa => \haz_JLR~combout\,
	datab => \process_0~1_combout\,
	datac => \haz_JRI~combout\,
	datad => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~2_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(1),
	combout => \MEMWB_opcode_Op~combout\(1));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(2),
	combout => \MEMWB_opcode_Op~combout\(2));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(0),
	combout => \MEMWB_opcode_Op~combout\(0));

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(3),
	combout => \MEMWB_opcode_Op~combout\(3));

-- Location: LC_X7_Y7_N9
\Mux19~0\ : maxv_lcell
-- Equation(s):
-- \Mux19~0_combout\ = (\MEMWB_opcode_Op~combout\(1) & ((\MEMWB_opcode_Op~combout\(2) & ((\MEMWB_opcode_Op~combout\(3)) # (!\MEMWB_opcode_Op~combout\(0)))) # (!\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(0))))) # (!\MEMWB_opcode_Op~combout\(1) 
-- & ((\MEMWB_opcode_Op~combout\(0) & (\MEMWB_opcode_Op~combout\(2))) # (!\MEMWB_opcode_Op~combout\(0) & ((\MEMWB_opcode_Op~combout\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ed68",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(1),
	datab => \MEMWB_opcode_Op~combout\(2),
	datac => \MEMWB_opcode_Op~combout\(0),
	datad => \MEMWB_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~0_combout\);

-- Location: LC_X7_Y7_N1
\wr_RF~0\ : maxv_lcell
-- Equation(s):
-- \wr_RF~0_combout\ = (((\process_0~2_combout\) # (\Mux19~0_combout\)))

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
	datac => \process_0~2_combout\,
	datad => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RF~0_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(1),
	combout => \EXMEM_opcode_Op~combout\(1));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(3),
	combout => \EXMEM_opcode_Op~combout\(3));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(2),
	combout => \EXMEM_opcode_Op~combout\(2));

-- Location: LC_X3_Y7_N2
\wr_DMem~0\ : maxv_lcell
-- Equation(s):
-- \wr_DMem~0_combout\ = (!\EXMEM_opcode_Op~combout\(3) & (((\EXMEM_opcode_Op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM_opcode_Op~combout\(3),
	datad => \EXMEM_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_DMem~0_combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(0),
	combout => \EXMEM_opcode_Op~combout\(0));

-- Location: LC_X3_Y7_N5
\wr_DMem~1\ : maxv_lcell
-- Equation(s):
-- \wr_DMem~1_combout\ = (!\EXMEM_opcode_Op~combout\(1) & (\wr_DMem~0_combout\ & (!\process_0~2_combout\ & \EXMEM_opcode_Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM_opcode_Op~combout\(1),
	datab => \wr_DMem~0_combout\,
	datac => \process_0~2_combout\,
	datad => \EXMEM_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_DMem~1_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(1),
	combout => \RREX_5_0_Op~combout\(1));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(0),
	combout => \RREX_5_0_Op~combout\(0));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(2),
	combout => \RREX_5_0_Op~combout\(2));

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_z,
	combout => \z~combout\);

-- Location: LC_X6_Y4_N3
\process_0~3\ : maxv_lcell
-- Equation(s):
-- \process_0~3_combout\ = (!\RREX_5_0_Op~combout\(1) & (!\RREX_5_0_Op~combout\(2) & ((\z~combout\) # (!\RREX_5_0_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0501",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_5_0_Op~combout\(1),
	datab => \RREX_5_0_Op~combout\(0),
	datac => \RREX_5_0_Op~combout\(2),
	datad => \z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~3_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cy,
	combout => \cy~combout\);

-- Location: LC_X6_Y4_N8
\process_0~4\ : maxv_lcell
-- Equation(s):
-- \process_0~4_combout\ = (\process_0~3_combout\) # ((!\RREX_5_0_Op~combout\(0) & (!\RREX_5_0_Op~combout\(2) & \cy~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \RREX_5_0_Op~combout\(0),
	datac => \RREX_5_0_Op~combout\(2),
	datad => \cy~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~4_combout\);

-- Location: LC_X6_Y4_N4
\Mux10~0\ : maxv_lcell
-- Equation(s):
-- \Mux10~0_combout\ = (!\process_0~4_combout\ & (((\RREX_5_0_Op~combout\(2)) # (!\RREX_5_0_Op~combout\(0))) # (!\RREX_5_0_Op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f7",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_5_0_Op~combout\(1),
	datab => \RREX_5_0_Op~combout\(0),
	datac => \RREX_5_0_Op~combout\(2),
	datad => \process_0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~0_combout\);

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(0),
	combout => \RREX_opcode_Op~combout\(0));

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(2),
	combout => \RREX_opcode_Op~combout\(2));

-- Location: LC_X6_Y4_N0
\wr_z~0\ : maxv_lcell
-- Equation(s):
-- \wr_z~0_combout\ = (((!\RREX_opcode_Op~combout\(2) & !\process_0~2_combout\)))

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
	datac => \RREX_opcode_Op~combout\(2),
	datad => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_z~0_combout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(1),
	combout => \RREX_opcode_Op~combout\(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(3),
	combout => \RREX_opcode_Op~combout\(3));

-- Location: LC_X6_Y4_N6
\wr_cy~0\ : maxv_lcell
-- Equation(s):
-- \wr_cy~0_combout\ = (((!\RREX_opcode_Op~combout\(1) & !\RREX_opcode_Op~combout\(3))))

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
	datac => \RREX_opcode_Op~combout\(1),
	datad => \RREX_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_cy~0_combout\);

-- Location: LC_X6_Y4_N2
\wr_cy~1\ : maxv_lcell
-- Equation(s):
-- \wr_cy~1_combout\ = (\wr_z~0_combout\ & (\wr_cy~0_combout\ & ((!\RREX_opcode_Op~combout\(0)) # (!\Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \RREX_opcode_Op~combout\(0),
	datac => \wr_z~0_combout\,
	datad => \wr_cy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_cy~1_combout\);

-- Location: LC_X6_Y4_N9
\wr_z~2\ : maxv_lcell
-- Equation(s):
-- \wr_z~2_combout\ = (((\RREX_opcode_Op~combout\(1) & !\RREX_opcode_Op~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \RREX_opcode_Op~combout\(1),
	datad => \RREX_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_z~2_combout\);

-- Location: LC_X6_Y4_N7
\wr_z~1\ : maxv_lcell
-- Equation(s):
-- \wr_z~1_combout\ = ((!\RREX_opcode_Op~combout\(0) & (!\RREX_opcode_Op~combout\(2) & !\process_0~2_combout\)))

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
	datab => \RREX_opcode_Op~combout\(0),
	datac => \RREX_opcode_Op~combout\(2),
	datad => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_z~1_combout\);

-- Location: LC_X6_Y4_N5
\wr_z~3\ : maxv_lcell
-- Equation(s):
-- \wr_z~3_combout\ = (\wr_cy~1_combout\) # ((!\Mux10~0_combout\ & (\wr_z~2_combout\ & \wr_z~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff40",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux10~0_combout\,
	datab => \wr_z~2_combout\,
	datac => \wr_z~1_combout\,
	datad => \wr_cy~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_z~3_combout\);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(0),
	combout => \IDRR_opcode_Op~combout\(0));

-- Location: LC_X12_Y4_N7
\Mux2~0\ : maxv_lcell
-- Equation(s):
-- \Mux2~0_combout\ = (\IDRR_opcode_Op~combout\(3)) # ((\IDRR_opcode_Op~combout\(2)) # (\IDRR_opcode_Op~combout\(0) $ (!\IDRR_opcode_Op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_opcode_Op~combout\(0),
	datab => \IDRR_opcode_Op~combout\(1),
	datac => \IDRR_opcode_Op~combout\(3),
	datad => \IDRR_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~0_combout\);

-- Location: PIN_110,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(1),
	combout => \IDRR_5_0_Op~combout\(1));

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(0),
	combout => \IDRR_5_0_Op~combout\(0));

-- Location: LC_X12_Y4_N6
\Mux2~1\ : maxv_lcell
-- Equation(s):
-- \Mux2~1_combout\ = ((!\IDRR_opcode_Op~combout\(1) & (\IDRR_5_0_Op~combout\(1) & \IDRR_5_0_Op~combout\(0))))

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
	datab => \IDRR_opcode_Op~combout\(1),
	datac => \IDRR_5_0_Op~combout\(1),
	datad => \IDRR_5_0_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~1_combout\);

-- Location: LC_X12_Y4_N0
\Mux2~2\ : maxv_lcell
-- Equation(s):
-- \Mux2~2_combout\ = (\IDRR_5_0_Op~combout\(1) & (((\cy~combout\ & !\IDRR_5_0_Op~combout\(0))))) # (!\IDRR_5_0_Op~combout\(1) & ((\z~combout\) # ((!\IDRR_5_0_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0acf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \z~combout\,
	datab => \cy~combout\,
	datac => \IDRR_5_0_Op~combout\(1),
	datad => \IDRR_5_0_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~2_combout\);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(2),
	combout => \IDRR_5_0_Op~combout\(2));

-- Location: LC_X12_Y4_N5
\Mux2~3\ : maxv_lcell
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux2~0_combout\) # ((!\IDRR_5_0_Op~combout\(2) & ((\Mux2~1_combout\) # (\Mux2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aafe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datab => \Mux2~1_combout\,
	datac => \Mux2~2_combout\,
	datad => \IDRR_5_0_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux2~3_combout\);

-- Location: LC_X12_Y4_N1
\wr_RREX$latch\ : maxv_lcell
-- Equation(s):
-- \wr_RREX$latch~combout\ = ((GLOBAL(\process_0~2_combout\) & ((\wr_RREX$latch~combout\))) # (!GLOBAL(\process_0~2_combout\) & (\Mux2~3_combout\)))

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
	dataa => \Mux2~3_combout\,
	datac => \process_0~2_combout\,
	datad => \wr_RREX$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RREX$latch~combout\);

-- Location: LC_X6_Y4_N1
\Equal9~0\ : maxv_lcell
-- Equation(s):
-- \Equal9~0_combout\ = (\RREX_5_0_Op~combout\(1) & (((!\RREX_5_0_Op~combout\(2) & \RREX_5_0_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_5_0_Op~combout\(1),
	datac => \RREX_5_0_Op~combout\(2),
	datad => \RREX_5_0_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal9~0_combout\);

-- Location: LC_X6_Y5_N4
\Mux10~1\ : maxv_lcell
-- Equation(s):
-- \Mux10~1_combout\ = ((!\Equal9~0_combout\ & (!\process_0~4_combout\ & !\RREX_opcode_Op~combout\(2))))

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
	datab => \Equal9~0_combout\,
	datac => \process_0~4_combout\,
	datad => \RREX_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~1_combout\);

-- Location: LC_X6_Y5_N8
\Mux10~2\ : maxv_lcell
-- Equation(s):
-- \Mux10~2_combout\ = (\RREX_opcode_Op~combout\(3)) # ((\RREX_opcode_Op~combout\(0) $ (!\RREX_opcode_Op~combout\(1))) # (!\Mux10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "edff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(0),
	datab => \RREX_opcode_Op~combout\(3),
	datac => \RREX_opcode_Op~combout\(1),
	datad => \Mux10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux10~2_combout\);

-- Location: LC_X5_Y7_N2
\wr_EXMEM$latch\ : maxv_lcell
-- Equation(s):
-- \wr_EXMEM$latch~combout\ = ((GLOBAL(\process_0~2_combout\) & ((\wr_EXMEM$latch~combout\))) # (!GLOBAL(\process_0~2_combout\) & (\Mux10~2_combout\)))

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
	datab => \Mux10~2_combout\,
	datac => \process_0~2_combout\,
	datad => \wr_EXMEM$latch~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_EXMEM$latch~combout\);

-- Location: LC_X7_Y7_N8
\Mux18~0\ : maxv_lcell
-- Equation(s):
-- \Mux18~0_combout\ = (\MEMWB_opcode_Op~combout\(2) & (!\MEMWB_opcode_Op~combout\(1) & (!\MEMWB_opcode_Op~combout\(0) & !\MEMWB_opcode_Op~combout\(3)))) # (!\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ 
-- (\MEMWB_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1204",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(1),
	datab => \MEMWB_opcode_Op~combout\(2),
	datac => \MEMWB_opcode_Op~combout\(0),
	datad => \MEMWB_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~0_combout\);

-- Location: LC_X7_Y7_N6
\select_Mux_RF_D3~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_D3~0_combout\ = (((!\process_0~2_combout\ & \Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \process_0~2_combout\,
	datad => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_D3~0_combout\);

-- Location: LC_X7_Y7_N4
\Mux17~0\ : maxv_lcell
-- Equation(s):
-- \Mux17~0_combout\ = (\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(1) & (\MEMWB_opcode_Op~combout\(0) & !\MEMWB_opcode_Op~combout\(3)))) # (!\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ 
-- (\MEMWB_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(1),
	datab => \MEMWB_opcode_Op~combout\(2),
	datac => \MEMWB_opcode_Op~combout\(0),
	datad => \MEMWB_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux17~0_combout\);

-- Location: LC_X7_Y7_N5
\select_Mux_RF_D3~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_D3~1_combout\ = (((!\process_0~2_combout\ & \Mux17~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \process_0~2_combout\,
	datad => \Mux17~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_D3~1_combout\);

-- Location: LC_X6_Y5_N2
\select_Mux_ALU_B~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~0_combout\ = (\RREX_opcode_Op~combout\(3) & (\RREX_opcode_Op~combout\(0) & (\RREX_opcode_Op~combout\(1)))) # (!\RREX_opcode_Op~combout\(3) & (\Equal9~0_combout\ & (\RREX_opcode_Op~combout\(0) $ (\RREX_opcode_Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9280",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(0),
	datab => \RREX_opcode_Op~combout\(3),
	datac => \RREX_opcode_Op~combout\(1),
	datad => \Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~0_combout\);

-- Location: LC_X6_Y5_N7
\select_Mux_ALU_B~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~1_combout\ = (\wr_z~0_combout\ & (\select_Mux_ALU_B~0_combout\ & ((\RREX_opcode_Op~combout\(3)) # (!\process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8a00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr_z~0_combout\,
	datab => \RREX_opcode_Op~combout\(3),
	datac => \process_0~4_combout\,
	datad => \select_Mux_ALU_B~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~1_combout\);

-- Location: LC_X6_Y5_N0
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\RREX_opcode_Op~combout\(1) & ((\RREX_opcode_Op~combout\(3) $ (!\RREX_opcode_Op~combout\(2))) # (!\RREX_opcode_Op~combout\(0)))) # (!\RREX_opcode_Op~combout\(1) & ((\RREX_opcode_Op~combout\(3)) # (\RREX_opcode_Op~combout\(0) $ 
-- (\RREX_opcode_Op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf7e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(1),
	datab => \RREX_opcode_Op~combout\(3),
	datac => \RREX_opcode_Op~combout\(0),
	datad => \RREX_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X3_Y4_N2
\select_Mux_ALU_B~2\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~2_combout\ = ((\process_0~2_combout\) # ((\Mux4~0_combout\)))

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
	datab => \process_0~2_combout\,
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~2_combout\);

-- Location: LC_X3_Y7_N4
\select_ALU2~0\ : maxv_lcell
-- Equation(s):
-- \select_ALU2~0_combout\ = (\EXMEM_opcode_Op~combout\(3) & (!\EXMEM_opcode_Op~combout\(2) & (!\process_0~2_combout\ & !\EXMEM_opcode_Op~combout\(1))))

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
	dataa => \EXMEM_opcode_Op~combout\(3),
	datab => \EXMEM_opcode_Op~combout\(2),
	datac => \process_0~2_combout\,
	datad => \EXMEM_opcode_Op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU2~0_combout\);

-- Location: LC_X3_Y7_N0
\select_Mux_ALU2_B~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU2_B~0_combout\ = (((\select_ALU2~0_combout\ & !\EXMEM_opcode_Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \select_ALU2~0_combout\,
	datad => \EXMEM_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU2_B~0_combout\);

-- Location: LC_X3_Y7_N8
\select_Mux_ALU2_B~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU2_B~1_combout\ = (((\select_ALU2~0_combout\ & \EXMEM_opcode_Op~combout\(0))))

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
	datac => \select_ALU2~0_combout\,
	datad => \EXMEM_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU2_B~1_combout\);

-- Location: LC_X6_Y5_N9
\select_ALU~2\ : maxv_lcell
-- Equation(s):
-- \select_ALU~2_combout\ = (\RREX_opcode_Op~combout\(1) & (\RREX_opcode_Op~combout\(0) & (\RREX_opcode_Op~combout\(3) $ (\RREX_opcode_Op~combout\(2))))) # (!\RREX_opcode_Op~combout\(1) & (((!\RREX_opcode_Op~combout\(0) & !\RREX_opcode_Op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2085",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(1),
	datab => \RREX_opcode_Op~combout\(3),
	datac => \RREX_opcode_Op~combout\(0),
	datad => \RREX_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~2_combout\);

-- Location: LC_X6_Y5_N1
\select_Mux_ALU_A~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_A~0_combout\ = (!\RREX_opcode_Op~combout\(1) & (((\RREX_opcode_Op~combout\(0) & !\RREX_opcode_Op~combout\(3)))))

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
	dataa => \RREX_opcode_Op~combout\(1),
	datac => \RREX_opcode_Op~combout\(0),
	datad => \RREX_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_A~0_combout\);

-- Location: LC_X6_Y5_N6
\select_ALU~3\ : maxv_lcell
-- Equation(s):
-- \select_ALU~3_combout\ = (!\process_0~2_combout\ & ((\select_ALU~2_combout\) # ((!\Mux10~1_combout\ & \select_Mux_ALU_A~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4544",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~2_combout\,
	datab => \select_ALU~2_combout\,
	datac => \Mux10~1_combout\,
	datad => \select_Mux_ALU_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~3_combout\);

-- Location: LC_X6_Y5_N5
\select_ALU~4\ : maxv_lcell
-- Equation(s):
-- \select_ALU~4_combout\ = (\RREX_opcode_Op~combout\(3) & (((!\RREX_opcode_Op~combout\(1))))) # (!\RREX_opcode_Op~combout\(3) & (\RREX_opcode_Op~combout\(1) & ((\process_0~4_combout\) # (\Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c2c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~4_combout\,
	datab => \RREX_opcode_Op~combout\(3),
	datac => \RREX_opcode_Op~combout\(1),
	datad => \Equal9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~4_combout\);

-- Location: LC_X6_Y5_N3
\select_ALU~5\ : maxv_lcell
-- Equation(s):
-- \select_ALU~5_combout\ = (!\RREX_opcode_Op~combout\(0) & (!\RREX_opcode_Op~combout\(2) & (\select_ALU~4_combout\ & !\process_0~2_combout\)))

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
	dataa => \RREX_opcode_Op~combout\(0),
	datab => \RREX_opcode_Op~combout\(2),
	datac => \select_ALU~4_combout\,
	datad => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~5_combout\);

-- Location: LC_X7_Y7_N7
\select_Mux_RF_A3~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A3~0_combout\ = (((!\MEMWB_opcode_Op~combout\(0) & !\MEMWB_opcode_Op~combout\(1))))

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
	datac => \MEMWB_opcode_Op~combout\(0),
	datad => \MEMWB_opcode_Op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A3~0_combout\);

-- Location: LC_X7_Y7_N0
\select_Mux_RF_A3~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A3~1_combout\ = (!\MEMWB_opcode_Op~combout\(3) & (\select_Mux_RF_A3~0_combout\ & (!\process_0~2_combout\ & !\MEMWB_opcode_Op~combout\(2))))

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
	dataa => \MEMWB_opcode_Op~combout\(3),
	datab => \select_Mux_RF_A3~0_combout\,
	datac => \process_0~2_combout\,
	datad => \MEMWB_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A3~1_combout\);

-- Location: LC_X7_Y7_N3
\Mux15~0\ : maxv_lcell
-- Equation(s):
-- \Mux15~0_combout\ = (\MEMWB_opcode_Op~combout\(2) & (!\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ (!\MEMWB_opcode_Op~combout\(0))))) # (!\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ 
-- (\MEMWB_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1284",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(1),
	datab => \MEMWB_opcode_Op~combout\(2),
	datac => \MEMWB_opcode_Op~combout\(0),
	datad => \MEMWB_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0_combout\);

-- Location: LC_X7_Y7_N2
\select_Mux_RF_A3~2\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A3~2_combout\ = (((!\process_0~2_combout\ & \Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \process_0~2_combout\,
	datad => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A3~2_combout\);

-- Location: LC_X6_Y7_N2
\select_Mux_ALU_A~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_A~1_combout\ = ((!\process_0~2_combout\ & (\select_Mux_ALU_A~0_combout\ & \RREX_opcode_Op~combout\(2))))

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
	datab => \process_0~2_combout\,
	datac => \select_Mux_ALU_A~0_combout\,
	datad => \RREX_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_A~1_combout\);

-- Location: LC_X12_Y4_N9
\select_Mux_RF_A1~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A1~0_combout\ = (\IDRR_opcode_Op~combout\(1) & (((\IDRR_opcode_Op~combout\(0)))))

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
	dataa => \IDRR_opcode_Op~combout\(1),
	datad => \IDRR_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A1~0_combout\);

-- Location: LC_X12_Y4_N8
\select_Mux_RF_A1~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A1~1_combout\ = (!\IDRR_opcode_Op~combout\(3) & (\select_Mux_RF_A1~0_combout\ & (!\process_0~2_combout\ & \IDRR_opcode_Op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_opcode_Op~combout\(3),
	datab => \select_Mux_RF_A1~0_combout\,
	datac => \process_0~2_combout\,
	datad => \IDRR_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A1~1_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_77,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(3));

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(4));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(5));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(3));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(4));

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(5));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_PC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_process_0~2_combout\,
	oe => VCC,
	padio => ww_wr_PC);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_IR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_process_0~2_combout\,
	oe => VCC,
	padio => ww_wr_IR);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_RF~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_wr_RF~0_combout\,
	oe => VCC,
	padio => ww_wr_RF);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_RF_r7~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_process_0~2_combout\,
	oe => VCC,
	padio => ww_wr_RF_r7);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_process_0~2_combout\,
	oe => VCC,
	padio => ww_wr_inc);

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_DMem~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_DMem~1_combout\,
	oe => VCC,
	padio => ww_wr_DMem);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_cy~1_combout\,
	oe => VCC,
	padio => ww_wr_cy);

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_z~3_combout\,
	oe => VCC,
	padio => ww_wr_z);

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_IFID~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_wr_IFID);

-- Location: PIN_29,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_IDRR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_wr_IDRR);

-- Location: PIN_76,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_RREX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_RREX$latch~combout\,
	oe => VCC,
	padio => ww_wr_RREX);

-- Location: PIN_139,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_EXMEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_EXMEM$latch~combout\,
	oe => VCC,
	padio => ww_wr_EXMEM);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_MEMWB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_wr_MEMWB);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_D3~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(0));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_D3~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(1));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(2));

-- Location: PIN_109,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_dec(0));

-- Location: PIN_103,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_dec(1));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_dec(2));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU_B~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_B(0));

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_select_Mux_ALU_B~2_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_B(1));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU2_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU2_B~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU2_B(0));

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU2_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU2_B~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU2_B(1));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU~3_combout\,
	oe => VCC,
	padio => ww_select_ALU(0));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU~5_combout\,
	oe => VCC,
	padio => ww_select_ALU(1));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU2~0_combout\,
	oe => VCC,
	padio => ww_select_ALU2(0));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_ALU2(1));

-- Location: PIN_130,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_A3~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A3(0));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_A3~2_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A3(1));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_jump_loc[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_jump_loc(0));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_jump_loc[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_jump_loc(1));

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_Mem_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_Mem_A);

-- Location: PIN_78,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_Mem_D~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_Mem_D);

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU_A~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_A);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU2_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU2~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU2_A);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_A1~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A1);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_RF_A2);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_DMem_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_DMem_A);

-- Location: PIN_111,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_DMem_Din~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_DMem_Din);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_LMSM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_LMSM);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cy_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cy~combout\,
	oe => VCC,
	padio => ww_cy_in);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \z~combout\,
	oe => VCC,
	padio => ww_z_in);
END structure;


