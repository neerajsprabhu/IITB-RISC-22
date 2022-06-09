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

-- DATE "06/09/2022 11:31:43"

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
	clr_IFID : IN std_logic;
	clr_IDRR : IN std_logic;
	clr_RREX : IN std_logic;
	clr_EXMEM : IN std_logic;
	clr_MEMWB : IN std_logic;
	select_Mux_RF_D3 : IN std_logic_vector(2 DOWNTO 0);
	dec : IN std_logic_vector(2 DOWNTO 0);
	select_Mux_PC : IN std_logic_vector(2 DOWNTO 0);
	select_Mux_LUT : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_ALU_B : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_ALU2_B : IN std_logic_vector(1 DOWNTO 0);
	select_ALU : IN std_logic_vector(1 DOWNTO 0);
	select_ALU2 : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_RF_A3 : IN std_logic_vector(1 DOWNTO 0);
	select_Mux_ALU_A : IN std_logic;
	select_Mux_ALU2_A : IN std_logic;
	select_Mux_RF_A1 : IN std_logic;
	select_Mux_RF_A2 : IN std_logic;
	select_Mux_DMem_A : IN std_logic;
	select_Mux_DMem_Din : IN std_logic;
	select_Mux_LMSM : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	cy_in : IN std_logic;
	z_in : IN std_logic;
	cy_out : OUT std_logic;
	z_out : OUT std_logic;
	IDRR_opcode : OUT std_logic_vector(3 DOWNTO 0);
	RREX_opcode : OUT std_logic_vector(3 DOWNTO 0);
	EXMEM_opcode : OUT std_logic_vector(3 DOWNTO 0);
	MEMWB_opcode : OUT std_logic_vector(3 DOWNTO 0);
	IDRR_5_0 : OUT std_logic_vector(5 DOWNTO 0);
	RREX_5_0 : OUT std_logic_vector(5 DOWNTO 0);
	haz_EX : OUT std_logic;
	haz_MEM : OUT std_logic;
	haz_WB : OUT std_logic;
	haz_BEQ : OUT std_logic;
	haz_JAL : OUT std_logic;
	haz_JLR : OUT std_logic;
	haz_JRI : OUT std_logic;
	IDRR_11_9 : OUT std_logic_vector(2 DOWNTO 0);
	IDRR_8_6 : OUT std_logic_vector(2 DOWNTO 0);
	RREX_11_9 : OUT std_logic_vector(2 DOWNTO 0)
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
SIGNAL ww_clr_IFID : std_logic;
SIGNAL ww_clr_IDRR : std_logic;
SIGNAL ww_clr_RREX : std_logic;
SIGNAL ww_clr_EXMEM : std_logic;
SIGNAL ww_clr_MEMWB : std_logic;
SIGNAL ww_select_Mux_RF_D3 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_dec : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_select_Mux_PC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_select_Mux_LUT : std_logic_vector(1 DOWNTO 0);
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
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_cy_in : std_logic;
SIGNAL ww_z_in : std_logic;
SIGNAL ww_cy_out : std_logic;
SIGNAL ww_z_out : std_logic;
SIGNAL ww_IDRR_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_RREX_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_EXMEM_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MEMWB_opcode : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_IDRR_5_0 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_RREX_5_0 : std_logic_vector(5 DOWNTO 0);
SIGNAL ww_haz_EX : std_logic;
SIGNAL ww_haz_MEM : std_logic;
SIGNAL ww_haz_WB : std_logic;
SIGNAL ww_haz_BEQ : std_logic;
SIGNAL ww_haz_JAL : std_logic;
SIGNAL ww_haz_JLR : std_logic;
SIGNAL ww_haz_JRI : std_logic;
SIGNAL ww_IDRR_11_9 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_IDRR_8_6 : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_RREX_11_9 : std_logic_vector(2 DOWNTO 0);

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
ww_clr_IFID <= clr_IFID;
ww_clr_IDRR <= clr_IDRR;
ww_clr_RREX <= clr_RREX;
ww_clr_EXMEM <= clr_EXMEM;
ww_clr_MEMWB <= clr_MEMWB;
ww_select_Mux_RF_D3 <= select_Mux_RF_D3;
ww_dec <= dec;
ww_select_Mux_PC <= select_Mux_PC;
ww_select_Mux_LUT <= select_Mux_LUT;
ww_select_Mux_ALU_B <= select_Mux_ALU_B;
ww_select_Mux_ALU2_B <= select_Mux_ALU2_B;
ww_select_ALU <= select_ALU;
ww_select_ALU2 <= select_ALU2;
ww_select_Mux_RF_A3 <= select_Mux_RF_A3;
ww_select_Mux_ALU_A <= select_Mux_ALU_A;
ww_select_Mux_ALU2_A <= select_Mux_ALU2_A;
ww_select_Mux_RF_A1 <= select_Mux_RF_A1;
ww_select_Mux_RF_A2 <= select_Mux_RF_A2;
ww_select_Mux_DMem_A <= select_Mux_DMem_A;
ww_select_Mux_DMem_Din <= select_Mux_DMem_Din;
ww_select_Mux_LMSM <= select_Mux_LMSM;
ww_clk <= clk;
ww_reset <= reset;
ww_cy_in <= cy_in;
ww_z_in <= z_in;
cy_out <= ww_cy_out;
z_out <= ww_z_out;
IDRR_opcode <= ww_IDRR_opcode;
RREX_opcode <= ww_RREX_opcode;
EXMEM_opcode <= ww_EXMEM_opcode;
MEMWB_opcode <= ww_MEMWB_opcode;
IDRR_5_0 <= ww_IDRR_5_0;
RREX_5_0 <= ww_RREX_5_0;
haz_EX <= ww_haz_EX;
haz_MEM <= ww_haz_MEM;
haz_WB <= ww_haz_WB;
haz_BEQ <= ww_haz_BEQ;
haz_JAL <= ww_haz_JAL;
haz_JLR <= ww_haz_JLR;
haz_JRI <= ww_haz_JRI;
IDRR_11_9 <= ww_IDRR_11_9;
IDRR_8_6 <= ww_IDRR_8_6;
RREX_11_9 <= ww_RREX_11_9;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_PC~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_PC);

