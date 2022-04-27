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
type mem_index is array(65535 downto 0) of std_logic_vector(15 downto 0);
signal mem: mem_index := (0=>"0100000111111111", 1=>"0100001111111111", 2=>"1010000001000000", others => "0000000000000000");
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
	--mem(0) <= "0000001010101010"; --010101010 in R1
	--mem(1) <= "0000010011111111"; --011111111 in R2
	--mem(2) <= "0001000001010000"; --Store R1+R2 in R0
	Dout<=mem(to_integer(unsigned(addr)));
end mem1;