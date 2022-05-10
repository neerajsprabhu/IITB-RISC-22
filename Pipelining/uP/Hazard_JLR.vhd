library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard_JLR is
	port(
		match: in std_logic;
		indexout: in integer;
		IDRR_opcode: in std_logic_vector(3 downto 0);
		RF_D2: in std_logic_vector(15 downto 0);
		IFID_PC_Op: in std_logic_vector(15 downto 0);
		
		history, haz_JLR: out std_logic;
		indexin: out integer
		);
end Hazard_JLR;

architecture h_jlr of Hazard_JLR is
begin
	process(match, IDRR_opcode, RF_D2, IFID_PC_Op)
	begin
		if IDRR_opcode="1000" then
			history<='1';
			if (match='1' and RF_D2=IFID_PC_Op) then
				haz_JLR<='0';
			else
				haz_JLR<='1';
			end if;
		end if;
	end process;
	indexin<=indexout;
end h_jlr;