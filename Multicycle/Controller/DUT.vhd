library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(18 downto 0);
       	output_vector: out std_logic_vector(30 downto 0));
end entity;

architecture DutWrap of DUT is
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
begin


   add_instance: controller
			port map (
					IR=>input_vector(18 downto 3),
					cy=>input_vector(2),
					z=>input_vector(1),
					clk=>input_vector(0),
			
			      wr_IR=>output_vector(8), 
					wr_RF=>output_vector(12), 
					wr_T1=>output_vector(11), 
					wr_T2=>output_vector(10), 
					wr_T3=>output_vector(9), 
					wr_inc=>output_vector(7), 
					wr_Mem=>output_vector(13), 
					wr_cy=>output_vector(6), 
					wr_z=>output_vector(5),
					select_Mux_RF_A3=>output_vector(26 downto 24), 
					select_Mux_RF_D3=>output_vector(23 downto 21), 
					dec=>output_vector(2 downto 0),
					select_Mux_RF_A1=>output_vector(29 downto 28), 
					select_Mux_ALU_B=>output_vector(16 downto 15), 
					select_Mux_T2=>output_vector(19 downto 18), 
					select_ALU=>output_vector(4 downto 3),
					select_Mux_Mem_A=>output_vector(30), 
					select_Mux_Mem_D=>output_vector(14), 
					select_Mux_RF_A2=>output_vector(27), 
					select_Mux_T1=>output_vector(20), 
					select_Mux_ALU_A=>output_vector(17)
					);
end DutWrap;