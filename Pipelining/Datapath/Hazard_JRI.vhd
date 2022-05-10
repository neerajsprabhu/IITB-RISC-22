library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard_JRI is
	port(
		match, indexout: in std_logic;
		RREX_opcode: in std_logic_vector(3 downto 0);
		ALU_C: in std_logic_vector(15 downto 0);
		IDRR_PC_Op: in std_logic_vector(15 downto 0);
		
		history, haz_JRI, indexin: out std_logic
		);
end Hazard_JRI;

architecture h_jri of Hazard_JRI is
begin
	process(match, RREX_opcode, ALU_C, IDRR_PC_Op)
	begin
		if RREX_opcode="1011" then
			if match='1' then
				history<='1';
				if ALU_C=IDRR_PC_Op then
					haz_JRI<='0';
				else
					haz_JRI<='1';
				end if;
			else
				haz_JRI<='1';
				history<='0';
			end if;
		end if;
	end process;
	indexin<=indexout;
end h_jri;