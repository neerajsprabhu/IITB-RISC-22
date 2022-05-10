library ieee;
use ieee.std_logic_1164.all;

entity IDRR is 
    port(
		clk : in std_logic;
		wr_IDRR, IDRR_match : in std_logic;
		IDRR_indexout : in integer;
		IDRR_opcode : in std_logic_vector(3 downto 0);
      IDRR_inc, IDRR_PC : in std_logic_vector(15 downto 0);
		IDRR_11_9, IDRR_8_6, IDRR_5_3 : in std_logic_vector(2 downto 0);
		IDRR_8_0 : in std_logic_vector(8 downto 0);
		IDRR_5_0 : in std_logic_vector(5 downto 0);
		IDRR_opcode_Op : out std_logic_vector(3 downto 0);
		IDRR_inc_Op, IDRR_PC_Op : out std_logic_vector(15 downto 0);
		IDRR_11_9_Op, IDRR_8_6_Op, IDRR_5_3_Op : out std_logic_vector(2 downto 0);
		IDRR_8_0_Op : out std_logic_vector(8 downto 0);
		IDRR_5_0_Op : out std_logic_vector(5 downto 0);
		IDRR_indexout_Op : out integer;
		IDRR_match_Op : out std_logic
		);
end IDRR;

architecture arch of IDRR is

	--1-bit Register
	component reg1 is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic;
			Op: out std_logic
		);
	end component;

	--1-bit Register-Integer
	component reg1_int is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in integer;
			Op: out integer
		);
	end component;

	--3-bit Register
	component reg3 is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic_vector(2 downto 0);
			Op: out std_logic_vector(2 downto 0)
		);
	end component;
	
	--4-bit Register
	component reg4 is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic_vector(3 downto 0);
			Op: out std_logic_vector(3 downto 0)
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

opcode: reg4 port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_opcode, Op=>IDRR_opcode_Op);
inc: reg port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_inc, Op=>IDRR_inc_Op);
PC: reg port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_PC, Op=>IDRR_PC_Op);
eleven_nine: reg3 port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_11_9, Op=>IDRR_11_9_Op);
eight_six: reg3 port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_8_6, Op=>IDRR_8_6_Op);
five_three: reg3 port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_5_3, Op=>IDRR_5_3_Op);
eight_zero: reg9 port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_8_0, Op=>IDRR_8_0_Op);
five_zero: reg6 port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_5_0, Op=>IDRR_5_0_Op);
match: reg1 port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_match, Op=>IDRR_match_Op);
indexout: reg1_int port map (wr=>wr_IDRR, clk=>clk, data=>IDRR_indexout, Op=>IDRR_indexout_Op);

end arch;