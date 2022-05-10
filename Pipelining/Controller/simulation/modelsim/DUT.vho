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

-- DATE "05/10/2022 08:36:41"

-- 
-- Device: Altera 5M570ZF256C4 Package FBGA256
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
	IDRR_11_9 : IN std_logic_vector(2 DOWNTO 0);
	IDRR_8_6 : IN std_logic_vector(2 DOWNTO 0);
	RREX_11_9 : IN std_logic_vector(2 DOWNTO 0);
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
	clr_IFID : OUT std_logic;
	clr_IDRR : OUT std_logic;
	clr_RREX : OUT std_logic;
	clr_EXMEM : OUT std_logic;
	clr_MEMWB : OUT std_logic;
	select_Mux_RF_D3 : OUT std_logic_vector(2 DOWNTO 0);
	dec : OUT std_logic_vector(2 DOWNTO 0);
	select_Mux_PC : OUT std_logic_vector(2 DOWNTO 0);
	select_Mux_ALU_B : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_ALU2_B : OUT std_logic_vector(1 DOWNTO 0);
	select_ALU : OUT std_logic_vector(1 DOWNTO 0);
	select_ALU2 : OUT std_logic_vector(1 DOWNTO 0);
	select_Mux_RF_A3 : OUT std_logic_vector(1 DOWNTO 0);
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
SIGNAL ww_IDRR_11_9 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IDRR_8_6 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RREX_11_9 : std_logic_vector(2 DOWNTO 0);
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
SIGNAL ww_clr_IFID : std_logic;
SIGNAL ww_clr_IDRR : std_logic;
SIGNAL ww_clr_RREX : std_logic;
SIGNAL ww_clr_EXMEM : std_logic;
SIGNAL ww_clr_MEMWB : std_logic;
SIGNAL ww_select_Mux_RF_D3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_select_Mux_PC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_select_Mux_ALU_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_ALU2_B : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_ALU : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_ALU2 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_RF_A3 : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_select_Mux_ALU_A : std_logic;
SIGNAL ww_select_Mux_ALU2_A : std_logic;
SIGNAL ww_select_Mux_RF_A1 : std_logic;
SIGNAL ww_select_Mux_RF_A2 : std_logic;
SIGNAL ww_select_Mux_DMem_A : std_logic;
SIGNAL ww_select_Mux_DMem_Din : std_logic;
SIGNAL ww_select_Mux_LMSM : std_logic;
SIGNAL ww_cy_in : std_logic;
SIGNAL ww_z_in : std_logic;
SIGNAL \haz_WB~combout\ : std_logic;
SIGNAL \haz_MEM~combout\ : std_logic;
SIGNAL \haz_JLR~combout\ : std_logic;
SIGNAL \haz_JRI~combout\ : std_logic;
SIGNAL \select_Mux_PC~18_combout\ : std_logic;
SIGNAL \haz_EX~combout\ : std_logic;
SIGNAL \haz_JAL~combout\ : std_logic;
SIGNAL \haz_BEQ~combout\ : std_logic;
SIGNAL \wr_EXMEM~6_combout\ : std_logic;
SIGNAL \wr_EXMEM~8_combout\ : std_logic;
SIGNAL \Equal12~1_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Equal11~1_combout\ : std_logic;
SIGNAL \Equal12~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~0_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \select_Mux_DMem_A~2_combout\ : std_logic;
SIGNAL \select_Mux_LMSM~0_combout\ : std_logic;
SIGNAL \select_Mux_PC~17_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_161\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Equal16~0\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_177\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~92COUT1_178\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_169\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_170\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~2COUT1_171\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~142COUT1_162\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_163\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_164\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_165\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_166\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~27COUT1_167\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~22COUT1_168\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~52COUT1_172\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~57\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_173\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~67COUT1_174\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_175\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_176\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_179\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_181\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~102COUT1_180\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~117COUT1_182\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_183\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_184\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Equal15~7\ : std_logic;
SIGNAL \Equal15~5\ : std_logic;
SIGNAL \Equal15~6\ : std_logic;
SIGNAL \Equal15~2\ : std_logic;
SIGNAL \Equal15~1\ : std_logic;
SIGNAL \Equal15~0\ : std_logic;
SIGNAL \Equal15~3\ : std_logic;
SIGNAL \Equal15~4_combout\ : std_logic;
SIGNAL \Equal15~8_combout\ : std_logic;
SIGNAL \Equal15~9_combout\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \Equal16~1\ : std_logic;
SIGNAL \wr_PC~0_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \wr_RF~0_combout\ : std_logic;
SIGNAL \wr_DMem~0_combout\ : std_logic;
SIGNAL \wr_DMem~1_combout\ : std_logic;
SIGNAL \wr_DMem~2_combout\ : std_logic;
SIGNAL \wr_z~0_combout\ : std_logic;
SIGNAL \cy~combout\ : std_logic;
SIGNAL \z~combout\ : std_logic;
SIGNAL \process_0~4_combout\ : std_logic;
SIGNAL \process_0~5_combout\ : std_logic;
SIGNAL \wr_cy~0_combout\ : std_logic;
SIGNAL \wr_cy~1_combout\ : std_logic;
SIGNAL \wr_z~1_combout\ : std_logic;
SIGNAL \wr_IFID~1_combout\ : std_logic;
SIGNAL \wr_IFID~0_combout\ : std_logic;
SIGNAL \wr_IFID$latch~combout\ : std_logic;
SIGNAL \wr_RREX~2_combout\ : std_logic;
SIGNAL \wr_RREX~0_combout\ : std_logic;
SIGNAL \wr_RREX~1_combout\ : std_logic;
SIGNAL \wr_RREX~3_combout\ : std_logic;
SIGNAL \wr_RREX$latch~combout\ : std_logic;
SIGNAL \wr_EXMEM~7_combout\ : std_logic;
SIGNAL \wr_EXMEM~9_combout\ : std_logic;
SIGNAL \wr_EXMEM$latch~combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_D3~0_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_D3~1_combout\ : std_logic;
SIGNAL \select_Mux_RF_D3~2_combout\ : std_logic;
SIGNAL \dec~0_combout\ : std_logic;
SIGNAL \dec~1_combout\ : std_logic;
SIGNAL \dec~2_combout\ : std_logic;
SIGNAL \select_Mux_PC~19_combout\ : std_logic;
SIGNAL \select_Mux_PC~22_combout\ : std_logic;
SIGNAL \select_Mux_PC~5_combout\ : std_logic;
SIGNAL \select_Mux_PC~23_combout\ : std_logic;
SIGNAL \select_Mux_PC~20_combout\ : std_logic;
SIGNAL \select_Mux_PC~21_combout\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~2_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~1_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~3_combout\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU_B~4_combout\ : std_logic;
SIGNAL \select_ALU2~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU2_B~0_combout\ : std_logic;
SIGNAL \select_Mux_ALU2_B~1_combout\ : std_logic;
SIGNAL \select_Mux_ALU_A~0_combout\ : std_logic;
SIGNAL \select_ALU~0_combout\ : std_logic;
SIGNAL \select_ALU~1_combout\ : std_logic;
SIGNAL \select_ALU~2_combout\ : std_logic;
SIGNAL \select_ALU~3_combout\ : std_logic;
SIGNAL \select_ALU~4_combout\ : std_logic;
SIGNAL \select_Mux_RF_A3~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_A3~1_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_A3~2_combout\ : std_logic;
SIGNAL \select_Mux_ALU_A~1_combout\ : std_logic;
SIGNAL \select_Mux_RF_A1~0_combout\ : std_logic;
SIGNAL \select_Mux_RF_A1~1_combout\ : std_logic;
SIGNAL \select_Mux_DMem_A~3_combout\ : std_logic;
SIGNAL \select_Mux_LMSM~1_combout\ : std_logic;
SIGNAL \IDRR_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EXMEM_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RREX_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RREX_11_9~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IDRR_8_6~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \IDRR_11_9~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL \MEMWB_opcode_Op~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RREX_5_0_Op~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \IDRR_5_0_Op~combout\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_select_Mux_ALU_B~4_combout\ : std_logic;
SIGNAL \ALT_INV_wr_RF~0_combout\ : std_logic;
SIGNAL \ALT_INV_process_0~3_combout\ : std_logic;

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
ww_IDRR_11_9 <= IDRR_11_9;
ww_IDRR_8_6 <= IDRR_8_6;
ww_RREX_11_9 <= RREX_11_9;
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
clr_IFID <= ww_clr_IFID;
clr_IDRR <= ww_clr_IDRR;
clr_RREX <= ww_clr_RREX;
clr_EXMEM <= ww_clr_EXMEM;
clr_MEMWB <= ww_clr_MEMWB;
select_Mux_RF_D3 <= ww_select_Mux_RF_D3;
dec <= ww_dec;
select_Mux_PC <= ww_select_Mux_PC;
select_Mux_ALU_B <= ww_select_Mux_ALU_B;
select_Mux_ALU2_B <= ww_select_Mux_ALU2_B;
select_ALU <= ww_select_ALU;
select_ALU2 <= ww_select_ALU2;
select_Mux_RF_A3 <= ww_select_Mux_RF_A3;
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
\ALT_INV_select_Mux_ALU_B~4_combout\ <= NOT \select_Mux_ALU_B~4_combout\;
\ALT_INV_wr_RF~0_combout\ <= NOT \wr_RF~0_combout\;
\ALT_INV_process_0~3_combout\ <= NOT \process_0~3_combout\;

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_WB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_WB,
	combout => \haz_WB~combout\);

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_MEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_MEM,
	combout => \haz_MEM~combout\);

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_JLR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_JLR,
	combout => \haz_JLR~combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_JRI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_JRI,
	combout => \haz_JRI~combout\);

