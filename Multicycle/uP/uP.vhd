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
			wr_IR, wr_RF, wr_T1, wr_T2, wr_T3, wr_inc, wr_Mem, wr_cy, wr_z : in std_logic;
			select_Mux_RF_A3, select_Mux_RF_D3, dec : in std_logic_vector(2 downto 0);
			select_Mux_RF_A1, select_Mux_ALU_B, select_Mux_T2, select_ALU : in std_logic_vector(1 downto 0);
			select_Mux_Mem_A, select_Mux_Mem_D, select_Mux_T1, select_Mux_ALU_A, select_Mux_RF_A2 : in std_logic;
			clk : in std_logic;
			
			cy_Op, z_Op : out std_logic;
			IR_out : out std_logic_vector(15 downto 0)
			);
	end component;
	
	component controller is
		port(
			IR : in std_logic_vector(15 downto 0);
			cy, z : in std_logic;
			clk : in std_logic;
		
			wr_IR, wr_RF, wr_T1, wr_T2, wr_T3, wr_inc, wr_Mem, wr_cy, wr_z : out std_logic;
			select_Mux_RF_A3, select_Mux_RF_D3, dec : out std_logic_vector(2 downto 0);
			select_Mux_RF_A1, select_Mux_ALU_B, select_Mux_T2, select_ALU : out std_logic_vector(1 downto 0);
			select_Mux_Mem_A, select_Mux_Mem_D, select_Mux_RF_A2, select_Mux_T1, select_Mux_ALU_A : out std_logic
		);
	end component;
	
	signal IR_s : std_logic_vector(15 downto 0);
	signal cy_s, z_s : std_logic;
	signal wr_IR_s, wr_RF_s, wr_T1_s, wr_T2_s, wr_T3_s, wr_inc_s, wr_Mem_s, wr_cy_s, wr_z_s : std_logic;
	signal select_Mux_RF_A3_s, select_Mux_RF_D3_s, dec_s : std_logic_vector(2 downto 0);
	signal select_Mux_RF_A1_s, select_Mux_ALU_B_s, select_Mux_T2_s, select_ALU_s : std_logic_vector(1 downto 0);
	signal select_Mux_Mem_A_s, select_Mux_Mem_D_s, select_Mux_RF_A2_s, select_Mux_T1_s, select_Mux_ALU_A_s : std_logic;
	
begin

--Controller
Ctrl: controller port map (
								clk=>clk,
								IR=>IR_s, 
								cy=>cy_s, 
								z=>z_s, 
								wr_IR=>wr_IR_s, 
								wr_RF=>wr_RF_s, 
								wr_T1=>wr_T1_s, 
								wr_T2=>wr_T2_s, 
								wr_T3=>wr_T3_s, 
								wr_inc=>wr_inc_s, 
								wr_Mem=>wr_Mem_s, 
								wr_cy=>wr_cy_s, 
								wr_z=>wr_z_s, 
								select_Mux_RF_A3=>select_Mux_RF_A3_s, 
								select_Mux_RF_D3=>select_Mux_RF_D3_s, 
								dec=>dec_s,
								select_Mux_RF_A1=>select_Mux_RF_A1_s, 
								select_Mux_ALU_B=>select_Mux_ALU_B_s, 
								select_Mux_T2=>select_Mux_T2_s, 
								select_ALU=>select_ALU_s,
								select_Mux_Mem_A=>select_Mux_Mem_A_s, 
								select_Mux_Mem_D=>select_Mux_Mem_D_s, 
								select_Mux_RF_A2=>select_Mux_RF_A2_s, 
								select_Mux_T1=>select_Mux_T1_s, 
								select_Mux_ALU_A=>select_Mux_ALU_A_s
								);

--Datapath
DP: datapath port map (
							clk=>clk,
							IR_out=>IR_s, 
							cy_Op=>cy_s, 
							z_Op=>z_s, 
							wr_IR=>wr_IR_s, 
							wr_RF=>wr_RF_s, 
							wr_T1=>wr_T1_s, 
							wr_T2=>wr_T2_s, 
							wr_T3=>wr_T3_s, 
							wr_inc=>wr_inc_s, 
							wr_Mem=>wr_Mem_s, 
							wr_cy=>wr_cy_s, 
							wr_z=>wr_z_s, 
							select_Mux_RF_A3=>select_Mux_RF_A3_s, 
							select_Mux_RF_D3=>select_Mux_RF_D3_s, 
							dec=>dec_s,
							select_Mux_RF_A1=>select_Mux_RF_A1_s, 
							select_Mux_ALU_B=>select_Mux_ALU_B_s, 
							select_Mux_T2=>select_Mux_T2_s, 
							select_ALU=>select_ALU_s,
							select_Mux_Mem_A=>select_Mux_Mem_A_s, 
							select_Mux_Mem_D=>select_Mux_Mem_D_s, 
							select_Mux_RF_A2=>select_Mux_RF_A2_s, 
							select_Mux_T1=>select_Mux_T1_s, 
							select_Mux_ALU_A=>select_Mux_ALU_A_s
							);
							
end uParch;
