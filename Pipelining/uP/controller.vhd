library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity controller is
    port(
		IDRR_opcode_Op, RREX_opcode_Op, EXMEM_opcode_Op, MEMWB_opcode_Op : in std_logic_vector(3 downto 0);
		cy, z : in std_logic;
		clk : in std_logic;
		haz_EX, haz_MEM, haz_WB, haz_BEQ, haz_JAL, haz_JLR, haz_JRI : in std_logic;
		IDRR_5_0_Op, RREX_5_0_Op : in std_logic_vector(5 downto 0);
		IDRR_11_9, IDRR_8_6, RREX_11_9: in std_logic_vector(2 downto 0);
		
		wr_PC, wr_IR, wr_RF, wr_RF_r7, wr_inc, wr_DMem, wr_cy, wr_z : out std_logic;
		wr_IFID, wr_IDRR, wr_RREX, wr_EXMEM, wr_MEMWB : out std_logic;
		clr_IFID, clr_IDRR, clr_RREX, clr_EXMEM, clr_MEMWB : out std_logic;
		select_Mux_RF_D3, dec, select_Mux_PC  : out std_logic_vector(2 downto 0);
		select_Mux_LUT, select_Mux_ALU_B, select_Mux_ALU2_B, select_ALU, select_ALU2, select_Mux_RF_A3: out std_logic_vector(1 downto 0);
		select_Mux_ALU_A, select_Mux_ALU2_A, select_Mux_RF_A1, select_Mux_RF_A2, select_Mux_DMem_A, select_Mux_DMem_Din : out std_logic;
		select_Mux_LMSM : out std_logic;
		cy_in, z_in : out std_logic
		);
end controller;

architecture arch of controller is

	shared variable i: integer:=0;
	
