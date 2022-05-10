library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity uP is
    port(
		clk : in std_logic
		);
end uP;

architecture uParch of uP is

	component datapath is
		 port(
			wr_PC, wr_IR, wr_RF, wr_RF_r7, wr_inc, wr_DMem, wr_cy, wr_z : in std_logic;
			wr_IFID, wr_IDRR, wr_RREX, wr_EXMEM, wr_MEMWB : in std_logic;
			select_Mux_RF_D3, dec, select_Mux_PC : in std_logic_vector(2 downto 0);
			select_Mux_LUT, select_Mux_ALU_B, select_Mux_ALU2_B, select_ALU, select_ALU2, select_Mux_RF_A3 : in std_logic_vector(1 downto 0);
			select_Mux_ALU_A, select_Mux_ALU2_A, select_Mux_RF_A1, select_Mux_RF_A2, select_Mux_DMem_A, select_Mux_DMem_Din : in std_logic;
			select_Mux_LMSM : in std_logic;
			clk : in std_logic;
			cy_in, z_in : in std_logic;
			
			cy_out, z_out : out std_logic;
			IDRR_opcode, RREX_opcode, EXMEM_opcode, MEMWB_opcode : out std_logic_vector(3 downto 0);
			IDRR_5_0, RREX_5_0 : out std_logic_vector(5 downto 0);
			haz_EX, haz_MEM, haz_WB, haz_BEQ, haz_JAL, haz_JLR, haz_JRI : out std_logic
			);
	end component;
	
	component controller is
		port(
			IDRR_opcode_Op, RREX_opcode_Op, EXMEM_opcode_Op, MEMWB_opcode_Op : in std_logic_vector(3 downto 0);
			cy, z : in std_logic;
			clk : in std_logic;
			haz_EX, haz_MEM, haz_WB, haz_BEQ, haz_JAL, haz_JLR, haz_JRI : in std_logic;
			IDRR_5_0_Op, RREX_5_0_Op : in std_logic_vector(5 downto 0);
			IDRR_11_9, IDRR_8_6, RREX_11_9: in std_logic_vector(2 downto 0);
			
			wr_PC, wr_IR, wr_RF, wr_RF_r7, wr_inc, wr_DMem, wr_cy, wr_z : out std_logic;
			wr_IFID, wr_IDRR, wr_RREX, wr_EXMEM, wr_MEMWB : out std_logic;
			clr_IFID, clr_IDRR, clr_RREX, clr_EXMEM, clr_MEMWB : out std_logic;
			select_Mux_RF_D3, dec, select_Mux_PC  : out std_logic_vector(2 downto 0);
			select_Mux_LUT, select_Mux_ALU_B, select_Mux_ALU2_B, select_ALU, select_ALU2, select_Mux_RF_A3: out std_logic_vector(1 downto 0);
			select_Mux_ALU_A, select_Mux_ALU2_A, select_Mux_RF_A1, select_Mux_RF_A2, select_Mux_DMem_A, select_Mux_DMem_Din : out std_logic;
			select_Mux_LMSM : out std_logic;
			cy_in, z_in : out std_logic
		);
	end component;
	
			signal IDRR_opcode_s, RREX_opcode_s, EXMEM_opcode_s, MEMWB_opcode_s : std_logic_vector(3 downto 0);
			signal cy_s, z_s : std_logic;
			signal haz_EX_s, haz_MEM_s, haz_WB_s, haz_BEQ_s, haz_JAL_s, haz_JLR_s, haz_JRI_s : std_logic;
			signal IDRR_5_0_s, RREX_5_0_s : std_logic_vector(5 downto 0);
			signal IDRR_11_9_s, IDRR_8_6_s, RREX_11_9_s : std_logic_vector(2 downto 0);
			
			signal wr_PC_s, wr_IR_s, wr_RF_s, wr_RF_r7_s, wr_inc_s, wr_DMem_s, wr_cy_s, wr_z_s : std_logic;
			signal wr_IFID_s, wr_IDRR_s, wr_RREX_s, wr_EXMEM_s, wr_MEMWB_s : std_logic;
			signal clr_IFID_s, clr_IDRR_s, clr_RREX_s, clr_EXMEM_s, clr_MEMWB_s : std_logic;
			signal select_Mux_RF_D3_s, dec_s, select_Mux_PC_s : std_logic_vector(2 downto 0);
			signal select_Mux_LUT_s, select_Mux_ALU_B_s, select_Mux_ALU2_B_s, select_ALU_s, select_ALU2_s, select_Mux_RF_A3_s: std_logic_vector(1 downto 0);
			signal select_Mux_ALU_A_s, select_Mux_ALU2_A_s, select_Mux_RF_A1_s, select_Mux_RF_A2_s, select_Mux_DMem_A_s, select_Mux_DMem_Din_s : std_logic;
			signal select_Mux_LMSM_s : std_logic;
			signal cy_in_s, z_in_s : std_logic;
	
begin

