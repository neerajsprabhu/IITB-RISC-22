library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity datapath is
    port(
		wr_IR, wr_RF, wr_T1, wr_T2, wr_T3, wr_inc, wr_Mem, wr_cy, wr_z : in std_logic;
		select_Mux_RF_A3, select_Mux_RF_D3, dec : in std_logic_vector(2 downto 0);
		select_Mux_RF_A1, select_Mux_ALU_B, select_Mux_T2, select_ALU : in std_logic_vector(1 downto 0);
		select_Mux_Mem_A, select_Mux_Mem_D, select_Mux_T1, select_Mux_ALU_A, select_Mux_RF_A2 : in std_logic;
		clk : in std_logic;
		
		cy_Op, z_Op : out std_logic;
		IR_out : out std_logic_vector(15 downto 0)
		);
end datapath;

architecture arch of datapath is
	
	--1-bit Register
	component reg1 is 
		port(
			wr: in std_logic;
			clk: in std_logic;
			data: in std_logic;
			Op: out std_logic
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
	
	--Register Bank
	component register_bank is
		port(
			Add1: in std_logic_vector(2 downto 0);
			Add2: in std_logic_vector(2 downto 0);
			Add3: in std_logic_vector(2 downto 0);
			D3: in std_logic_vector(15 downto 0);
			wr: in std_logic;
			clk: in std_logic;
			D1: out std_logic_vector(15 downto 0);
			D2: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--Memory
	component memory is
		port(
			wr: in std_logic;
			A: in std_logic_vector(15 downto 0);
			Din: in std_logic_vector(15 downto 0);
			clk: in std_logic;
			Dout: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--ALU
	component alu is
		port (
			A: in std_logic_vector(15 downto 0);
			B: in std_logic_vector(15 downto 0);
			S: in std_logic_vector(1 downto 0);
			--clk: in std_logic;
			Op: out std_logic_vector(15 downto 0);
			carry: out std_logic;
			zero: out std_logic
		);
	end component;
	
	--Incrementer
	component incr is
		port (
			A: in std_logic_vector(15 downto 0);
			wr: in std_logic;
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--Sign Extender-6
	component bitextender6 is
		port (
			A: in std_logic_vector(5 downto 0);
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--Sign Extender-9
	component bitextender9 is
		port (
			A: in std_logic_vector(8 downto 0);
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--1-bit Shifter
	component bit1shift is
		port(
			A: in std_logic_vector(15 downto 0);
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--7-bit Shifter
	component bit7shift is
		port(
			A: in std_logic_vector(8 downto 0);
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--Mux 2x1 3-bit
	component mux21_3 is
		port (
			A0: in std_logic_vector(2 downto 0);
			A1: in std_logic_vector(2 downto 0);
			S: in std_logic;
			Op: out std_logic_vector(2 downto 0)
		);
	end component;

	--Mux 2x1
	component mux21 is
		port(
			A0: in std_logic_vector(15 downto 0);
			A1: in std_logic_vector(15 downto 0);
			S: in std_logic;
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
  
	--Mux 4x1 3-bit
	component mux41_3 is
		port (
			A0: in std_logic_vector(2 downto 0);
			A1: in std_logic_vector(2 downto 0);
			A2: in std_logic_vector(2 downto 0);
			A3: in std_logic_vector(2 downto 0);
			S: in std_logic_vector(1 downto 0);
			Op: out std_logic_vector(2 downto 0)
		);
	end component;
  
	--Mux 4x1 16-bit
	component mux41 is
		port(
			A0: in std_logic_vector(15 downto 0);
			A1: in std_logic_vector(15 downto 0);
			A2: in std_logic_vector(15 downto 0);
			A3: in std_logic_vector(15 downto 0);
			S: in std_logic_vector(1 downto 0);
			Op: out std_logic_vector(15 downto 0)
		);
	end component;
	
	--Mux 8x1 3-bit
	component mux81_3 is
		port (
			A0: in std_logic_vector(2 downto 0);
			A1: in std_logic_vector(2 downto 0);
			A2: in std_logic_vector(2 downto 0);
			A3: in std_logic_vector(2 downto 0);
			A4: in std_logic_vector(2 downto 0);
			A5: in std_logic_vector(2 downto 0);
			A6: in std_logic_vector(2 downto 0);
			A7: in std_logic_vector(2 downto 0);
			S: in std_logic_vector(2 downto 0);
			Op: out std_logic_vector(2 downto 0)
		);
	end component;
	
	--Mux 8x1
	component mux81 is 
		port(
			A0: in std_logic_vector(15 downto 0);
			A1: in std_logic_vector(15 downto 0);
			A2: in std_logic_vector(15 downto 0);
			A3: in std_logic_vector(15 downto 0);
			A4: in std_logic_vector(15 downto 0);
			A5: in std_logic_vector(15 downto 0);
			A6: in std_logic_vector(15 downto 0);
			A7: in std_logic_vector(15 downto 0);
			S: in std_logic_vector(2 downto 0);
			Op: out std_logic_vector(15 downto 0)
		);
  end component;
  
  signal Mem_D, Mem_Dout_Op, IR_Op, RF_D3, RF_D1_Op, RF_D2_Op, S7_Op, S1_Op, T1, T1_Op, T2, T2_Op, T3_Op, inc_Op, ALU_A, ALU_B, ALU_C, SE6_Op, SE9_Op, Mem_A : std_logic_vector(15 downto 0); 
  signal RF_A1, RF_A2, RF_A3 : std_logic_vector(2 downto 0);
  signal cy, z : std_logic;

begin

--IR
IR: reg port map (wr=>wr_IR, clk=>clk, data=>Mem_Dout_Op, Op=>IR_Op);

--Mux_RF-A1
Mux_RF_A1: mux41_3 port map (A0=>"111", A1=>IR_Op(11 downto 9), A2=>IR_Op(8 downto 6), A3=>dec, S=>select_Mux_RF_A1, Op=>RF_A1);

--Mux_RF-A2
Mux_RF_A2: mux21_3 port map (A0=>IR_Op(8 downto 6), A1=>dec, S=>select_Mux_RF_A2, Op=>RF_A2);

--Mux_RF-A3
Mux_RF_A3: mux81_3 port map (A0=>"111", A1=>IR_Op(11 downto 9), A2=>IR_Op(8 downto 6), A3=> IR_Op(5 downto 3), A4=>dec, A5=>"000", A6=>"000", A7=>"000", S=>select_Mux_RF_A3, Op=>RF_A3);

--7-bit Shifter
S7: bit7shift port map (A=>IR_Op(8 downto 0), Op=>S7_Op);

--Mux_RF-D3
Mux_RF_D3: mux81 port map (A0=>T1_Op, A1=>T2_Op, A2=>T3_Op, A3=>ALU_C, A4=>S7_Op, A5=>inc_Op, A6=>"0000000000000000", A7=>"0000000000000000", S=>select_Mux_RF_D3, Op=>RF_D3);

--RF
RF: register_bank port map (Add1=>RF_A1, Add2=>RF_A2, Add3=>RF_A3, D3=>RF_D3, wr=>wr_RF, clk=>clk, D1=>RF_D1_Op, D2=>RF_D2_Op);

--Mux_T1
Mux_T1: mux21 port map (A0=>RF_D1_Op, A1=>Mem_Dout_Op, S=>select_Mux_T1, Op=>T1);

--T1
T1_reg: reg port map (wr=>wr_T1, clk=>clk, data=>T1, Op=>T1_Op);

--Mux_T2
Mux_T2: mux41 port map (A0=>RF_D2_Op, A1=>Mem_Dout_Op, A2=>ALU_C, A3=>"0000000000000000", S=>select_Mux_T2, Op=>T2);

--T2
T2_reg: reg port map (wr=>wr_T2, clk=>clk, data=>T2, Op=>T2_Op);

--Incrementer
inc: incr port map (wr=>wr_inc, A=>T1_Op, Op=>inc_Op);

--T3
T3_reg: reg port map (wr=>wr_T3, clk=>clk, data=>inc_Op, Op=>T3_Op);

--Mux_ALU_A
Mux_ALU_A: mux21 port map (A0=>T1_Op, A1=>T2_Op, S=>select_Mux_ALU_A, Op=>ALU_A);

--1-bit Shifter
S1: bit1shift port map (A=>T2_Op, Op=>S1_Op);

--Mux_ALU_B
Mux_ALU_B: mux41 port map (A0=>T2_Op, A1=>S1_Op, A2=>SE6_Op, A3=>SE9_Op, S=>select_Mux_ALU_B, Op=>ALU_B);

--6-bit Sign Extender
SE6: bitextender6 port map (A=>IR_Op(5 downto 0), Op=>SE6_Op);

--9-bit Sign Extender
SE9: bitextender9 port map (A=>IR_Op(8 downto 0), Op=>SE9_Op);

--ALU
ALU_1: alu port map (A=>ALU_A, B=>ALU_B, S=>select_ALU, Op=>ALU_C, carry=>cy, zero=>z);

--Carry
carry: reg1 port map (wr=>wr_cy, clk=>clk, data=>cy, Op=>cy_Op);

--Zero
zero: reg1 port map (wr=>wr_z, clk=>clk, data=>z, Op=>z_Op);

--Mux_Mem_A
Mux_Mem_A: mux21 port map (A0=>T1_Op, A1=>T2_Op, S=>select_Mux_Mem_A, Op=>Mem_A);

--Mux_Mem_D
Mux_Mem_D: mux21 port map (A0=>T1_Op, A1=>T2_Op, S=>select_Mux_Mem_D, Op=>Mem_D);

--Memory
Memory_1: memory port map (wr=>wr_Mem, A=>Mem_A, Din=>Mem_D, clk=>clk, Dout=>Mem_Dout_Op);

IR_out<=IR_Op;

end arch;