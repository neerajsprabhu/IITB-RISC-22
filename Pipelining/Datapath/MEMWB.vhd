library ieee;
use ieee.std_logic_1164.all;

entity MEMWB is 
    port(
		clk : in std_logic;
		wr_MEMWB : in std_logic;
      MEMWB_inc, MEMWB_PC, MEMWB_RF_D2, MEMWB_ALU_C, MEMWB_ALU2_C, MEMWB_DMem_D : in std_logic_vector(15 downto 0);
		MEMWB_11_9, MEMWB_8_6, MEMWB_5_3, MEMWB_dec : in std_logic_vector(2 downto 0);
		MEMWB_8_0 : in std_logic_vector(8 downto 0);
		MEMWB_5_0 : in std_logic_vector(5 downto 0);
		MEMWB_cy, MEMWB_z : in std_logic;
		MEMWB_inc_Op, MEMWB_PC_Op, MEMWB_RF_D2_Op, MEMWB_ALU_C_Op, MEMWB_ALU2_C_Op, MEMWB_DMem_D_Op : out std_logic_vector(15 downto 0);
		MEMWB_11_9_Op, MEMWB_8_6_Op, MEMWB_5_3_Op, MEMWB_dec_Op : out std_logic_vector(2 downto 0);
		MEMWB_8_0_Op : out std_logic_vector(8 downto 0);
		MEMWB_5_0_Op : out std_logic_vector(5 downto 0);
		MEMWB_cy_Op, MEMWB_z_Op : out std_logic
		);
end MEMWB;

architecture arch of MEMWB is

	--3-bit Register
	component reg3 is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic_vector(2 downto 0);
			Op: out std_logic_vector(2 downto 0)
		);
	end component;
	
	--6-bit Register
	component reg6 is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic_vector(5 downto 0);
			Op: out std_logic_vector(5 downto 0)
		);
	end component;
	
	--9-bit Register
	component reg9 is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic_vector(8 downto 0);
			Op: out std_logic_vector(8 downto 0)
		);
	end component;
	
	--16-bit Register
	component reg is
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic_vector(15 downto 0);
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
		
begin

inc: reg port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_inc, Op=>MEMWB_inc_Op);
PC: reg port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_PC, Op=>MEMWB_PC_Op);
RF_D2: reg port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_RF_D2, Op=>MEMWB_RF_D2_Op);
ALU_C: reg port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_ALU_C, Op=>MEMWB_ALU_C_Op);
ALU2_C: reg port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_ALU2_C, Op=>MEMWB_ALU2_C_Op);
DMem_D: reg port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_DMem_D, Op=>MEMWB_DMem_D_Op);
dec: reg3 port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_dec, Op=>MEMWB_dec_Op);
eleven_nine: reg3 port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_11_9, Op=>MEMWB_11_9_Op);
eight_six: reg3 port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_8_6, Op=>MEMWB_8_6_Op);
five_three: reg3 port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_5_3, Op=>MEMWB_5_3_Op);
eight_zero: reg9 port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_8_0, Op=>MEMWB_8_0_Op);
five_zero: reg6 port map (wr=>wr_MEMWB, clk=>clk, data=>MEMWB_5_0, Op=>MEMWB_5_0_Op);

end arch;