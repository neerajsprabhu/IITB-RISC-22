library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard_WB is
    port (
        MEMWB_opcode_Op: in std_logic_vector(3 downto 0);
		  MEMWB_11_9_Op: in std_logic_vector(2 downto 0);
		  
        haz_WB: out std_logic
    ) ;
end Hazard_WB;
architecture behavior of Hazard_WB is

begin
	process(MEMWB_opcode_Op,MEMWB_11_9_Op)
	begin
		if(MEMWB_opcode_Op="0100" and MEMWB_11_9_Op="111") then --LHI R7,Imm9
			haz_WB<='1';
		else
			haz_WB<='0';
		end if;
	end process;
end behavior;