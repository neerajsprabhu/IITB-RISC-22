library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity incr is
    port (
        A: in std_logic_vector(15 downto 0);
		  wr: in std_logic;
        Op: out std_logic_vector(15 downto 0)
    ) ;
end incr;
architecture behavior of incr is

begin
	alu : process( A, wr )
	variable temp : std_logic_vector(15 downto 0);
	begin
		temp := std_logic_vector(unsigned(A)+1);
		if wr='1' then
			Op <=temp(15 downto 0); 
		else
			null;
		end if;
	end process ; -- alu
end behavior;