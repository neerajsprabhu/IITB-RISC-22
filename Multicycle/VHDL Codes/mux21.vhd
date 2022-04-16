library ieee;
use ieee.std_logic_1164.all;

entity mux21 is
    
    port (
        A0: in std_logic_vector(15 downto 0);
        A1: in std_logic_vector(15 downto 0);
        S: in std_logic;
        Op: out std_logic_vector(15 downto 0)
    ) ;
end mux21;
architecture behavior of mux21 is

begin
alu : process( A0, A1, S )
begin
	if S='0' then
		Op <= A0;
	elsif S='1' then 
		Op <=  A1;
	end if;
	end process ; -- alu
	
end behavior;