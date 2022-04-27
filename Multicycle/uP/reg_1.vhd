library ieee;
use ieee.std_logic_1164.all;

entity reg1 is 
    port(
      wr: in std_logic;
		clk: in std_logic;
		data: in std_logic;
		Op: out std_logic
		);
end reg1;

architecture reg_1 of reg1 is
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