-- Location: PIN_L13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_IR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_IR);

-- Location: PIN_M13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_RF~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_RF);

-- Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_RF_r7~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_RF_r7);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_inc~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_inc);

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_DMem~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_DMem);

-- Location: PIN_R13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_cy~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_cy);

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_z~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_z);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_IFID~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_IFID);

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_IDRR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_IDRR);

-- Location: PIN_C4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_RREX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_RREX);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_EXMEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_EXMEM);

-- Location: PIN_M15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\wr_MEMWB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_wr_MEMWB);

-- Location: PIN_P15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr_IFID~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr_IFID);

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr_IDRR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr_IDRR);

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr_RREX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr_RREX);

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr_EXMEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr_EXMEM);

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clr_MEMWB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clr_MEMWB);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_D3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_D3(0));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_D3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_D3(1));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_D3[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_D3(2));

-- Location: PIN_N3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dec[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dec(0));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dec[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dec(1));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\dec[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_dec(2));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_PC[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_PC(0));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_PC[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_PC(1));

-- Location: PIN_N13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_PC[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_PC(2));

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_LUT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_LUT(0));

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_LUT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_LUT(1));

-- Location: PIN_R1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU_B(0));

-- Location: PIN_N16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU_B(1));

-- Location: PIN_M14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU2_B[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU2_B(0));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU2_B[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU2_B(1));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU(0));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU(1));

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU2(0));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_ALU2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_ALU2(1));

-- Location: PIN_M16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A3[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A3(0));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A3[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A3(1));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU_A);

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_ALU2_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_ALU2_A);

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A1~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A1);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_RF_A2~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_RF_A2);

-- Location: PIN_P13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_DMem_A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_DMem_A);

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_DMem_Din~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_DMem_Din);

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\select_Mux_LMSM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_select_Mux_LMSM);

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk);

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_reset);

-- Location: PIN_L14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\cy_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_cy_in);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\z_in~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_z_in);

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\cy_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_cy_out);

-- Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\z_out~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_z_out);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_opcode(0));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_opcode(1));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_opcode(2));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_opcode[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_opcode(3));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_opcode(0));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_opcode(1));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_opcode(2));

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_opcode[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_opcode(3));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EXMEM_opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_EXMEM_opcode(0));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EXMEM_opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_EXMEM_opcode(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EXMEM_opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_EXMEM_opcode(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\EXMEM_opcode[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_EXMEM_opcode(3));

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MEMWB_opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_MEMWB_opcode(0));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MEMWB_opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_MEMWB_opcode(1));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MEMWB_opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_MEMWB_opcode(2));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\MEMWB_opcode[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_MEMWB_opcode(3));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_5_0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_5_0(0));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_5_0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_5_0(1));

-- Location: PIN_P12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_5_0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_5_0(2));

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_5_0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_5_0(3));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_5_0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_5_0(4));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_5_0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_5_0(5));

-- Location: PIN_N15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_5_0[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_5_0(0));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_5_0[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_5_0(1));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_5_0[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_5_0(2));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_5_0[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_5_0(3));

-- Location: PIN_N12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_5_0[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_5_0(4));

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_5_0[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_5_0(5));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\haz_EX~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_haz_EX);

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\haz_MEM~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_haz_MEM);

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\haz_WB~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_haz_WB);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\haz_BEQ~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_haz_BEQ);

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\haz_JAL~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_haz_JAL);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\haz_JLR~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_haz_JLR);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\haz_JRI~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_haz_JRI);

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_11_9[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_11_9(0));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_11_9[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_11_9(1));

-- Location: PIN_N14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_11_9[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_11_9(2));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_8_6[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_8_6(0));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_8_6[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_8_6(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\IDRR_8_6[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_IDRR_8_6(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_11_9[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_11_9(0));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_11_9[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_11_9(1));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\RREX_11_9[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_RREX_11_9(2));
END structure;


