library ieee;
use ieee.std_logic_1164.all;

entity bitextender9 is
    
    port (
        A: in std_logic_vector(8 downto 0);
        Op: out std_logic_vector(15 downto 0)
    ) ;
end bitextender9;
architecture behavior of bitextender9 is

begin
alu : process( A )
begin
	if A(8) ='0' then
		Op <= "0000000"&A;
	elsif A(8) ='1' then 
		Op <=  "1111111"&A;
	end if;
end process ; -- alu

end behavior;