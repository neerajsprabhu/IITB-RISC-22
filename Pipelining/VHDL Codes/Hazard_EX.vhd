library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Hazard_EX is
    port (
        RREX_opcode_Op: in std_logic_vector(3 downto 0);
		  RREX_11_9_Op, RREX_8_6_Op, RREX_5_3_Op, RREX_2_0_Op: in std_logic_vector(2 downto 0);
		  cy_in, z_in: in std_logic;
		  
        haz_EX: out std_logic
    ) ;
end Hazard_EX;
architecture behavior of Hazard_EX is

begin
	process(RREX_opcode_Op,RREX_11_9_Op,RREX_8_6_Op,RREX_5_3_Op,RREX_2_0_Op,cy_in,z_in)
	begin
		if(RREX_opcode_Op="0001" and RREX_5_3_Op="111" and (RREX_2_0_Op="000" or (RREX_2_0_Op="010" and cy_in='1') or (RREX_2_0_Op="001" and z_in='1') or RREX_2_0_Op="011")) then --ADD/ADC/ADZ/ADL R7,RA,RB,condition
			haz_EX<='1';
		elsif(RREX_opcode_Op="0000" and RREX_8_6_Op="111") then --ADI RA,R7,Imm6
			haz_EX<='1';
		elsif(RREX_opcode_Op="0010" and RREX_5_3_Op="111" and (RREX_2_0_Op="000" or (RREX_2_0_Op="010" and cy_in='1') or (RREX_2_0_Op="001" and z_in='1'))) then --NDU/NDC/NDZ R7,RA,RB,condition
			haz_EX<='1';
		else
			haz_EX<='0';
		end if;
	end process;
end behavior;