library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fwd_logic is
	port(
			IDRR_opcode, RREX_opcode, EXMEM_opcode, MEMWB_opcode: in std_logic_vector(3 downto 0);
			IDRR_11_9, IDRR_8_6, RREX_8_6, RREX_5_3, EXMEM_11_9, MEMWB_11_9, MEMWB_8_6, MEMWB_5_3: in std_logic_vector(2 downto 0);
			select_Mux_forward1, select_Mux_forward2: out std_logic_vector(1 downto 0)
			);
end fwd_logic;

architecture fb of fwd_logic is
begin
	forwarding: process(IDRR_opcode, RREX_opcode, EXMEM_opcode, MEMWB_opcode, IDRR_11_9, IDRR_8_6, RREX_8_6, RREX_5_3, EXMEM_11_9, MEMWB_11_9, MEMWB_8_6, MEMWB_5_3)
					begin
						if(((IDRR_11_9=RREX_5_3) and (RREX_opcode="0001" or RREX_opcode="0010")) or ((IDRR_11_9=RREX_8_6) and (RREX_opcode="0000"))) then
							select_Mux_forward1<="01";
						elsif ((IDRR_11_9=EXMEM_11_9) and (EXMEM_opcode="0111")) then
							select_Mux_forward1<="10";
						elsif(((IDRR_11_9=MEMWB_11_9) and (MEMWB_opcode="0111" or MEMWB_opcode="1001" or MEMWB_opcode="1010" or MEMWB_opcode="0100")) or ((IDRR_11_9=MEMWB_8_6) and (MEMWB_opcode="0000")) or ((IDRR_11_9=MEMWB_5_3) and (MEMWB_opcode="0001" or MEMWB_opcode="0010"))) then
							select_Mux_forward1<="11";
						end if;
						if(((IDRR_8_6=RREX_5_3) and (RREX_opcode="0001" or RREX_opcode="0010")) or ((IDRR_8_6=RREX_8_6) and (RREX_opcode="0000"))) then
							select_Mux_forward2<="01";
						elsif((IDRR_8_6=EXMEM_11_9) and (EXMEM_opcode="0111")) then
							select_Mux_forward2<="10";
						elsif(((IDRR_8_6=MEMWB_11_9) and (MEMWB_opcode="0111" or MEMWB_opcode="1001" or MEMWB_opcode="1010" or MEMWB_opcode="0100")) or ((IDRR_8_6=MEMWB_8_6) and (MEMWB_opcode="0000")) or ((IDRR_8_6=MEMWB_5_3) and (MEMWB_opcode="0001" or MEMWB_opcode="0010"))) then
							select_Mux_forward2<="11";
						end if;
					end process;
end fb;			