library ieee;
use ieee.std_logic_1164.all;

entity mux41_3 is
    
    port (
        A0: in std_logic_vector(2 downto 0);
        A1: in std_logic_vector(2 downto 0);
		  A2: in std_logic_vector(2 downto 0);
		  A3: in std_logic_vector(2 downto 0);
        S: in std_logic_vector(1 downto 0);
        Op: out std_logic_vector(2 downto 0)
    ) ;
end mux41_3;
architecture behavior of mux41_3 is

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