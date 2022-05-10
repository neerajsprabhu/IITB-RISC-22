library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard_JAL is
	port(
		match: in std_logic;
		indexout: in integer;
		EXMEM_opcode: in std_logic_vector(3 downto 0);
		
		history, haz_JAL: out std_logic;
		indexin: out integer
		);
end Hazard_JAL;

architecture h_jal of Hazard_JAL is
begin
	process(match, EXMEM_opcode)
	begin
		if EXMEM_opcode="1001" then
			if match='1' then
				haz_JAL<='0';
				history<='1';
			else
				haz_JAL<='1';
				history<='1';
			end if;
		end if;
	end process;
	indexin<=indexout;
end h_jal;