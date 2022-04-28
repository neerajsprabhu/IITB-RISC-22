library ieee;
use ieee.std_logic_1164.all;

entity mux81 is
    
    port (
        A0: in std_logic_vector(15 downto 0);
        A1: in std_logic_vector(15 downto 0);
		  A2: in std_logic_vector(15 downto 0);
		  A3: in std_logic_vector(15 downto 0);
		  A4: in std_logic_vector(15 downto 0);
		  A5: in std_logic_vector(15 downto 0);
		  A6: in std_logic_vector(15 downto 0);
		  A7: in std_logic_vector(15 downto 0);
        S0: in std_logic;
		  S1: in std_logic;
		  S2: in std_logic;
        O: out std_logic_vector(15 downto 0)
    ) ;
end mux81;
architecture behavior of mux81 is

begin
alu : process( A0, A1, A2, A3, A4, A5, A6, A7, S0, S1, S2 )
begin
if S0 <='0' and S1 <= '0' and S2 <='0' then
O <= A0;
elsif S0 <='1' and S1 <= '0' and S2 <='0' then 
O <=  A1;
elsif S0 <='0' and S1 <= '1' and S2 <='0' then 
O <=  A2;
elsif S0 <='1' and S1 <= '1' and S2 <='0' then 
O <=  A3;
elsif S0 <='0' and S1 <= '0' and S2 <='1' then 
O <=  A4;
elsif S0 <='1' and S1 <= '0' and S2 <='1' then 
O <=  A5;
elsif S0 <='0' and S1 <= '1' and S2 <='1' then 
O <=  A6;
elsif S0 <='1' and S1 <= '1' and S2 <='1' then 
O <=  A7;
end if;

end process ; -- alu
end behavior;