library ieee;
use ieee.std_logic_1164.all;

entity EXMEM is 
    port(
		clk : in std_logic;
		wr_EXMEM : in std_logic;
      EXMEM_inc, EXMEM_PC, EXMEM_RF_D1, EXMEM_RF_D2, EXMEM_ALU_C, EXMEM_SE6, EXMEM_SE9 : in std_logic_vector(15 downto 0);
		EXMEM_11_9, EXMEM_8_6, EXMEM_5_3, EXMEM_dec : in std_logic_vector(2 downto 0);
		EXMEM_8_0 : in std_logic_vector(8 downto 0);
		EXMEM_5_0 : in std_logic_vector(5 downto 0);
		EXMEM_cy, EXMEM_z : in std_logic;
		EXMEM_inc_Op, EXMEM_PC_Op, EXMEM_RF_D1_Op, EXMEM_RF_D2_Op, EXMEM_ALU_C_Op, EXMEM_SE6_Op, EXMEM_SE9_Op : out std_logic_vector(15 downto 0);
		EXMEM_11_9_Op, EXMEM_8_6_Op, EXMEM_5_3_Op, EXMEM_dec_Op : out std_logic_vector(2 downto 0);
		EXMEM_8_0_Op : out std_logic_vector(8 downto 0);
		EXMEM_5_0_Op : out std_logic_vector(5 downto 0);
		EXMEM_cy_Op, EXMEM_z_Op : out std_logic
		);
end EXMEM;

architecture arch of EXMEM is

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

inc: reg port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_inc, Op=>EXMEM_inc_Op);
PC: reg port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_PC, Op=>EXMEM_PC_Op);
RF_D1: reg port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_RF_D1, Op=>EXMEM_RF_D1_Op);
RF_D2: reg port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_RF_D2, Op=>EXMEM_RF_D2_Op);
ALU_C: reg port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_ALU_C, Op=>EXMEM_ALU_C_Op);
SE6: reg port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_SE6, Op=>EXMEM_SE6_Op);
SE9: reg port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_SE9, Op=>EXMEM_SE9_Op);
dec: reg3 port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_dec, Op=>EXMEM_dec_Op);
eleven_nine: reg3 port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_11_9, Op=>EXMEM_11_9_Op);
eight_six: reg3 port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_8_6, Op=>EXMEM_8_6_Op);
five_three: reg3 port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_5_3, Op=>EXMEM_5_3_Op);
eight_zero: reg9 port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_8_0, Op=>EXMEM_8_0_Op);
five_zero: reg6 port map (wr=>wr_EXMEM, clk=>clk, data=>EXMEM_5_0, Op=>EXMEM_5_0_Op);

end arch;