library ieee;
use ieee.std_logic_1164.all;

entity reg6 is 
    port(
      wr: in std_logic;
		clk: in std_logic;
		data: in std_logic_vector(5 downto 0);
		clr: in std_logic;
		Op: out std_logic_vector(5 downto 0)
		);
end reg6;

architecture reg1 of reg6 is
begin
process(wr, clk, data)
begin
if rising_edge(clk) then
  if wr='1' then
    Op <= data;
  else
    null;
  end if;
  if clr='1' then
	 Op<="000000";
  end if;
else
  null;
end if;
end process;
end reg1;