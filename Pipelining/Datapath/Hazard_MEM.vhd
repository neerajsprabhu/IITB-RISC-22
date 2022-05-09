library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard_MEM is
    port (
        EXMEM_opcode_Op: in std_logic_vector(3 downto 0);
		  EXMEM_11_9_Op: in std_logic_vector(2 downto 0);
		  DMem_Dout: in std_logic_vector(15 downto 0);
		  
        haz_MEM: out std_logic;
		  jump_MEM: out std_logic_vector(15 downto 0)
    ) ;
end Hazard_MEM;
architecture behavior of Hazard_MEM is

begin
	process(EXMEM_opcode_Op,EXMEM_11_9_Op,DMem_Dout)
	begin
		if(EXMEM_opcode_Op="0111" and EXMEM_11_9_Op="111") then --LW R7,Rx,Imm6
			haz_MEM<='1';
			jump_MEM<=DMem_Dout;
		else
			haz_MEM<='0';
			jump_MEM<="0000000000000000";
		end if;
	end process;
end behavior;