begin
	
	process(IDRR_opcode_Op, RREX_opcode_Op, EXMEM_opcode_Op, MEMWB_opcode_Op, IDRR_11_9, RREX_11_9, IDRR_8_6, IDRR_5_0_Op, RREX_5_0_Op, cy, z, haz_EX, haz_MEM, haz_WB, haz_BEQ, haz_JAL, haz_JLR, haz_JRI)
	begin
		
		--default values
		wr_PC<='0';
		wr_IR<='0';
		wr_RF<='0';
		wr_RF_r7<='0';
		wr_inc<='0';
		wr_DMem<='0';
		wr_cy<='0';
		wr_z<='0';
		
		select_Mux_RF_D3<="000";
		dec<="000";
		
		select_Mux_ALU_B<="00";
		select_Mux_ALU2_B<="00";
		select_ALU<="00";
		select_ALU2<="00";
		select_Mux_RF_A3<="00";
		select_Mux_PC<="000";
		
		select_Mux_ALU_A<='0';
		select_Mux_ALU2_A<='0';
		select_Mux_RF_A1<='0';
		select_Mux_RF_A2<='0';
		select_Mux_DMem_A<='0';
		select_Mux_DMem_Din<='0';
		select_Mux_LMSM<='0';
		
		select_Mux_LUT<="00";
		
		cy_in<='0';
		z_in<='0';
		
		if ((IDRR_opcode_Op/="1100" and IDRR_opcode_Op/="1101" and haz_EX='0' and haz_MEM='0' and haz_WB='0' and haz_BEQ='0' and haz_JAL='0' and haz_JLR='0' and haz_JRI='0')) then
			--no hazard detected
			--always set
			wr_PC<='1';
			wr_inc<='1';
			wr_IFID<='1';
			
			wr_IR<='1';
			wr_IDRR<='1';
			
			wr_RF_r7<='1';
			
			wr_RREX<='1';
			
			case IDRR_opcode_Op is
			
				when "0001" => --ADD/ADC/ADZ/ADL
					select_Mux_RF_A1<='0';
					select_Mux_RF_A2<='0';
					if (IDRR_5_0_Op(2 downto 0)="000" or (IDRR_5_0_Op(2 downto 0)="010" and cy='1') or (IDRR_5_0_Op(2 downto 0)="001" and z='1') or IDRR_5_0_Op(2 downto 0)="011") then
						wr_RREX<='1';
					else
						wr_RREX<='0';
					end if;
						
				when "0010" => --NDU/NDC/NDZ
					select_Mux_RF_A1<='0';
					select_Mux_RF_A2<='0';
					if (IDRR_5_0_Op(2 downto 0)="000" or (IDRR_5_0_Op(2 downto 0)="010" and cy='1') or (IDRR_5_0_Op(2 downto 0)="001" and z='1')) then
						wr_RREX<='1';
					else
						wr_RREX<='0';
					end if;
					
				when "0000" => --ADI
					select_Mux_RF_A1<='0';
				
				when "0100" => --LHI
					null;
					
				when "0111" => --LW
					select_Mux_RF_A1<='1';
					
				when "0101" => --SW
					select_Mux_RF_A1<='0';
					select_Mux_RF_A2<='0';
					
				when "1100" => --LM
					select_Mux_RF_A1<='0';
				
				when "1101" => --SM
					select_Mux_RF_A1<='0';
					select_Mux_RF_A2<='1';
				
				when "1000" => --BEQ
					select_Mux_RF_A1<='0';
					select_Mux_RF_A2<='0';
					
				when "1001" => --JAL
					null;
					
				when "1010" => --JLR
					select_Mux_RF_A2<='0';
					
				when "1011" => --JRI
					select_Mux_RF_A1<='0';
					
				when others=>
					null;
					
			end case;
					
			wr_EXMEM<='1';
			
			case RREX_opcode_Op is
			
				when "0001" => --ADD/ADC/ADZ/ADL
					select_Mux_ALU_A<='0';
					if (RREX_5_0_Op(2 downto 0)="000" or (RREX_5_0_Op(2 downto 0)="010" and cy='1') or (RREX_5_0_Op(2 downto 0)="001" and z='1')) then
						select_Mux_ALU_B<="00";
						select_ALU<="01";
						wr_cy<='1';
						wr_z<='1';
					elsif (RREX_5_0_Op(2 downto 0)="011") then
						select_Mux_ALU_B<="01";
						select_ALU<="01";
						wr_cy<='1';
						wr_z<='1';
					else
						wr_EXMEM<='0';
					end if;
						
				when "0010" => --NDU/NDC/NDZ
					select_Mux_ALU_A<='0';
					if (RREX_5_0_Op(2 downto 0)="000" or (RREX_5_0_Op(2 downto 0)="010" and cy='1') or (RREX_5_0_Op(2 downto 0)="001" and z='1')) then
						select_Mux_ALU_B<="00";
						select_ALU<="10";
						wr_z<='1';
					elsif (RREX_5_0_Op(2 downto 0)="011") then
						select_Mux_ALU_B<="01";
						select_ALU<="10";
						wr_z<='1';
					else
						wr_EXMEM<='0';
					end if;
					
				when "0000" => --ADI
					select_Mux_ALU_A<='0';
					select_Mux_ALU_B<="10";
					select_ALU<="01";
					wr_cy<='1';
					wr_z<='1';
				
				when "0100" => --LHI
					null;
					
				when "0111" => --LW
					select_Mux_ALU_A<='0';
					select_Mux_ALU_B<="10";
					select_ALU<="01";
					
				when "0101" => --SW
					select_Mux_ALU_A<='1';
					select_Mux_ALU_B<="10";
					select_ALU<="01";
					
				--when "1100" => --LM
				--	select_Mux_RF_A1<='0';
				
				--when "1101" => --SM
				--	select_Mux_RF_A1<='0';
				--	select_Mux_RF_A2<='1';
				
				when "1000" => --BEQ
					select_Mux_ALU_A<='0';
					select_Mux_ALU_B<="00";
					select_ALU<="11";
					
				when "1001" => --JAL
					null;
					
				when "1010" => --JLR
					null;
					
				when "1011" => --JRI
					select_Mux_ALU_A<='0';
					select_Mux_ALU_B<="11";
					select_ALU<="01";
					
				when others=>
					null;
					
			end case;
					
			wr_MEMWB<='1';
			
			case EXMEM_opcode_Op is
			
				when "0001" => --ADD/ADC/ADZ/ADL
					null;
						
				when "0010" => --NDU/NDC/NDZ
					null;
					
				when "0000" => --ADI
					null;
				
				when "0100" => --LHI
					null;
					
				when "0111" => --LW
					select_Mux_DMem_A<='0';
					
				when "0101" => --SW
					select_Mux_DMem_A<='0';
					select_Mux_DMem_Din<='0';
					wr_DMem<='1';
					
				--when "1100" => --LM
				--	select_Mux_RF_A1<='0';
				
				--when "1101" => --SM
				--	select_Mux_RF_A1<='0';
				--	select_Mux_RF_A2<='1';
				
				when "1000" => --BEQ
					select_Mux_ALU2_A<='1';
					select_Mux_ALU2_B<="01";
					select_ALU2<="01";
					
				when "1001" => --JAL
					select_Mux_ALU2_A<='1';
					select_Mux_ALU2_B<="10";
					select_ALU2<="01";
					
				when "1010" => --JLR
					null;
					
				when "1011" => --JRI
					null;
					
				when others=>
					null;
					
			end case;
					
			case MEMWB_opcode_Op is
			
				when "0001" => --ADD/ADC/ADZ/ADL
					select_Mux_RF_A3<="00";
					select_Mux_RF_D3<="000";
					wr_RF<='1';
						
				when "0010" => --NDU/NDC/NDZ
					select_Mux_RF_A3<="00";
					select_Mux_RF_D3<="000";
					wr_RF<='1';
					
				when "0000" => --ADI
					select_Mux_RF_A3<="01";
					select_Mux_RF_D3<="000";
					wr_RF<='1';
				
				when "0100" => --LHI
					select_Mux_RF_A3<="10";
					select_Mux_RF_D3<="001";
					wr_RF<='1';
					
				when "0111" => --LW
					select_Mux_RF_A3<="10";
					select_Mux_RF_D3<="010";
					wr_RF<='1';
					
				when "0101" => --SW
					null;
					
				--when "1100" => --LM
				--	select_Mux_RF_A1<='0';
				
				--when "1101" => --SM
				--	select_Mux_RF_A1<='0';
				--	select_Mux_RF_A2<='1';
				
				when "1000" => --BEQ
					null;
					
				when "1001" => --JAL
					select_Mux_RF_A3<="10";
					select_Mux_RF_D3<="011";
					wr_RF<='1';
					
				when "1010" => --JLR
					select_Mux_RF_A3<="10";
					select_Mux_RF_D3<="011";
					wr_RF<='1';
					
				when "1011" => --JRI
					null;
					
				when others=>
					null;
					
			end case;
			
		elsif (haz_BEQ='1') then 
			select_Mux_PC<="001";
			clr_IFID<='1';
			clr_IDRR<='1';
			clr_RREX<='1';
			select_Mux_LUT<="00";
			
		elsif (haz_JAL='1') then 
			select_Mux_PC<="001";
			clr_IFID<='1';
			clr_IDRR<='1';
			clr_RREX<='1';
			select_Mux_LUT<="01";
			
		elsif (haz_JRI='1') then 
			select_Mux_PC<="011";
			clr_IFID<='1';
			clr_IDRR<='1';
			select_Mux_LUT<="10";
			
		elsif (haz_JLR='1') then 
			select_Mux_PC<="010";
			clr_IFID<='1';
			select_Mux_LUT<="11";
			
		elsif (haz_WB='1') then 
			select_Mux_PC<="100";
			
		elsif (haz_MEM='1') then 
			select_Mux_PC<="101";
			
		elsif (haz_EX='1') then 
			select_Mux_PC<="011";
			
		elsif (((IDRR_opcode_Op="0001" or IDRR_opcode_Op="0010") and RREX_opcode_Op="0111") and (IDRR_11_9=RREX_11_9 or IDRR_8_6=RREX_11_9)) then
			wr_IFID<='0';
			wr_IDRR<='0';
			wr_RREX<='0';
			wr_PC<='0';
			wr_IR<='0';
			wr_inc<='0';
			clr_RREX<='1';
			
		elsif (IDRR_opcode_Op="1100") then
			select_Mux_PC<="000";
			dec<=std_logic_vector(to_unsigned(i, 3));
			if i=0 then
				wr_IDRR<='0';
				wr_IFID<='0';
				wr_PC<='0';
				wr_inc<='0';
				wr_IR<='0';
				select_Mux_LMSM<='0';
			elsif i=7 then
				wr_IDRR<='1';
				wr_IFID<='1';
				wr_PC<='1';
				wr_inc<='1';
				wr_IR<='1';
				select_Mux_LMSM<='0';
			else
				wr_IDRR<='0';
				wr_IFID<='0';
				wr_PC<='0';
				wr_inc<='0';
				wr_IR<='0';
				select_Mux_LMSM<='1';
			end if;
			
			wr_RREX<='1';
			wr_EXMEM<='1';
			wr_MEMWB<='1';
			select_Mux_RF_D3<="010";
			select_Mux_RF_A3<="11";	
			select_Mux_DMem_A<='1';
			
		elsif (IDRR_opcode_Op="1101") then
			select_Mux_PC<="000";
			dec<=std_logic_vector(to_unsigned(i, 3));
			if i=0 then
				wr_IDRR<='0';
				wr_IFID<='0';
				wr_PC<='0';
				wr_inc<='0';
				wr_IR<='0';
				select_Mux_LMSM<='0';
			elsif i=7 then
				wr_IDRR<='1';
				wr_IFID<='1';
				wr_PC<='1';
				wr_inc<='1';
				wr_IR<='1';
				select_Mux_LMSM<='0';
			else
				wr_IDRR<='0';
				wr_IFID<='0';
				wr_PC<='0';
				wr_inc<='0';
				wr_IR<='0';
				select_Mux_LMSM<='1';
			end if;
			
			wr_RREX<='1';
			wr_EXMEM<='1';
			wr_MEMWB<='1';
			wr_DMem<='1';
			select_Mux_RF_A2<='1';
			select_Mux_DMem_A<='1';
			select_Mux_DMem_Din<='1';
			
		end if;
				
		
		cy_in<=cy;
		z_in<=z;
		
	end process; --stateoutput
	
	process(clk, IDRR_opcode_Op)
	begin
		if rising_edge(clk) then
			if IDRR_opcode_Op="1100" or IDRR_opcode_Op="1101" then
				if i=8 then
					i:=0;
				else
					i:=i+1;
				end if;
			end if;
		end if;
	end process;
end arch;