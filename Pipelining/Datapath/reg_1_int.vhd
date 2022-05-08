library ieee;
use ieee.std_logic_1164.all;

entity reg1_int is 
    port(
      wr: in std_logic;
		clk: in std_logic;
		data: in integer;
		Op: out integer
		);
end reg1_int;

architecture reg_1 of reg1_int is
begin
process(wr, clk, data)
begin
if rising_edge(clk) then
  if wr='1' then
    Op <= data;
  else
    null;
  end if;
else
  null;
end if;
end process;
end reg_1;