library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memory is
    port(
	   wr: in std_logic;
		A: in std_logic_vector(15 downto 0);
		Din: in std_logic_vector(15 downto 0);
		clk: in std_logic;
		Dout: out std_logic_vector(15 downto 0)
		);
end memory;

architecture mem1 of memory is
type mem_index is array(63 downto 0) of std_logic_vector(15 downto 0);
signal mem: mem_index;
signal addr: std_logic_vector(15 downto 0);

begin
process(wr, clk, A, Din)
begin
  addr <= A;
  if rising_edge(clk) then
    if wr='1' then
	   mem(to_integer(unsigned(A)))<=Din;
	 else
	   null;
	 end if;
  else
    null;
  end if;
end process;
  Dout<=mem(to_integer(unsigned(addr)));
end mem1;