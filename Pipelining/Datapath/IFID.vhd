library ieee;
use ieee.std_logic_1164.all;

entity IFID is 
    port(
			clk : in std_logic;
			wr_IFID : in std_logic;
			IFID_indexout : in integer;
			IFID_inc, IFID_PC, IFID_IMem : in std_logic_vector(15 downto 0);
			IFID_inc_Op, IFID_PC_Op, IFID_IMem_Op : out std_logic_vector(15 downto 0);
			IFID_indexout_Op : out integer
			);
end IFID;

architecture arch of IFID is

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

inc: reg port map (wr=>wr_IFID, clk=>clk, data=>IFID_inc, Op=>IFID_inc_Op);
PC: reg port map (wr=>wr_IFID, clk=>clk, data=>IFID_PC, Op=>IFID_PC_Op);
IMem: reg port map (wr=>wr_IFID, clk=>clk, data=>IFID_IMem, Op=>IFID_IMem_Op);
indexout: reg1_int port map (wr=>wr_IFID, clk=>clk, data=>IFID_indexout, Op=>IFID_indexout_Op);

end arch;