--Datapath
DP: datapath port map (
								wr_PC=>wr_PC_s, 
								wr_IR=>wr_IR_s, 
								wr_RF=>wr_RF_s, 
								wr_RF_r7=>wr_RF_r7_s, 
								wr_inc=>wr_inc_s, 
								wr_DMem=>wr_DMem_s, 
								wr_cy=>wr_cy_s, 
								wr_z=>wr_z_s,
								wr_IFID=>wr_IFID_s, 
								wr_IDRR=>wr_IDRR_s, 
								wr_RREX=>wr_RREX_s, 
								wr_EXMEM=>wr_EXMEM_s, 
								wr_MEMWB=>wr_MEMWB_s,
								select_Mux_RF_D3=>select_Mux_RF_D3_s, 
								dec=>dec_s, 
								select_Mux_PC=>select_Mux_PC_s,
								select_Mux_LUT=>select_Mux_LUT_s, 
								select_Mux_ALU_B=>select_Mux_ALU_B_s, 
								select_Mux_ALU2_B=>select_Mux_ALU2_B_s, 
								select_ALU=>select_ALU_s, 
								select_ALU2=>select_ALU2_s, 
								select_Mux_RF_A3=>select_Mux_RF_A3_s,
								select_Mux_ALU_A=>select_Mux_ALU_A_s, 
								select_Mux_ALU2_A=>select_Mux_ALU2_A_s, 
								select_Mux_RF_A1=>select_Mux_RF_A1_s, 
								select_Mux_RF_A2=>select_Mux_RF_A2_s, 
								select_Mux_DMem_A=>select_Mux_DMem_A_s, 
								select_Mux_DMem_Din=>select_Mux_DMem_Din_s,
								select_Mux_LMSM=>select_Mux_LMSM_s,
								clk=>clk,
								cy_in=>cy_in_s, 
								z_in=>z_in_s,
			
								cy_out=>cy_s, 
								z_out=>z_s,
								IDRR_opcode=>IDRR_opcode_s, 
								RREX_opcode=>RREX_opcode_s, 
								EXMEM_opcode=>EXMEM_opcode_s, 
								MEMWB_opcode=>MEMWB_opcode_s,
								IDRR_5_0=>IDRR_5_0_s, 
								RREX_5_0=>RREX_5_0_s,
								haz_EX=>haz_EX_s, 
								haz_MEM=>haz_MEM_s, 
								haz_WB=>haz_WB_s, 
								haz_BEQ=>haz_BEQ_s, 
								haz_JAL=>haz_JAL_s, 
								haz_JLR=>haz_JLR_s, 
								haz_JRI=>haz_JRI_s
								);

--Controller
Ctrl: controller port map (
							IDRR_opcode_Op=>IDRR_opcode_s, 
							RREX_opcode_Op=>RREX_opcode_s, 
							EXMEM_opcode_Op=>EXMEM_opcode_s, 
							MEMWB_opcode_Op=>MEMWB_opcode_s,
							cy=>cy_s, 
							z=>z_s,
							clk=>clk,
							haz_EX=>haz_EX_s, 
							haz_MEM=>haz_MEM_s, 
							haz_WB=>haz_WB_s, 
							haz_BEQ=>haz_BEQ_s, 
							haz_JAL=>haz_JAL_s, 
							haz_JLR=>haz_JLR_s, 
							haz_JRI=>haz_JRI_s,
							IDRR_5_0_Op=>IDRR_5_0_s, 
							RREX_5_0_Op=>RREX_5_0_s,
							IDRR_11_9=>IDRR_11_9_s, 
							IDRR_8_6=>IDRR_8_6_s, 
							RREX_11_9=>RREX_11_9_s,
			
							wr_PC=>wr_PC_s, 
							wr_IR=>wr_IR_s, 
							wr_RF=>wr_RF_s, 
							wr_RF_r7=>wr_RF_r7_s, 
							wr_inc=>wr_inc_s, 
							wr_DMem=>wr_DMem_s, 
							wr_cy=>wr_cy_s, 
							wr_z=>wr_z_s,
							wr_IFID=>wr_IFID_s, 
							wr_IDRR=>wr_IDRR_s, 
							wr_RREX=>wr_RREX_s, 
							wr_EXMEM=>wr_EXMEM_s, 
							wr_MEMWB=>wr_MEMWB_s,
							clr_IFID=>clr_IFID_s, 
							clr_IDRR=>clr_IDRR_s, 
							clr_RREX=>clr_RREX_s, 
							clr_EXMEM=>clr_EXMEM_s, 
							clr_MEMWB=>clr_MEMWB_s,
							select_Mux_RF_D3=>select_Mux_RF_D3_s, 
							dec=>dec_s, 
							select_Mux_PC=>select_Mux_PC_s,
							select_Mux_LUT=>select_Mux_LUT_s, 
							select_Mux_ALU_B=>select_Mux_ALU_B_s, 
							select_Mux_ALU2_B=>select_Mux_ALU2_B_s, 
							select_ALU=>select_ALU_s, 
							select_ALU2=>select_ALU2_s, 
							select_Mux_RF_A3=>select_Mux_RF_A3_s,
							select_Mux_ALU_A=>select_Mux_ALU_A_s, 
							select_Mux_ALU2_A=>select_Mux_ALU2_A_s, 
							select_Mux_RF_A1=>select_Mux_RF_A1_s, 
							select_Mux_RF_A2=>select_Mux_RF_A2_s, 
							select_Mux_DMem_A=>select_Mux_DMem_A_s, 
							select_Mux_DMem_Din=>select_Mux_DMem_Din_s,
							select_Mux_LMSM=>select_Mux_LMSM_s,
							cy_in=>cy_in_s, 
							z_in=>z_in_s
							);
							
end uParch;