-- Location: LC_X1_Y6_N5
\select_Mux_PC~18\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~18_combout\ = (((!\haz_JLR~combout\ & !\haz_JRI~combout\)))

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
	datac => \haz_JLR~combout\,
	datad => \haz_JRI~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~18_combout\);

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_EX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_EX,
	combout => \haz_EX~combout\);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_JAL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_JAL,
	combout => \haz_JAL~combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\haz_BEQ~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_haz_BEQ,
	combout => \haz_BEQ~combout\);

-- Location: LC_X1_Y5_N4
\wr_EXMEM~6\ : maxv_lcell
-- Equation(s):
-- \wr_EXMEM~6_combout\ = (!\haz_EX~combout\ & (!\haz_JAL~combout\ & (!\haz_BEQ~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \haz_EX~combout\,
	datab => \haz_JAL~combout\,
	datac => \haz_BEQ~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_EXMEM~6_combout\);

-- Location: LC_X1_Y5_N5
\wr_EXMEM~8\ : maxv_lcell
-- Equation(s):
-- \wr_EXMEM~8_combout\ = (!\haz_WB~combout\ & (!\haz_MEM~combout\ & (\select_Mux_PC~18_combout\ & \wr_EXMEM~6_combout\)))

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
	dataa => \haz_WB~combout\,
	datab => \haz_MEM~combout\,
	datac => \select_Mux_PC~18_combout\,
	datad => \wr_EXMEM~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_EXMEM~8_combout\);

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_8_6[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_8_6(1),
	combout => \IDRR_8_6~combout\(1));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_8_6[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_8_6(0),
	combout => \IDRR_8_6~combout\(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_11_9[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_11_9(0),
	combout => \RREX_11_9~combout\(0));

-- Location: PIN_E3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_11_9[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_11_9(1),
	combout => \RREX_11_9~combout\(1));

-- Location: LC_X1_Y7_N4
\Equal12~1\ : maxv_lcell
-- Equation(s):
-- \Equal12~1_combout\ = (\IDRR_8_6~combout\(1) & (\RREX_11_9~combout\(1) & (\IDRR_8_6~combout\(0) $ (!\RREX_11_9~combout\(0))))) # (!\IDRR_8_6~combout\(1) & (!\RREX_11_9~combout\(1) & (\IDRR_8_6~combout\(0) $ (!\RREX_11_9~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_8_6~combout\(1),
	datab => \IDRR_8_6~combout\(0),
	datac => \RREX_11_9~combout\(0),
	datad => \RREX_11_9~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal12~1_combout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_11_9[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_11_9(1),
	combout => \IDRR_11_9~combout\(1));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_11_9[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_11_9(0),
	combout => \IDRR_11_9~combout\(0));

-- Location: LC_X1_Y7_N8
\Equal11~0\ : maxv_lcell
-- Equation(s):
-- \Equal11~0_combout\ = (\IDRR_11_9~combout\(1) & (\RREX_11_9~combout\(1) & (\IDRR_11_9~combout\(0) $ (!\RREX_11_9~combout\(0))))) # (!\IDRR_11_9~combout\(1) & (!\RREX_11_9~combout\(1) & (\IDRR_11_9~combout\(0) $ (!\RREX_11_9~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8241",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_11_9~combout\(1),
	datab => \IDRR_11_9~combout\(0),
	datac => \RREX_11_9~combout\(0),
	datad => \RREX_11_9~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~0_combout\);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_11_9[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_11_9(2),
	combout => \RREX_11_9~combout\(2));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_11_9[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_11_9(2),
	combout => \IDRR_11_9~combout\(2));

-- Location: LC_X1_Y7_N2
\Equal11~1\ : maxv_lcell
-- Equation(s):
-- \Equal11~1_combout\ = (\Equal11~0_combout\ & (\RREX_11_9~combout\(2) $ (((!\IDRR_11_9~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8822",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \RREX_11_9~combout\(2),
	datad => \IDRR_11_9~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal11~1_combout\);

-- Location: PIN_D3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_8_6[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_8_6(2),
	combout => \IDRR_8_6~combout\(2));

-- Location: LC_X1_Y7_N5
\Equal12~0\ : maxv_lcell
-- Equation(s):
-- \Equal12~0_combout\ = (\RREX_11_9~combout\(2) $ (((\IDRR_8_6~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \RREX_11_9~combout\(2),
	datad => \IDRR_8_6~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal12~0_combout\);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(1),
	combout => \IDRR_opcode_Op~combout\(1));

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(0),
	combout => \IDRR_opcode_Op~combout\(0));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(0),
	combout => \RREX_opcode_Op~combout\(0));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(1),
	combout => \RREX_opcode_Op~combout\(1));

-- Location: LC_X1_Y5_N3
\select_Mux_ALU_B~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~0_combout\ = (\RREX_opcode_Op~combout\(0) & (((\RREX_opcode_Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(0),
	datac => \RREX_opcode_Op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~0_combout\);

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(2),
	combout => \RREX_opcode_Op~combout\(2));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_opcode_Op(3),
	combout => \RREX_opcode_Op~combout\(3));

-- Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(3),
	combout => \IDRR_opcode_Op~combout\(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_opcode_Op(2),
	combout => \IDRR_opcode_Op~combout\(2));

-- Location: LC_X2_Y6_N8
\process_0~0\ : maxv_lcell
-- Equation(s):
-- \process_0~0_combout\ = ((\RREX_opcode_Op~combout\(3)) # ((\IDRR_opcode_Op~combout\(3)) # (\IDRR_opcode_Op~combout\(2)))) # (!\RREX_opcode_Op~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffd",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(2),
	datab => \RREX_opcode_Op~combout\(3),
	datac => \IDRR_opcode_Op~combout\(3),
	datad => \IDRR_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~0_combout\);

-- Location: LC_X2_Y6_N1
\process_0~1\ : maxv_lcell
-- Equation(s):
-- \process_0~1_combout\ = ((\process_0~0_combout\) # (\IDRR_opcode_Op~combout\(1) $ (!\IDRR_opcode_Op~combout\(0)))) # (!\select_Mux_ALU_B~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff9f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_opcode_Op~combout\(1),
	datab => \IDRR_opcode_Op~combout\(0),
	datac => \select_Mux_ALU_B~0_combout\,
	datad => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~1_combout\);

-- Location: LC_X1_Y7_N6
\process_0~2\ : maxv_lcell
-- Equation(s):
-- \process_0~2_combout\ = (\process_0~1_combout\) # ((!\Equal11~1_combout\ & ((\Equal12~0_combout\) # (!\Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff31",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal12~1_combout\,
	datab => \Equal11~1_combout\,
	datac => \Equal12~0_combout\,
	datad => \process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~2_combout\);

-- Location: LC_X2_Y6_N0
\select_Mux_DMem_A~2\ : maxv_lcell
-- Equation(s):
-- \select_Mux_DMem_A~2_combout\ = (\IDRR_opcode_Op~combout\(3) & (((!\IDRR_opcode_Op~combout\(1) & \IDRR_opcode_Op~combout\(2)))))

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
	dataa => \IDRR_opcode_Op~combout\(3),
	datac => \IDRR_opcode_Op~combout\(1),
	datad => \IDRR_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_DMem_A~2_combout\);

-- Location: LC_X9_Y7_N8
\select_Mux_LMSM~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_LMSM~0_combout\ = ((\wr_EXMEM~8_combout\ & (\process_0~2_combout\ & \select_Mux_DMem_A~2_combout\)))

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
	datab => \wr_EXMEM~8_combout\,
	datac => \process_0~2_combout\,
	datad => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_LMSM~0_combout\);

-- Location: LC_X1_Y6_N6
\select_Mux_PC~17\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~17_combout\ = (((!\haz_WB~combout\ & !\haz_MEM~combout\)))

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
	datac => \haz_WB~combout\,
	datad => \haz_MEM~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~17_combout\);

-- Location: LC_X1_Y5_N1
\process_0~3\ : maxv_lcell
-- Equation(s):
-- \process_0~3_combout\ = ((\select_Mux_DMem_A~2_combout\) # ((!\select_Mux_PC~17_combout\) # (!\wr_EXMEM~6_combout\))) # (!\select_Mux_PC~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dfff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \select_Mux_PC~18_combout\,
	datab => \select_Mux_DMem_A~2_combout\,
	datac => \wr_EXMEM~6_combout\,
	datad => \select_Mux_PC~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~3_combout\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X5_Y7_N0
\i[2]\ : maxv_lcell
-- Equation(s):
-- \Equal16~0\ = (((i[2] & !i(3))))
-- i(2) = DFFEAS(\Equal16~0\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~140_combout\,
	datad => i(3),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal16~0\,
	regout => i(2));

-- Location: LC_X5_Y7_N4
\Add0~155\ : maxv_lcell
-- Equation(s):
-- \Add0~155_combout\ = ((!i(0)))
-- \Add0~157\ = CARRY(((i(0))))

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
	combout => \Add0~155_combout\,
	cout => \Add0~157\);

-- Location: LC_X5_Y7_N5
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = (i(1) $ ((\Add0~157\)))
-- \Add0~152\ = CARRY(((!\Add0~157\) # (!i(1))))
-- \Add0~152COUT1_161\ = CARRY(((!\Add0~157\) # (!i(1))))

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
	cin => \Add0~157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_161\);

-- Location: LC_X5_Y7_N6
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = (i(2) $ ((!(!\Add0~157\ & \Add0~152\) # (\Add0~157\ & \Add0~152COUT1_161\))))
-- \Add0~142\ = CARRY(((i(2) & !\Add0~152\)))
-- \Add0~142COUT1_162\ = CARRY(((i(2) & !\Add0~152COUT1_161\)))

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
	datab => i(2),
	cin => \Add0~157\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout0 => \Add0~142\,
	cout1 => \Add0~142COUT1_162\);

-- Location: LC_X7_Y7_N5
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (i(21) $ ((\Add0~82\)))
-- \Add0~87\ = CARRY(((!\Add0~82\) # (!i(21))))
-- \Add0~87COUT1_177\ = CARRY(((!\Add0~82\) # (!i(21))))

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
	cin => \Add0~82\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_177\);

-- Location: LC_X4_Y7_N8
\i[21]\ : maxv_lcell
-- Equation(s):
-- i(21) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~85_combout\, , , VCC)

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
	datac => \Add0~85_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(21));

-- Location: LC_X7_Y7_N6
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (i(22) $ ((!(!\Add0~82\ & \Add0~87\) # (\Add0~82\ & \Add0~87COUT1_177\))))
-- \Add0~92\ = CARRY(((i(22) & !\Add0~87\)))
-- \Add0~92COUT1_178\ = CARRY(((i(22) & !\Add0~87COUT1_177\)))

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
	cin => \Add0~82\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout0 => \Add0~92\,
	cout1 => \Add0~92COUT1_178\);

-- Location: LC_X4_Y7_N1
\i[22]\ : maxv_lcell
-- Equation(s):
-- i(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~90_combout\, , , VCC)

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
	datac => \Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(22));

-- Location: LC_X7_Y7_N7
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (i(23) $ (((!\Add0~82\ & \Add0~92\) # (\Add0~82\ & \Add0~92COUT1_178\))))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!i(23))))
-- \Add0~97COUT1_179\ = CARRY(((!\Add0~92COUT1_178\) # (!i(23))))

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
	cin => \Add0~82\,
	cin0 => \Add0~92\,
	cin1 => \Add0~92COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_179\);

-- Location: LC_X4_Y7_N4
\i[23]\ : maxv_lcell
-- Equation(s):
-- i(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~95_combout\, , , VCC)

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
	datac => \Add0~95_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(23));

-- Location: LC_X6_Y7_N5
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = (i(11) $ ((\Add0~17\)))
-- \Add0~12\ = CARRY(((!\Add0~17\) # (!i(11))))
-- \Add0~12COUT1_169\ = CARRY(((!\Add0~17\) # (!i(11))))

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
	cin => \Add0~17\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_169\);

-- Location: LC_X2_Y7_N1
\i[11]\ : maxv_lcell
-- Equation(s):
-- i(11) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~10_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(11));

-- Location: LC_X6_Y7_N6
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (i(12) $ ((!(!\Add0~17\ & \Add0~12\) # (\Add0~17\ & \Add0~12COUT1_169\))))
-- \Add0~7\ = CARRY(((i(12) & !\Add0~12\)))
-- \Add0~7COUT1_170\ = CARRY(((i(12) & !\Add0~12COUT1_169\)))

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
	cin => \Add0~17\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_170\);

-- Location: LC_X2_Y7_N5
\i[12]\ : maxv_lcell
-- Equation(s):
-- i(12) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~5_combout\, , , VCC)

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
	datac => \Add0~5_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(12));

-- Location: LC_X6_Y7_N7
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (i(13) $ (((!\Add0~17\ & \Add0~7\) # (\Add0~17\ & \Add0~7COUT1_170\))))
-- \Add0~2\ = CARRY(((!\Add0~7\) # (!i(13))))
-- \Add0~2COUT1_171\ = CARRY(((!\Add0~7COUT1_170\) # (!i(13))))

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
	cin => \Add0~17\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout0 => \Add0~2\,
	cout1 => \Add0~2COUT1_171\);

-- Location: LC_X2_Y7_N8
\i[13]\ : maxv_lcell
-- Equation(s):
-- \Equal15~0\ = (!i(12) & (!i(10) & (!i[13] & !i(11))))
-- i(13) = DFFEAS(\Equal15~0\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~0_combout\, , , VCC)

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
	dataa => i(12),
	datab => i(10),
	datac => \Add0~0_combout\,
	datad => i(11),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~0\,
	regout => i(13));

-- Location: LC_X6_Y7_N8
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = i(14) $ ((((!(!\Add0~17\ & \Add0~2\) # (\Add0~17\ & \Add0~2COUT1_171\)))))
-- \Add0~52\ = CARRY((i(14) & ((!\Add0~2\))))
-- \Add0~52COUT1_172\ = CARRY((i(14) & ((!\Add0~2COUT1_171\))))

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
	dataa => i(14),
	cin => \Add0~17\,
	cin0 => \Add0~2\,
	cin1 => \Add0~2COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout0 => \Add0~52\,
	cout1 => \Add0~52COUT1_172\);

-- Location: LC_X3_Y7_N8
\i[14]\ : maxv_lcell
-- Equation(s):
-- i(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~50_combout\, , , VCC)

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
	datac => \Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(14));

-- Location: LC_X5_Y7_N7
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = (i(3) $ (((!\Add0~157\ & \Add0~142\) # (\Add0~157\ & \Add0~142COUT1_162\))))
-- \Add0~147\ = CARRY(((!\Add0~142\) # (!i(3))))
-- \Add0~147COUT1_163\ = CARRY(((!\Add0~142COUT1_162\) # (!i(3))))

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
	datab => i(3),
	cin => \Add0~157\,
	cin0 => \Add0~142\,
	cin1 => \Add0~142COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_163\);

-- Location: LC_X5_Y7_N8
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = i(4) $ ((((!(!\Add0~157\ & \Add0~147\) # (\Add0~157\ & \Add0~147COUT1_163\)))))
-- \Add0~47\ = CARRY((i(4) & ((!\Add0~147\))))
-- \Add0~47COUT1_164\ = CARRY((i(4) & ((!\Add0~147COUT1_163\))))

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
	dataa => i(4),
	cin => \Add0~157\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_164\);

-- Location: LC_X4_Y7_N5
\i[4]\ : maxv_lcell
-- Equation(s):
-- i(4) = DFFEAS((((\Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~45_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(4));

-- Location: LC_X5_Y7_N9
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (i(5) $ (((!\Add0~157\ & \Add0~47\) # (\Add0~157\ & \Add0~47COUT1_164\))))
-- \Add0~42\ = CARRY(((!\Add0~47COUT1_164\) # (!i(5))))

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
	cin => \Add0~157\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout => \Add0~42\);

-- Location: LC_X3_Y7_N4
\i[5]\ : maxv_lcell
-- Equation(s):
-- \Equal15~2\ = (!i(14) & (!i(15) & (!i[5] & !i(4))))
-- i(5) = DFFEAS(\Equal15~2\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~40_combout\, , , VCC)

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
	dataa => i(14),
	datab => i(15),
	datac => \Add0~40_combout\,
	datad => i(4),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~2\,
	regout => i(5));

-- Location: LC_X6_Y7_N0
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (i(6) $ ((!\Add0~42\)))
-- \Add0~37\ = CARRY(((i(6) & !\Add0~42\)))
-- \Add0~37COUT1_165\ = CARRY(((i(6) & !\Add0~42\)))

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
	cin => \Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_165\);

-- Location: LC_X2_Y7_N3
\i[6]\ : maxv_lcell
-- Equation(s):
-- i(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~35_combout\, , , VCC)

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
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(6));

-- Location: LC_X6_Y7_N1
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (i(7) $ (((!\Add0~42\ & \Add0~37\) # (\Add0~42\ & \Add0~37COUT1_165\))))
-- \Add0~32\ = CARRY(((!\Add0~37\) # (!i(7))))
-- \Add0~32COUT1_166\ = CARRY(((!\Add0~37COUT1_165\) # (!i(7))))

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
	cin => \Add0~42\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_166\);

-- Location: LC_X2_Y7_N6
\i[7]\ : maxv_lcell
-- Equation(s):
-- i(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~30_combout\, , , VCC)

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
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(7));

-- Location: LC_X6_Y7_N2
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = (i(8) $ ((!(!\Add0~42\ & \Add0~32\) # (\Add0~42\ & \Add0~32COUT1_166\))))
-- \Add0~27\ = CARRY(((i(8) & !\Add0~32\)))
-- \Add0~27COUT1_167\ = CARRY(((i(8) & !\Add0~32COUT1_166\)))

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
	cin => \Add0~42\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout0 => \Add0~27\,
	cout1 => \Add0~27COUT1_167\);

-- Location: LC_X2_Y7_N0
\i[8]\ : maxv_lcell
-- Equation(s):
-- i(8) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~25_combout\, , , VCC)

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
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(8));

-- Location: LC_X6_Y7_N3
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = (i(9) $ (((!\Add0~42\ & \Add0~27\) # (\Add0~42\ & \Add0~27COUT1_167\))))
-- \Add0~22\ = CARRY(((!\Add0~27\) # (!i(9))))
-- \Add0~22COUT1_168\ = CARRY(((!\Add0~27COUT1_167\) # (!i(9))))

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
	cin => \Add0~42\,
	cin0 => \Add0~27\,
	cin1 => \Add0~27COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_168\);

-- Location: LC_X2_Y7_N4
\i[9]\ : maxv_lcell
-- Equation(s):
-- \Equal15~1\ = (!i(7) & (!i(8) & (!i[9] & !i(6))))
-- i(9) = DFFEAS(\Equal15~1\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~20_combout\, , , VCC)

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
	dataa => i(7),
	datab => i(8),
	datac => \Add0~20_combout\,
	datad => i(6),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~1\,
	regout => i(9));

-- Location: LC_X6_Y7_N4
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (i(10) $ ((!(!\Add0~42\ & \Add0~22\) # (\Add0~42\ & \Add0~22COUT1_168\))))
-- \Add0~17\ = CARRY(((i(10) & !\Add0~22COUT1_168\)))

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
	datab => i(10),
	cin => \Add0~42\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout => \Add0~17\);

-- Location: LC_X2_Y7_N9
\i[10]\ : maxv_lcell
-- Equation(s):
-- i(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~15_combout\, , , VCC)

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
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(10));

-- Location: LC_X6_Y7_N9
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = (i(15) $ (((!\Add0~17\ & \Add0~52\) # (\Add0~17\ & \Add0~52COUT1_172\))))
-- \Add0~57\ = CARRY(((!\Add0~52COUT1_172\) # (!i(15))))

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
	datab => i(15),
	cin => \Add0~17\,
	cin0 => \Add0~52\,
	cin1 => \Add0~52COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\,
	cout => \Add0~57\);

-- Location: LC_X3_Y7_N9
\i[15]\ : maxv_lcell
-- Equation(s):
-- i(15) = DFFEAS((((\Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~55_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(15));

-- Location: LC_X7_Y7_N0
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = i(16) $ ((((!\Add0~57\))))
-- \Add0~62\ = CARRY((i(16) & ((!\Add0~57\))))
-- \Add0~62COUT1_173\ = CARRY((i(16) & ((!\Add0~57\))))

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
	dataa => i(16),
	cin => \Add0~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_173\);

-- Location: LC_X3_Y7_N1
\i[16]\ : maxv_lcell
-- Equation(s):
-- \Equal15~3\ = (!i(18) & (!i(19) & (!i[16] & !i(17))))
-- i(16) = DFFEAS(\Equal15~3\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~60_combout\, , , VCC)

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
	dataa => i(18),
	datab => i(19),
	datac => \Add0~60_combout\,
	datad => i(17),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~3\,
	regout => i(16));

-- Location: LC_X7_Y7_N1
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (i(17) $ (((!\Add0~57\ & \Add0~62\) # (\Add0~57\ & \Add0~62COUT1_173\))))
-- \Add0~67\ = CARRY(((!\Add0~62\) # (!i(17))))
-- \Add0~67COUT1_174\ = CARRY(((!\Add0~62COUT1_173\) # (!i(17))))

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
	cin => \Add0~57\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout0 => \Add0~67\,
	cout1 => \Add0~67COUT1_174\);

-- Location: LC_X8_Y7_N8
\i[17]\ : maxv_lcell
-- Equation(s):
-- i(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~65_combout\, , , VCC)

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
	datac => \Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(17));

-- Location: LC_X7_Y7_N2
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (i(18) $ ((!(!\Add0~57\ & \Add0~67\) # (\Add0~57\ & \Add0~67COUT1_174\))))
-- \Add0~72\ = CARRY(((i(18) & !\Add0~67\)))
-- \Add0~72COUT1_175\ = CARRY(((i(18) & !\Add0~67COUT1_174\)))

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
	cin => \Add0~57\,
	cin0 => \Add0~67\,
	cin1 => \Add0~67COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_175\);

-- Location: LC_X4_Y7_N3
\i[18]\ : maxv_lcell
-- Equation(s):
-- i(18) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~70_combout\, , , VCC)

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
	datac => \Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(18));

-- Location: LC_X7_Y7_N3
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = i(19) $ (((((!\Add0~57\ & \Add0~72\) # (\Add0~57\ & \Add0~72COUT1_175\)))))
-- \Add0~77\ = CARRY(((!\Add0~72\)) # (!i(19)))
-- \Add0~77COUT1_176\ = CARRY(((!\Add0~72COUT1_175\)) # (!i(19)))

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
	dataa => i(19),
	cin => \Add0~57\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_176\);

-- Location: LC_X3_Y7_N0
\i[19]\ : maxv_lcell
-- Equation(s):
-- i(19) = DFFEAS((((\Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~75_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(19));

-- Location: LC_X7_Y7_N4
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = i(20) $ ((((!(!\Add0~57\ & \Add0~77\) # (\Add0~57\ & \Add0~77COUT1_176\)))))
-- \Add0~82\ = CARRY((i(20) & ((!\Add0~77COUT1_176\))))

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
	dataa => i(20),
	cin => \Add0~57\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout => \Add0~82\);

-- Location: LC_X4_Y7_N2
\i[20]\ : maxv_lcell
-- Equation(s):
-- \Equal15~5\ = (!i(23) & (!i(22) & (!i[20] & !i(21))))
-- i(20) = DFFEAS(\Equal15~5\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~80_combout\, , , VCC)

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
	dataa => i(23),
	datab => i(22),
	datac => \Add0~80_combout\,
	datad => i(21),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~5\,
	regout => i(20));

-- Location: LC_X8_Y7_N0
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = i(26) $ ((((!\Add0~107\))))
-- \Add0~112\ = CARRY((i(26) & ((!\Add0~107\))))
-- \Add0~112COUT1_181\ = CARRY((i(26) & ((!\Add0~107\))))

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
	cin => \Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_181\);

-- Location: LC_X9_Y7_N0
\i[26]\ : maxv_lcell
-- Equation(s):
-- i(26) = DFFEAS((((\Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~110_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(26));

-- Location: LC_X7_Y7_N8
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (i(24) $ ((!(!\Add0~82\ & \Add0~97\) # (\Add0~82\ & \Add0~97COUT1_179\))))
-- \Add0~102\ = CARRY(((i(24) & !\Add0~97\)))
-- \Add0~102COUT1_180\ = CARRY(((i(24) & !\Add0~97COUT1_179\)))

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
	cin => \Add0~82\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_180\);

-- Location: LC_X8_Y7_N1
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = i(27) $ (((((!\Add0~107\ & \Add0~112\) # (\Add0~107\ & \Add0~112COUT1_181\)))))
-- \Add0~117\ = CARRY(((!\Add0~112\)) # (!i(27)))
-- \Add0~117COUT1_182\ = CARRY(((!\Add0~112COUT1_181\)) # (!i(27)))

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
	cin => \Add0~107\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout0 => \Add0~117\,
	cout1 => \Add0~117COUT1_182\);

-- Location: LC_X9_Y7_N3
\i[27]\ : maxv_lcell
-- Equation(s):
-- i(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~115_combout\, , , VCC)

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
	datac => \Add0~115_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(27));

-- Location: LC_X9_Y7_N2
\i[24]\ : maxv_lcell
-- Equation(s):
-- \Equal15~6\ = (!i(25) & (!i(26) & (!i[24] & !i(27))))
-- i(24) = DFFEAS(\Equal15~6\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~100_combout\, , , VCC)

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
	dataa => i(25),
	datab => i(26),
	datac => \Add0~100_combout\,
	datad => i(27),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~6\,
	regout => i(24));

-- Location: LC_X7_Y7_N9
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (i(25) $ (((!\Add0~82\ & \Add0~102\) # (\Add0~82\ & \Add0~102COUT1_180\))))
-- \Add0~107\ = CARRY(((!\Add0~102COUT1_180\) # (!i(25))))

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
	cin => \Add0~82\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout => \Add0~107\);

-- Location: LC_X9_Y7_N4
\i[25]\ : maxv_lcell
-- Equation(s):
-- i(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~105_combout\, , , VCC)

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
	datac => \Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(25));

-- Location: LC_X8_Y7_N2
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (i(28) $ ((!(!\Add0~107\ & \Add0~117\) # (\Add0~107\ & \Add0~117COUT1_182\))))
-- \Add0~122\ = CARRY(((i(28) & !\Add0~117\)))
-- \Add0~122COUT1_183\ = CARRY(((i(28) & !\Add0~117COUT1_182\)))

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
	cin => \Add0~107\,
	cin0 => \Add0~117\,
	cin1 => \Add0~117COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_183\);

-- Location: LC_X8_Y7_N9
\i[28]\ : maxv_lcell
-- Equation(s):
-- \Equal15~7\ = (!i(31) & (!i(29) & (!i[28] & !i(30))))
-- i(28) = DFFEAS(\Equal15~7\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~120_combout\, , , VCC)

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
	dataa => i(31),
	datab => i(29),
	datac => \Add0~120_combout\,
	datad => i(30),
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~7\,
	regout => i(28));

-- Location: LC_X8_Y7_N3
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (i(29) $ (((!\Add0~107\ & \Add0~122\) # (\Add0~107\ & \Add0~122COUT1_183\))))
-- \Add0~127\ = CARRY(((!\Add0~122\) # (!i(29))))
-- \Add0~127COUT1_184\ = CARRY(((!\Add0~122COUT1_183\) # (!i(29))))

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
	datab => i(29),
	cin => \Add0~107\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_184\);

-- Location: LC_X8_Y7_N7
\i[29]\ : maxv_lcell
-- Equation(s):
-- i(29) = DFFEAS((((\Add0~125_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~125_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(29));

-- Location: LC_X8_Y7_N4
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (i(30) $ ((!(!\Add0~107\ & \Add0~127\) # (\Add0~107\ & \Add0~127COUT1_184\))))
-- \Add0~132\ = CARRY(((i(30) & !\Add0~127COUT1_184\)))

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
	datab => i(30),
	cin => \Add0~107\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout => \Add0~132\);

-- Location: LC_X9_Y7_N7
\i[30]\ : maxv_lcell
-- Equation(s):
-- i(30) = DFFEAS((((\Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~130_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(30));

-- Location: LC_X8_Y7_N5
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = i(31) $ ((((\Add0~132\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => i(31),
	cin => \Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\);

-- Location: LC_X8_Y7_N6
\i[31]\ : maxv_lcell
-- Equation(s):
-- i(31) = DFFEAS((((\Add0~135_combout\))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

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
	datad => \Add0~135_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(31));

-- Location: LC_X3_Y7_N2
\Equal15~4\ : maxv_lcell
-- Equation(s):
-- \Equal15~4_combout\ = (\Equal15~2\ & (\Equal15~1\ & (\Equal15~0\ & \Equal15~3\)))

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
	dataa => \Equal15~2\,
	datab => \Equal15~1\,
	datac => \Equal15~0\,
	datad => \Equal15~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~4_combout\);

-- Location: LC_X3_Y7_N3
\Equal15~8\ : maxv_lcell
-- Equation(s):
-- \Equal15~8_combout\ = (\Equal15~7\ & (\Equal15~5\ & (\Equal15~6\ & \Equal15~4_combout\)))

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
	dataa => \Equal15~7\,
	datab => \Equal15~5\,
	datac => \Equal15~6\,
	datad => \Equal15~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~8_combout\);

-- Location: LC_X3_Y7_N5
\i[1]\ : maxv_lcell
-- Equation(s):
-- \Equal16~1\ = (i(0) & (\Equal16~0\ & (i[1] & \Equal15~8_combout\)))
-- i(1) = DFFEAS(\Equal16~1\, GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, \Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => i(0),
	datab => \Equal16~0\,
	datac => \Add0~150_combout\,
	datad => \Equal15~8_combout\,
	aclr => GND,
	sload => VCC,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal16~1\,
	regout => i(1));

-- Location: LC_X4_Y7_N6
\Equal15~9\ : maxv_lcell
-- Equation(s):
-- \Equal15~9_combout\ = (!i(0) & (!i(1) & (!i(2) & \Equal15~8_combout\)))

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
	dataa => i(0),
	datab => i(1),
	datac => i(2),
	datad => \Equal15~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal15~9_combout\);

-- Location: LC_X4_Y7_N7
\i[3]\ : maxv_lcell
-- Equation(s):
-- i(3) = DFFEAS(((\Add0~145_combout\ & ((!\Equal15~9_combout\) # (!i(3))))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => i(3),
	datac => \Equal15~9_combout\,
	datad => \Add0~145_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(3));

-- Location: LC_X4_Y7_N9
\i[0]\ : maxv_lcell
-- Equation(s):
-- i(0) = DFFEAS(((\Add0~155_combout\ & ((!\Equal15~9_combout\) # (!i(3))))), GLOBAL(\clk~combout\), VCC, , \select_Mux_DMem_A~2_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => i(3),
	datac => \Equal15~9_combout\,
	datad => \Add0~155_combout\,
	aclr => GND,
	ena => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i(0));

-- Location: LC_X9_Y7_N9
\wr_PC~0\ : maxv_lcell
-- Equation(s):
-- \wr_PC~0_combout\ = (((\select_Mux_LMSM~0_combout\ & \Equal16~1\)) # (!\process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \select_Mux_LMSM~0_combout\,
	datac => \process_0~3_combout\,
	datad => \Equal16~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_PC~0_combout\);

-- Location: PIN_K14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(2),
	combout => \MEMWB_opcode_Op~combout\(2));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(1),
	combout => \MEMWB_opcode_Op~combout\(1));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(3),
	combout => \MEMWB_opcode_Op~combout\(3));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MEMWB_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_MEMWB_opcode_Op(0),
	combout => \MEMWB_opcode_Op~combout\(0));

-- Location: LC_X12_Y4_N3
\Mux19~0\ : maxv_lcell
-- Equation(s):
-- \Mux19~0_combout\ = (\MEMWB_opcode_Op~combout\(2) & ((\MEMWB_opcode_Op~combout\(3)) # (\MEMWB_opcode_Op~combout\(1) $ (\MEMWB_opcode_Op~combout\(0))))) # (!\MEMWB_opcode_Op~combout\(2) & ((\MEMWB_opcode_Op~combout\(1) & ((\MEMWB_opcode_Op~combout\(0)))) # 
-- (!\MEMWB_opcode_Op~combout\(1) & (\MEMWB_opcode_Op~combout\(3) & !\MEMWB_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e6b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(2),
	datab => \MEMWB_opcode_Op~combout\(1),
	datac => \MEMWB_opcode_Op~combout\(3),
	datad => \MEMWB_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux19~0_combout\);

-- Location: LC_X12_Y4_N9
\wr_RF~0\ : maxv_lcell
-- Equation(s):
-- \wr_RF~0_combout\ = (((\process_0~3_combout\) # (\Mux19~0_combout\)))

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
	datac => \process_0~3_combout\,
	datad => \Mux19~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RF~0_combout\);

-- Location: LC_X5_Y7_N3
\wr_DMem~0\ : maxv_lcell
-- Equation(s):
-- \wr_DMem~0_combout\ = (\IDRR_opcode_Op~combout\(0) & (\process_0~2_combout\ & (\select_Mux_DMem_A~2_combout\ & \wr_EXMEM~8_combout\)))

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
	dataa => \IDRR_opcode_Op~combout\(0),
	datab => \process_0~2_combout\,
	datac => \select_Mux_DMem_A~2_combout\,
	datad => \wr_EXMEM~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_DMem~0_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(1),
	combout => \EXMEM_opcode_Op~combout\(1));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(2),
	combout => \EXMEM_opcode_Op~combout\(2));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(0),
	combout => \EXMEM_opcode_Op~combout\(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EXMEM_opcode_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_EXMEM_opcode_Op(3),
	combout => \EXMEM_opcode_Op~combout\(3));

-- Location: LC_X12_Y7_N8
\wr_DMem~1\ : maxv_lcell
-- Equation(s):
-- \wr_DMem~1_combout\ = (\EXMEM_opcode_Op~combout\(2) & (\EXMEM_opcode_Op~combout\(0) & ((!\EXMEM_opcode_Op~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0088",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \EXMEM_opcode_Op~combout\(2),
	datab => \EXMEM_opcode_Op~combout\(0),
	datad => \EXMEM_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_DMem~1_combout\);

-- Location: LC_X12_Y7_N4
\wr_DMem~2\ : maxv_lcell
-- Equation(s):
-- \wr_DMem~2_combout\ = (\process_0~3_combout\ & (\wr_DMem~0_combout\)) # (!\process_0~3_combout\ & (((!\EXMEM_opcode_Op~combout\(1) & \wr_DMem~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8b88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr_DMem~0_combout\,
	datab => \process_0~3_combout\,
	datac => \EXMEM_opcode_Op~combout\(1),
	datad => \wr_DMem~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_DMem~2_combout\);

-- Location: LC_X1_Y5_N7
\wr_z~0\ : maxv_lcell
-- Equation(s):
-- \wr_z~0_combout\ = (!\RREX_opcode_Op~combout\(3) & (((!\RREX_opcode_Op~combout\(2) & !\process_0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0005",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(3),
	datac => \RREX_opcode_Op~combout\(2),
	datad => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_z~0_combout\);

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cy,
	combout => \cy~combout\);

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(1),
	combout => \RREX_5_0_Op~combout\(1));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(0),
	combout => \RREX_5_0_Op~combout\(0));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(2),
	combout => \RREX_5_0_Op~combout\(2));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_z,
	combout => \z~combout\);

-- Location: LC_X2_Y4_N9
\process_0~4\ : maxv_lcell
-- Equation(s):
-- \process_0~4_combout\ = (!\RREX_5_0_Op~combout\(1) & (!\RREX_5_0_Op~combout\(2) & ((\z~combout\) # (!\RREX_5_0_Op~combout\(0)))))

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
	combout => \process_0~4_combout\);

-- Location: LC_X2_Y4_N4
\process_0~5\ : maxv_lcell
-- Equation(s):
-- \process_0~5_combout\ = (\process_0~4_combout\) # ((\cy~combout\ & (!\RREX_5_0_Op~combout\(2) & !\RREX_5_0_Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cy~combout\,
	datab => \process_0~4_combout\,
	datac => \RREX_5_0_Op~combout\(2),
	datad => \RREX_5_0_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \process_0~5_combout\);

-- Location: LC_X2_Y4_N2
\wr_cy~0\ : maxv_lcell
-- Equation(s):
-- \wr_cy~0_combout\ = (!\process_0~5_combout\ & (((\RREX_5_0_Op~combout\(2)) # (!\RREX_5_0_Op~combout\(1))) # (!\RREX_5_0_Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5155",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~5_combout\,
	datab => \RREX_5_0_Op~combout\(0),
	datac => \RREX_5_0_Op~combout\(2),
	datad => \RREX_5_0_Op~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_cy~0_combout\);

-- Location: LC_X2_Y4_N7
\wr_cy~1\ : maxv_lcell
-- Equation(s):
-- \wr_cy~1_combout\ = (!\RREX_opcode_Op~combout\(1) & (\wr_z~0_combout\ & ((!\wr_cy~0_combout\) # (!\RREX_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0444",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(1),
	datab => \wr_z~0_combout\,
	datac => \RREX_opcode_Op~combout\(0),
	datad => \wr_cy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_cy~1_combout\);

-- Location: LC_X2_Y4_N8
\wr_z~1\ : maxv_lcell
-- Equation(s):
-- \wr_z~1_combout\ = (\wr_z~0_combout\ & ((\RREX_opcode_Op~combout\(1) & (!\RREX_opcode_Op~combout\(0) & !\wr_cy~0_combout\)) # (!\RREX_opcode_Op~combout\(1) & ((!\wr_cy~0_combout\) # (!\RREX_opcode_Op~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "044c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(1),
	datab => \wr_z~0_combout\,
	datac => \RREX_opcode_Op~combout\(0),
	datad => \wr_cy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_z~1_combout\);

-- Location: LC_X2_Y7_N7
\wr_IFID~1\ : maxv_lcell
-- Equation(s):
-- \wr_IFID~1_combout\ = ((\wr_EXMEM~8_combout\ & ((\select_Mux_DMem_A~2_combout\) # (!\process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f030",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process_0~2_combout\,
	datac => \wr_EXMEM~8_combout\,
	datad => \select_Mux_DMem_A~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_IFID~1_combout\);

-- Location: LC_X3_Y7_N6
\wr_IFID~0\ : maxv_lcell
-- Equation(s):
-- \wr_IFID~0_combout\ = (\process_0~2_combout\ & (((\Equal16~1\))))

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
	dataa => \process_0~2_combout\,
	datad => \Equal16~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_IFID~0_combout\);

-- Location: LC_X3_Y7_N7
\wr_IFID$latch\ : maxv_lcell
-- Equation(s):
-- \wr_IFID$latch~combout\ = ((\wr_IFID~1_combout\ & ((\wr_IFID~0_combout\))) # (!\wr_IFID~1_combout\ & (\wr_IFID$latch~combout\))) # (!\process_0~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fd75",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \wr_IFID~1_combout\,
	datac => \wr_IFID$latch~combout\,
	datad => \wr_IFID~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_IFID$latch~combout\);

-- Location: LC_X2_Y6_N7
\wr_RREX~2\ : maxv_lcell
-- Equation(s):
-- \wr_RREX~2_combout\ = (\IDRR_opcode_Op~combout\(3)) # ((\IDRR_opcode_Op~combout\(2)) # (\IDRR_opcode_Op~combout\(1) $ (!\IDRR_opcode_Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "feef",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_opcode_Op~combout\(3),
	datab => \IDRR_opcode_Op~combout\(2),
	datac => \IDRR_opcode_Op~combout\(1),
	datad => \IDRR_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RREX~2_combout\);

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(0),
	combout => \IDRR_5_0_Op~combout\(0));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(1),
	combout => \IDRR_5_0_Op~combout\(1));

-- Location: LC_X2_Y4_N5
\wr_RREX~0\ : maxv_lcell
-- Equation(s):
-- \wr_RREX~0_combout\ = (\IDRR_5_0_Op~combout\(0) & ((\IDRR_5_0_Op~combout\(1) & (!\IDRR_opcode_Op~combout\(1))) # (!\IDRR_5_0_Op~combout\(1) & ((\z~combout\))))) # (!\IDRR_5_0_Op~combout\(0) & (((\IDRR_5_0_Op~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7c70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \IDRR_opcode_Op~combout\(1),
	datab => \IDRR_5_0_Op~combout\(0),
	datac => \IDRR_5_0_Op~combout\(1),
	datad => \z~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RREX~0_combout\);

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(2),
	combout => \IDRR_5_0_Op~combout\(2));

-- Location: LC_X2_Y4_N0
\wr_RREX~1\ : maxv_lcell
-- Equation(s):
-- \wr_RREX~1_combout\ = (!\IDRR_5_0_Op~combout\(2) & ((\wr_RREX~0_combout\ & ((\IDRR_5_0_Op~combout\(0)) # (\cy~combout\))) # (!\wr_RREX~0_combout\ & (!\IDRR_5_0_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00b9",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr_RREX~0_combout\,
	datab => \IDRR_5_0_Op~combout\(0),
	datac => \cy~combout\,
	datad => \IDRR_5_0_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RREX~1_combout\);

-- Location: LC_X1_Y5_N2
\wr_RREX~3\ : maxv_lcell
-- Equation(s):
-- \wr_RREX~3_combout\ = (\process_0~3_combout\ & (((\process_0~2_combout\)))) # (!\process_0~3_combout\ & ((\wr_RREX~2_combout\) # ((\wr_RREX~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccfa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \wr_RREX~2_combout\,
	datab => \process_0~2_combout\,
	datac => \wr_RREX~1_combout\,
	datad => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RREX~3_combout\);

-- Location: LC_X1_Y5_N0
\wr_RREX$latch\ : maxv_lcell
-- Equation(s):
-- \wr_RREX$latch~combout\ = ((\wr_EXMEM~8_combout\ & ((\wr_RREX~3_combout\))) # (!\wr_EXMEM~8_combout\ & (\wr_RREX$latch~combout\)))

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
	datab => \wr_RREX$latch~combout\,
	datac => \wr_EXMEM~8_combout\,
	datad => \wr_RREX~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_RREX$latch~combout\);

-- Location: LC_X1_Y5_N6
\wr_EXMEM~7\ : maxv_lcell
-- Equation(s):
-- \wr_EXMEM~7_combout\ = ((\wr_EXMEM~8_combout\ & ((\process_0~2_combout\) # (!\select_Mux_DMem_A~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \process_0~2_combout\,
	datac => \select_Mux_DMem_A~2_combout\,
	datad => \wr_EXMEM~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_EXMEM~7_combout\);

-- Location: LC_X1_Y5_N8
\wr_EXMEM~9\ : maxv_lcell
-- Equation(s):
-- \wr_EXMEM~9_combout\ = ((\RREX_opcode_Op~combout\(0) $ (!\RREX_opcode_Op~combout\(1))) # (!\wr_z~0_combout\)) # (!\wr_cy~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b7ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(0),
	datab => \wr_cy~0_combout\,
	datac => \RREX_opcode_Op~combout\(1),
	datad => \wr_z~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_EXMEM~9_combout\);

-- Location: LC_X1_Y5_N9
\wr_EXMEM$latch\ : maxv_lcell
-- Equation(s):
-- \wr_EXMEM$latch~combout\ = ((\wr_EXMEM~7_combout\ & ((\wr_EXMEM~9_combout\))) # (!\wr_EXMEM~7_combout\ & (\wr_EXMEM$latch~combout\)))

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
	datab => \wr_EXMEM$latch~combout\,
	datac => \wr_EXMEM~7_combout\,
	datad => \wr_EXMEM~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \wr_EXMEM$latch~combout\);

-- Location: LC_X12_Y4_N7
\Mux18~0\ : maxv_lcell
-- Equation(s):
-- \Mux18~0_combout\ = (\MEMWB_opcode_Op~combout\(2) & (!\MEMWB_opcode_Op~combout\(1) & (!\MEMWB_opcode_Op~combout\(3) & !\MEMWB_opcode_Op~combout\(0)))) # (!\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ 
-- (\MEMWB_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1042",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(2),
	datab => \MEMWB_opcode_Op~combout\(1),
	datac => \MEMWB_opcode_Op~combout\(3),
	datad => \MEMWB_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux18~0_combout\);

-- Location: LC_X12_Y4_N8
\select_Mux_RF_D3~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_D3~0_combout\ = (((!\process_0~3_combout\ & \Mux18~0_combout\)))

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
	datac => \process_0~3_combout\,
	datad => \Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_D3~0_combout\);

-- Location: LC_X12_Y4_N6
\Mux17~0\ : maxv_lcell
-- Equation(s):
-- \Mux17~0_combout\ = (\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(1) & (!\MEMWB_opcode_Op~combout\(3) & \MEMWB_opcode_Op~combout\(0)))) # (!\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ 
-- (\MEMWB_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(2),
	datab => \MEMWB_opcode_Op~combout\(1),
	datac => \MEMWB_opcode_Op~combout\(3),
	datad => \MEMWB_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux17~0_combout\);

-- Location: LC_X5_Y7_N1
\select_Mux_RF_D3~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_D3~1_combout\ = (!\IDRR_opcode_Op~combout\(0) & (\process_0~2_combout\ & (\select_Mux_DMem_A~2_combout\ & \wr_EXMEM~8_combout\)))

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
	dataa => \IDRR_opcode_Op~combout\(0),
	datab => \process_0~2_combout\,
	datac => \select_Mux_DMem_A~2_combout\,
	datad => \wr_EXMEM~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_D3~1_combout\);

-- Location: LC_X12_Y4_N5
\select_Mux_RF_D3~2\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_D3~2_combout\ = ((\select_Mux_RF_D3~1_combout\) # ((\Mux17~0_combout\ & !\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~0_combout\,
	datac => \process_0~3_combout\,
	datad => \select_Mux_RF_D3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_D3~2_combout\);

-- Location: LC_X4_Y7_N0
\dec~0\ : maxv_lcell
-- Equation(s):
-- \dec~0_combout\ = (i(0) & (\process_0~2_combout\ & (\select_Mux_DMem_A~2_combout\ & \wr_EXMEM~8_combout\)))

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
	dataa => i(0),
	datab => \process_0~2_combout\,
	datac => \select_Mux_DMem_A~2_combout\,
	datad => \wr_EXMEM~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec~0_combout\);

-- Location: LC_X9_Y7_N5
\dec~1\ : maxv_lcell
-- Equation(s):
-- \dec~1_combout\ = (\process_0~2_combout\ & (\select_Mux_DMem_A~2_combout\ & (\wr_EXMEM~8_combout\ & i(1))))

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
	dataa => \process_0~2_combout\,
	datab => \select_Mux_DMem_A~2_combout\,
	datac => \wr_EXMEM~8_combout\,
	datad => i(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec~1_combout\);

-- Location: LC_X5_Y7_N2
\dec~2\ : maxv_lcell
-- Equation(s):
-- \dec~2_combout\ = (i(2) & (\select_Mux_DMem_A~2_combout\ & (\wr_EXMEM~8_combout\ & \process_0~2_combout\)))

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
	dataa => i(2),
	datab => \select_Mux_DMem_A~2_combout\,
	datac => \wr_EXMEM~8_combout\,
	datad => \process_0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \dec~2_combout\);

-- Location: LC_X1_Y6_N3
\select_Mux_PC~19\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~19_combout\ = (!\haz_WB~combout\ & (!\haz_JLR~combout\ & ((\haz_MEM~combout\) # (\haz_EX~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0504",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \haz_WB~combout\,
	datab => \haz_MEM~combout\,
	datac => \haz_JLR~combout\,
	datad => \haz_EX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~19_combout\);

-- Location: LC_X1_Y6_N8
\select_Mux_PC~22\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~22_combout\ = (\haz_JRI~combout\) # ((\haz_BEQ~combout\) # ((\haz_JAL~combout\) # (\select_Mux_PC~19_combout\)))

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
	dataa => \haz_JRI~combout\,
	datab => \haz_BEQ~combout\,
	datac => \haz_JAL~combout\,
	datad => \select_Mux_PC~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~22_combout\);

-- Location: LC_X1_Y6_N9
\select_Mux_PC~5\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~5_combout\ = (\haz_JRI~combout\) # ((!\haz_MEM~combout\ & (!\haz_WB~combout\ & \haz_EX~combout\)))

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
	dataa => \haz_JRI~combout\,
	datab => \haz_MEM~combout\,
	datac => \haz_WB~combout\,
	datad => \haz_EX~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~5_combout\);

-- Location: LC_X1_Y6_N2
\select_Mux_PC~23\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~23_combout\ = (!\haz_JAL~combout\ & (!\haz_BEQ~combout\ & ((\haz_JLR~combout\) # (\select_Mux_PC~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \haz_JAL~combout\,
	datab => \haz_BEQ~combout\,
	datac => \haz_JLR~combout\,
	datad => \select_Mux_PC~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~23_combout\);

-- Location: LC_X1_Y6_N7
\select_Mux_PC~20\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~20_combout\ = ((!\haz_BEQ~combout\ & (!\haz_JAL~combout\)))

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
	datab => \haz_BEQ~combout\,
	datac => \haz_JAL~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~20_combout\);

-- Location: LC_X1_Y6_N4
\select_Mux_PC~21\ : maxv_lcell
-- Equation(s):
-- \select_Mux_PC~21_combout\ = (!\haz_JRI~combout\ & (\select_Mux_PC~20_combout\ & (!\haz_JLR~combout\ & !\select_Mux_PC~17_combout\)))

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
	dataa => \haz_JRI~combout\,
	datab => \select_Mux_PC~20_combout\,
	datac => \haz_JLR~combout\,
	datad => \select_Mux_PC~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_PC~21_combout\);

-- Location: LC_X1_Y4_N3
\Mux5~0\ : maxv_lcell
-- Equation(s):
-- \Mux5~0_combout\ = ((\RREX_opcode_Op~combout\(1) $ (\RREX_opcode_Op~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \RREX_opcode_Op~combout\(1),
	datad => \RREX_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux5~0_combout\);

-- Location: LC_X2_Y4_N3
\Equal7~0\ : maxv_lcell
-- Equation(s):
-- \Equal7~0_combout\ = (\RREX_5_0_Op~combout\(1) & (((!\RREX_5_0_Op~combout\(2) & \RREX_5_0_Op~combout\(0)))))

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
	combout => \Equal7~0_combout\);

-- Location: LC_X1_Y4_N5
\select_Mux_ALU_B~2\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~2_combout\ = (\Mux5~0_combout\ & (!\RREX_opcode_Op~combout\(3) & (\Equal7~0_combout\ & !\process_0~5_combout\)))

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
	dataa => \Mux5~0_combout\,
	datab => \RREX_opcode_Op~combout\(3),
	datac => \Equal7~0_combout\,
	datad => \process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~2_combout\);

-- Location: LC_X2_Y6_N3
\select_Mux_ALU_B~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~1_combout\ = ((\wr_EXMEM~8_combout\ & (!\select_Mux_DMem_A~2_combout\ & !\RREX_opcode_Op~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \wr_EXMEM~8_combout\,
	datac => \select_Mux_DMem_A~2_combout\,
	datad => \RREX_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~1_combout\);

-- Location: LC_X2_Y6_N2
\select_Mux_ALU_B~3\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~3_combout\ = (\select_Mux_ALU_B~1_combout\ & ((\select_Mux_ALU_B~2_combout\) # ((\RREX_opcode_Op~combout\(3) & \select_Mux_ALU_B~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \select_Mux_ALU_B~2_combout\,
	datab => \RREX_opcode_Op~combout\(3),
	datac => \select_Mux_ALU_B~0_combout\,
	datad => \select_Mux_ALU_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~3_combout\);

-- Location: LC_X1_Y4_N1
\Mux4~0\ : maxv_lcell
-- Equation(s):
-- \Mux4~0_combout\ = (\RREX_opcode_Op~combout\(1) & ((\RREX_opcode_Op~combout\(2) $ (!\RREX_opcode_Op~combout\(3))) # (!\RREX_opcode_Op~combout\(0)))) # (!\RREX_opcode_Op~combout\(1) & ((\RREX_opcode_Op~combout\(3)) # (\RREX_opcode_Op~combout\(0) $ 
-- (\RREX_opcode_Op~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "df76",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(0),
	datab => \RREX_opcode_Op~combout\(2),
	datac => \RREX_opcode_Op~combout\(1),
	datad => \RREX_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux4~0_combout\);

-- Location: LC_X1_Y4_N7
\select_Mux_ALU_B~4\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_B~4_combout\ = (\process_0~3_combout\) # (((\Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datad => \Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_B~4_combout\);

-- Location: LC_X12_Y7_N3
\select_ALU2~0\ : maxv_lcell
-- Equation(s):
-- \select_ALU2~0_combout\ = (!\EXMEM_opcode_Op~combout\(2) & (!\process_0~3_combout\ & (!\EXMEM_opcode_Op~combout\(1) & \EXMEM_opcode_Op~combout\(3))))

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
	dataa => \EXMEM_opcode_Op~combout\(2),
	datab => \process_0~3_combout\,
	datac => \EXMEM_opcode_Op~combout\(1),
	datad => \EXMEM_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU2~0_combout\);

-- Location: LC_X12_Y7_N2
\select_Mux_ALU2_B~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU2_B~0_combout\ = (\select_ALU2~0_combout\ & (((!\EXMEM_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \select_ALU2~0_combout\,
	datad => \EXMEM_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU2_B~0_combout\);

-- Location: LC_X12_Y7_N6
\select_Mux_ALU2_B~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU2_B~1_combout\ = (\select_ALU2~0_combout\ & (((\EXMEM_opcode_Op~combout\(0)))))

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
	dataa => \select_ALU2~0_combout\,
	datad => \EXMEM_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU2_B~1_combout\);

-- Location: LC_X1_Y4_N9
\select_Mux_ALU_A~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_A~0_combout\ = (\RREX_opcode_Op~combout\(0) & (((!\RREX_opcode_Op~combout\(1) & !\RREX_opcode_Op~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(0),
	datac => \RREX_opcode_Op~combout\(1),
	datad => \RREX_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_A~0_combout\);

-- Location: LC_X1_Y4_N4
\select_ALU~0\ : maxv_lcell
-- Equation(s):
-- \select_ALU~0_combout\ = (\RREX_opcode_Op~combout\(0) & (\RREX_opcode_Op~combout\(1) & (\RREX_opcode_Op~combout\(2) $ (\RREX_opcode_Op~combout\(3))))) # (!\RREX_opcode_Op~combout\(0) & (!\RREX_opcode_Op~combout\(2) & (!\RREX_opcode_Op~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2181",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(0),
	datab => \RREX_opcode_Op~combout\(2),
	datac => \RREX_opcode_Op~combout\(1),
	datad => \RREX_opcode_Op~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~0_combout\);

-- Location: LC_X1_Y4_N2
\select_ALU~1\ : maxv_lcell
-- Equation(s):
-- \select_ALU~1_combout\ = ((\RREX_opcode_Op~combout\(2)) # ((\Equal7~0_combout\) # (\process_0~5_combout\)))

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
	datab => \RREX_opcode_Op~combout\(2),
	datac => \Equal7~0_combout\,
	datad => \process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~1_combout\);

-- Location: LC_X1_Y4_N6
\select_ALU~2\ : maxv_lcell
-- Equation(s):
-- \select_ALU~2_combout\ = (!\process_0~3_combout\ & ((\select_ALU~0_combout\) # ((\select_Mux_ALU_A~0_combout\ & \select_ALU~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5450",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \select_Mux_ALU_A~0_combout\,
	datac => \select_ALU~0_combout\,
	datad => \select_ALU~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~2_combout\);

-- Location: LC_X2_Y4_N1
\select_ALU~3\ : maxv_lcell
-- Equation(s):
-- \select_ALU~3_combout\ = (\RREX_opcode_Op~combout\(1) & (!\RREX_opcode_Op~combout\(3) & ((\process_0~5_combout\) # (\Equal7~0_combout\)))) # (!\RREX_opcode_Op~combout\(1) & (\RREX_opcode_Op~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6664",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RREX_opcode_Op~combout\(1),
	datab => \RREX_opcode_Op~combout\(3),
	datac => \process_0~5_combout\,
	datad => \Equal7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~3_combout\);

-- Location: LC_X2_Y4_N6
\select_ALU~4\ : maxv_lcell
-- Equation(s):
-- \select_ALU~4_combout\ = ((\select_ALU~3_combout\ & (!\RREX_opcode_Op~combout\(0) & \select_Mux_ALU_B~1_combout\)))

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
	datab => \select_ALU~3_combout\,
	datac => \RREX_opcode_Op~combout\(0),
	datad => \select_Mux_ALU_B~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_ALU~4_combout\);

-- Location: LC_X12_Y4_N0
\select_Mux_RF_A3~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A3~0_combout\ = (!\MEMWB_opcode_Op~combout\(2) & (!\MEMWB_opcode_Op~combout\(1) & (!\MEMWB_opcode_Op~combout\(3) & !\MEMWB_opcode_Op~combout\(0))))

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
	dataa => \MEMWB_opcode_Op~combout\(2),
	datab => \MEMWB_opcode_Op~combout\(1),
	datac => \MEMWB_opcode_Op~combout\(3),
	datad => \MEMWB_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A3~0_combout\);

-- Location: LC_X12_Y4_N4
\select_Mux_RF_A3~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A3~1_combout\ = ((\select_Mux_RF_D3~1_combout\) # ((\select_Mux_RF_A3~0_combout\ & !\process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \select_Mux_RF_A3~0_combout\,
	datac => \process_0~3_combout\,
	datad => \select_Mux_RF_D3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A3~1_combout\);

-- Location: LC_X12_Y4_N1
\Mux15~0\ : maxv_lcell
-- Equation(s):
-- \Mux15~0_combout\ = (\MEMWB_opcode_Op~combout\(2) & (!\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ (!\MEMWB_opcode_Op~combout\(0))))) # (!\MEMWB_opcode_Op~combout\(2) & (\MEMWB_opcode_Op~combout\(3) & (\MEMWB_opcode_Op~combout\(1) $ 
-- (\MEMWB_opcode_Op~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1842",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \MEMWB_opcode_Op~combout\(2),
	datab => \MEMWB_opcode_Op~combout\(1),
	datac => \MEMWB_opcode_Op~combout\(3),
	datad => \MEMWB_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Mux15~0_combout\);

-- Location: LC_X12_Y4_N2
\select_Mux_RF_A3~2\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A3~2_combout\ = ((\select_Mux_RF_D3~1_combout\) # ((!\process_0~3_combout\ & \Mux15~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \select_Mux_RF_D3~1_combout\,
	datac => \process_0~3_combout\,
	datad => \Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A3~2_combout\);

-- Location: LC_X1_Y4_N8
\select_Mux_ALU_A~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_ALU_A~1_combout\ = (!\process_0~3_combout\ & (\RREX_opcode_Op~combout\(2) & ((\select_Mux_ALU_A~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~3_combout\,
	datab => \RREX_opcode_Op~combout\(2),
	datad => \select_Mux_ALU_A~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_ALU_A~1_combout\);

-- Location: LC_X2_Y6_N9
\select_Mux_RF_A1~0\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A1~0_combout\ = (((\IDRR_opcode_Op~combout\(1) & \IDRR_opcode_Op~combout\(0))))

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
	datac => \IDRR_opcode_Op~combout\(1),
	datad => \IDRR_opcode_Op~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A1~0_combout\);

-- Location: LC_X2_Y6_N6
\select_Mux_RF_A1~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_RF_A1~1_combout\ = (!\IDRR_opcode_Op~combout\(3) & (\select_Mux_RF_A1~0_combout\ & (!\process_0~3_combout\ & \IDRR_opcode_Op~combout\(2))))

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
	datac => \process_0~3_combout\,
	datad => \IDRR_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_RF_A1~1_combout\);

-- Location: LC_X2_Y6_N4
\select_Mux_DMem_A~3\ : maxv_lcell
-- Equation(s):
-- \select_Mux_DMem_A~3_combout\ = (!\IDRR_opcode_Op~combout\(1) & (\wr_EXMEM~8_combout\ & (\IDRR_opcode_Op~combout\(3) & \IDRR_opcode_Op~combout\(2))))

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
	dataa => \IDRR_opcode_Op~combout\(1),
	datab => \wr_EXMEM~8_combout\,
	datac => \IDRR_opcode_Op~combout\(3),
	datad => \IDRR_opcode_Op~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_DMem_A~3_combout\);

-- Location: LC_X9_Y7_N1
\select_Mux_LMSM~1\ : maxv_lcell
-- Equation(s):
-- \select_Mux_LMSM~1_combout\ = (\select_Mux_LMSM~0_combout\ & (!\Equal16~1\ & ((i(3)) # (!\Equal15~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \select_Mux_LMSM~0_combout\,
	datab => \Equal16~1\,
	datac => i(3),
	datad => \Equal15~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \select_Mux_LMSM~1_combout\);

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(3));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(4));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IDRR_5_0_Op[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_IDRR_5_0_Op(5));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(3));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(4));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RREX_5_0_Op[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_RREX_5_0_Op(5));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_PC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_PC~0_combout\,
	oe => VCC,
	padio => ww_wr_PC);

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_IR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_PC~0_combout\,
	oe => VCC,
	padio => ww_wr_IR);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_RF~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_wr_RF~0_combout\,
	oe => VCC,
	padio => ww_wr_RF);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_RF_r7~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_process_0~3_combout\,
	oe => VCC,
	padio => ww_wr_RF_r7);

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_PC~0_combout\,
	oe => VCC,
	padio => ww_wr_inc);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_DMem~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_DMem~2_combout\,
	oe => VCC,
	padio => ww_wr_DMem);

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_cy~1_combout\,
	oe => VCC,
	padio => ww_wr_cy);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_z~1_combout\,
	oe => VCC,
	padio => ww_wr_z);

-- Location: PIN_D4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_IFID~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_IFID$latch~combout\,
	oe => VCC,
	padio => ww_wr_IFID);

-- Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_IDRR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_IFID$latch~combout\,
	oe => VCC,
	padio => ww_wr_IDRR);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_RREX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_RREX$latch~combout\,
	oe => VCC,
	padio => ww_wr_RREX);

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_EXMEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_EXMEM$latch~combout\,
	oe => VCC,
	padio => ww_wr_EXMEM);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\wr_MEMWB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_wr_MEMWB);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clr_IFID~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_clr_IFID);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clr_IDRR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_clr_IDRR);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clr_RREX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	oe => VCC,
	padio => ww_clr_RREX);

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clr_EXMEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_clr_EXMEM);

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\clr_MEMWB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_clr_MEMWB);

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_D3~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(0));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_D3~2_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(1));

-- Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_D3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_Mux_RF_D3(2));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dec~0_combout\,
	oe => VCC,
	padio => ww_dec(0));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dec~1_combout\,
	oe => VCC,
	padio => ww_dec(1));

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\dec[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \dec~2_combout\,
	oe => VCC,
	padio => ww_dec(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_PC[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_PC~22_combout\,
	oe => VCC,
	padio => ww_select_Mux_PC(0));

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_PC[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_PC~23_combout\,
	oe => VCC,
	padio => ww_select_Mux_PC(1));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_PC[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_PC~21_combout\,
	oe => VCC,
	padio => ww_select_Mux_PC(2));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU_B~3_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_B(0));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_select_Mux_ALU_B~4_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_B(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU2_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU2_B~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU2_B(0));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU2_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU2_B~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU2_B(1));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU~2_combout\,
	oe => VCC,
	padio => ww_select_ALU(0));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU~4_combout\,
	oe => VCC,
	padio => ww_select_ALU(1));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU2~0_combout\,
	oe => VCC,
	padio => ww_select_ALU2(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_ALU2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_select_ALU2(1));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_A3~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A3(0));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_A3~2_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A3(1));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_ALU_A~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU_A);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_ALU2_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_ALU2~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_ALU2_A);

-- Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_RF_A1~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A1);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_RF_A2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_DMem~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_RF_A2);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_DMem_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_DMem_A~3_combout\,
	oe => VCC,
	padio => ww_select_Mux_DMem_A);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_DMem_Din~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \wr_DMem~0_combout\,
	oe => VCC,
	padio => ww_select_Mux_DMem_Din);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\select_Mux_LMSM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \select_Mux_LMSM~1_combout\,
	oe => VCC,
	padio => ww_select_Mux_LMSM);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cy_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \cy~combout\,
	oe => VCC,
	padio => ww_cy_in);

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
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


