library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity controller is
    port(
		IR : in std_logic_vector(15 downto 0);
		cy, z : in std_logic;
		clk : in std_logic;
		
		wr_IR, wr_RF, wr_T1, wr_T2, wr_T3, wr_inc, wr_Mem, wr_cy, wr_z : out std_logic;
		select_Mux_RF_A3, select_Mux_RF_D3, dec : out std_logic_vector(2 downto 0);
		select_Mux_RF_A1, select_Mux_ALU_B, select_Mux_T2, select_ALU : out std_logic_vector(1 downto 0);
		select_Mux_Mem_A, select_Mux_Mem_D, select_Mux_RF_A2, select_Mux_T1, select_Mux_ALU_A : out std_logic
		);
end controller;

architecture arch of controller is

	--defining all the required states
	type fsm_state is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, S17, S18, S19, S20, S21, S22, S23, S24);
	signal state, nstate : fsm_state;
	shared variable i: integer;
	
begin
	
	statechange : process(clk, nstate)
	begin
		if (clk'event and clk = '1') then
			state <= nstate;
		end if;
	end process; --statechange
	
	stateoutput : process(IR, state)
	
	begin
		
		wr_IR<='0';
		wr_RF<='0';
		wr_T1<='0';
		wr_T2<='0';
		wr_T3<='0';
		wr_inc<='0';
		wr_Mem<='0';
		wr_cy<='0';
		wr_z<='0';
		
		select_Mux_RF_A3<="000";
		select_Mux_RF_D3<="000";
		dec<="000";
		
		select_Mux_RF_A1<="00";
		select_Mux_ALU_B<="00";
		select_Mux_T2<="00";
		select_ALU<="00";
		
		select_Mux_Mem_A<='0';
		select_Mux_Mem_D<='0';
		select_Mux_RF_A2<='0';
		select_Mux_T1<='0';
		select_Mux_ALU_A<='0';
		
		case state is
		
			when S0=>
				select_Mux_RF_A1<="00";
				select_Mux_T1<='0';
				wr_T1<='0';
			
			when S1=>
				select_Mux_Mem_A<='0';
				wr_IR<='1';
			
			when S2=>
				wr_inc<='1';
				wr_T3<='1';
				select_Mux_RF_D3<="101";
				select_Mux_RF_A3<="000";
				wr_RF<='1';
			
			when S3=>
				select_Mux_RF_A1<="01";
				wr_T1<='1';
				wr_T2<='1';
				
			when S4=>
				select_Mux_ALU_A<='0';
				select_Mux_ALU_B<="00";
				select_Mux_RF_A3<="011";
				
				if (IR(13 downto 12)="01") then
					case IR(1 downto 0) is
					
						when "00"=>
							select_ALU<="01";
							wr_cy<='1';
							wr_z<='1';
							
						when "10"=>
							if (cy='1') then
								select_ALU<="01";
								wr_cy<='1';
								wr_z<='1';
							end if;
						
						when "01"=>
							if (z='1') then
								select_ALU<="01";
								wr_cy<='1';
								wr_z<='1';
							end if;
							
						when others=>
							null;
							
					end case;
				end if;
				select_Mux_RF_D3<="011";
				wr_RF<='1';
				
			
			when S5=>
				select_Mux_ALU_A<='0';
				select_Mux_ALU_B<="01";
				select_Mux_RF_A3<="011";
				select_ALU<="01";
				wr_cy<='1';
				wr_z<='1';
				select_Mux_RF_D3<="011";
				wr_RF<='1';
				
			when S6=>
				select_Mux_ALU_A<='0';
				select_Mux_ALU_B<="10";
				select_Mux_RF_A3<="010";
				select_ALU<="01";
				wr_cy<='1';
				wr_z<='1';
				select_Mux_RF_D3<="011";
				wr_RF<='1';
				
			when S7=>
				select_Mux_RF_A3<="001";
				select_Mux_RF_D3<="100";
				wr_RF<='1';
				
			when S8=>
				select_Mux_RF_A1<="10";
				select_Mux_T1<='0';
				wr_T1<='1';
				
			when S9=>
				select_Mux_ALU_A<='0';
				select_Mux_ALU_B<="10";
				select_Mux_T2<="10";
				select_ALU<="01";
				wr_z<='1';
				wr_T2<='1';
			
			when S10=>
				select_Mux_Mem_A<='1';
				select_Mux_T1<='1';
				wr_T1<='1';
				
			when S11=>
				select_Mux_RF_A3<="001";
				select_Mux_RF_D3<="000";
				wr_RF<='1';
			
			when S12=>
				select_Mux_RF_A1<="01";
				select_Mux_T1<='0';
				wr_T1<='1';
				
			when S13=>
				select_Mux_Mem_A<='1';
				select_Mux_Mem_A<='0';
				wr_Mem<='1';
				
			when S14=>
				select_Mux_Mem_A<='0';
				select_Mux_T2<="01";
				wr_T2<='1';
				
			when S15=>
				dec<=std_logic_vector(to_unsigned(i, 3));
				select_Mux_RF_A3<="100";
				select_Mux_RF_D3<="001";
				wr_RF<='1';
				
			when S16=>
				wr_inc<='1';
				select_Mux_RF_A3<="001";
				select_Mux_RF_D3<="101";
				wr_RF<='1';
				
			when S17=>
				dec<=std_logic_vector(to_unsigned(i, 3));
				select_Mux_RF_A2<='1';
				select_Mux_T2<="00";
				wr_T2<='1';
				
			when S18=>
				select_Mux_Mem_A<='0';
				select_Mux_Mem_D<='1';
				wr_Mem<='1';
				
			when S19=>
				select_Mux_ALU_A<='0';
				select_Mux_ALU_B<="00";
				select_ALU<="11";
				wr_z<='1';
				
			when S20=>
				select_Mux_RF_A1<="00";
				select_Mux_T1<='0';
				wr_T1<='1';
				
			when S21=>
				select_Mux_ALU_A<='0';
				select_Mux_ALU_B<="10";
				select_Mux_RF_A3<="000";
				select_ALU<="01";
				wr_z<='1';
				wr_T2<='1';
				select_Mux_RF_D3<="011";
				wr_RF<='1';
				
			when S22=>
				select_Mux_RF_A3<="001";
				select_Mux_RF_D3<="010";
				wr_RF<='1';
				
			when S23=>
				select_Mux_ALU_A<='0';
				select_Mux_ALU_B<="11";
				select_Mux_RF_A3<="000";
				select_ALU<="01";
				wr_z<='1';
				wr_T2<='1';
				select_Mux_RF_D3<="011";
				wr_RF<='1';
				
			when S24=>
				select_Mux_RF_A3<="000";
				select_Mux_RF_D3<="001";
				wr_RF<='1';
				
			when others=>
				null;
				
		end case;
	end process; --stateoutput
	
	fsm : process(state, IR)
	
	variable opcode: std_logic_vector(3 downto 0);
	variable condition: std_logic_vector(1 downto 0);
	
	begin
	
		opcode:=IR(15 downto 12);
		condition:=IR(1 downto 0);
	
		case state is
		
			when S0=>
				nstate<=S1;
				
			when S1=>
				nstate<=S2;
				
			when S2=>
				--LWI: opcode=0100
				if opcode="0100" then
					nstate<=S7;
				elsif ((opcode="0111") or (opcode="0101")) then
					nstate<=S8;
				elsif ((opcode="1100") or (opcode="1101")) then
					i:=0;
					nstate<=S3;
				elsif ((opcode="1001") or (opcode="1010")) then
					nstate<=S22;
				else
					nstate<=S3;
				end if;
				
			when S3=>
				if ((opcode="0001") and (condition="00" or condition="01" or condition="10")) then
					nstate<=S4;
				elsif ((opcode="0001") and (condition="11")) then
					nstate<=S5;
				elsif (opcode="0000") then
					nstate<=S6;
				elsif opcode="1100" then
					if IR(i)='1' then
						nstate<=S14;
					else
				      nstate<=S3;
					end if;
					i:=i+1;
				elsif opcode="1101" then
					if IR(i)='1' then
				      nstate<=S17;
					else
				      nstate<=S3;
					end if;
					i:=i+1;
				elsif opcode="1000" then
					nstate<=S19;
				elsif opcode="1010" then
					nstate<=S24;
				else
					nstate<=S0;
				end if;
				
			when S4=>
				nstate<=S0;
				
			when S5=>
				nstate<=S0;
				
			when S6=>
				nstate<=S0;
				
			when S7=>
				nstate<=S0;
				
			when S8=>
				nstate<=S9;
				
			when S9=>
				if opcode="0111" then
					nstate<=S10;
				elsif opcode="0101" then
					nstate<=S12;
				else
					nstate<=S0;
				end if;
				
			when S10=>
				nstate<=S11;
				
			when S11=>
				nstate<=S0;
				
			when S12=>
				nstate<=S13;
				
			when S13=>
				nstate<=S0;
				
			when S14=>
				nstate<=S15;
				
			when S15=>
				nstate<=S16;
				
			when S16=>
				if i=8 then
					nstate<=S0;
				else
					nstate<=S3;
				end if;
				
			when S17=>
				nstate<=S18;
				
			when S18=>
				nstate<=S16;
				
			when S19=>
				if z='1' then
					nstate<=S20;
				else
					nstate<=S0;
				end if;
				
			when S20=>
				nstate<=S21;
				
			when S21=>
				nstate<=S0;
				
			when S22=>
				if opcode="1001" then
					nstate<=S23;
				elsif opcode="1010" then
					nstate<=S3;
				else
					nstate<=S0;
				end if;
				
			when S23=>
				nstate<=S0;
				
			when S24=>
				nstate<=S0;
				
			when others=>
				nstate<=S0;
				
		end case;
	end process; --fsm
	
end arch;