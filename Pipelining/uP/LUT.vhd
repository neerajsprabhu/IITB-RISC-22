library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity BranchLUT is
	port(
		clk, history: in std_logic;
		indexin: in integer;
		PC, EXMEM_PC_Op, IDRR_PC_Op, RREX_PC_Op: in std_logic_vector(15 downto 0);
		ALU2_C, RF_D2_Op, ALU_C: in std_logic_vector(15 downto 0);
		EXMEM_opcode, IDRR_opcode, RREX_opcode: in std_logic_vector(3 downto 0);
		Aout: out std_logic_vector(15 downto 0);
		match: out std_logic;
		indexout: out integer
	);
	
end entity BranchLUT;
	
architecture arch of BranchLUT is
	type column is array (0 to 31) of std_logic_vector(15 downto 0);
	type column1 is array (0 to 31) of std_logic;
	signal PC_stored, A_stored: column;
	signal historybit: column1:= (others=>'0');
	signal i, tj: integer:= 0;
	signal tmatch: std_logic:='0';
	
	begin
		process(clk, EXMEM_opcode, IDRR_opcode, RREX_opcode, i, EXMEM_PC_Op, IDRR_PC_Op, RREX_PC_Op, ALU2_C, RF_D2_Op, ALU_C)
		variable inext: integer;
		
		begin
			
			if(EXMEM_opcode="1000" or EXMEM_opcode="1001") then
				PC_stored(i) <= EXMEM_PC_Op;
				A_stored(i) <= ALU2_C;
				inext:= i+1;
			elsif(IDRR_opcode="1010") then
				PC_stored(i) <= IDRR_PC_Op;
				A_stored(i) <= RF_D2_Op;
				inext:= i+1;
			elsif(RREX_opcode="1011") then
				PC_stored(i) <= RREX_PC_Op;
				A_stored(i) <= ALU_C;
				inext:= i+1;
			end if;
			
			if rising_edge(clk) then
				i <= inext;
			end if;
			
		end process;
		
		process(PC, PC_stored, A_stored, historybit, history, indexin, tmatch, tj)
		begin
			
			tmatch <= '0';
			historybit(indexin) <= history;
			
			check: for j in 0 to 31 loop 
						if(PC_stored(j) = PC) then
							tj<=j;
							if(historybit(j)='1') then
								Aout <= A_stored(j);
								tmatch <= '1';
							end if;
						end if;
			end loop check;
			
			match <= tmatch;
			indexout <= tj;
			
		end process;
end arch;