library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity incr_LMSM is
    port (
        A: in std_logic_vector(15 downto 0);
	     Op: out std_logic_vector(15 downto 0)
    ) ;
end incr_LMSM;
architecture behavior of incr_LMSM is

begin
	alu : process( A )
	variable temp : std_logic_vector(15 downto 0);
	begin
		temp := std_logic_vector(unsigned(A)+1);
		Op <=temp(15 downto 0); 
	end process ; -- alu
end behavior;