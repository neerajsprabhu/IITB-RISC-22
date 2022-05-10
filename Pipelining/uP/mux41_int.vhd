library ieee;
use ieee.std_logic_1164.all;

entity mux41_int is
    
    port (
        A0: in integer;
        A1: in integer;
		  A2: in integer;
		  A3: in integer;
        S: in std_logic_vector(1 downto 0);
        Op: out integer
    ) ;
end mux41_int;
architecture behavior of mux41_int is

begin
alu : process( A0, A1, A2, A3, S )
begin
	if S = "00" then
		Op <= A0;
	elsif S = "01" then 
		Op <=  A1;
	elsif S = "10" then 
		Op <= A2;
	elsif S = "11" then 
		Op <= A3;
	end if;
	end process ; -- alu
end behavior;