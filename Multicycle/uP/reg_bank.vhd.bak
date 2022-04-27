library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library work;

entity register_bank is
    port(
	   Add1: in std_logic_vector(2 downto 0);
		Add2: in std_logic_vector(2 downto 0);
		Add3: in std_logic_vector(2 downto 0);
		D3: in std_logic_vector(15 downto 0);
		wr: in std_logic;
		clk: in std_logic;
		D1: out std_logic_vector(15 downto 0);
		D2: out std_logic_vector(15 downto 0)
		);
end register_bank;

architecture rb1 of register_bank is
  component mux81 is 
      port(A0: in std_logic_vector(15 downto 0);
        A1: in std_logic_vector(15 downto 0);
		  A2: in std_logic_vector(15 downto 0);
		  A3: in std_logic_vector(15 downto 0);
		  A4: in std_logic_vector(15 downto 0);
		  A5: in std_logic_vector(15 downto 0);
		  A6: in std_logic_vector(15 downto 0);
		  A7: in std_logic_vector(15 downto 0);
        S: in std_logic_vector(2 downto 0);
        Op: out std_logic_vector(15 downto 0)
        );
  end component;
  signal r0, r1, r2, r3, r4, r5, r6, r7: std_logic_vector(15 downto 0);

begin
m1: mux81 port map (A0=>r0, A1=>r1, A2=>r2, A3=>r3, A4=>r4, A5=>r5, A6=>r6, A7=>r7, S=>Add1, Op=>D1);
m2: mux81 port map (A0=>r0, A1=>r1, A2=>r2, A3=>r3, A4=>r4, A5=>r5, A6=>r6, A7=>r7, S=>Add2, Op=>D2);
process(Add1, Add2, Add3, D3, wr)
begin
  if rising_edge(clk) then
    if wr='1' then
      if Add3="000" then
		  r0 <= D3;
		elsif Add3="001" then
		  r1 <= D3;
		elsif Add3="010" then
		  r2 <= D3;
		elsif Add3="011" then
		  r3 <= D3;
		elsif Add3="100" then
		  r4 <= D3;
		elsif Add3="101" then
		  r5 <= D3;
		elsif Add3="110" then
		  r6 <= D3;
		else
		  r7 <= D3;
		end if;
	 else
	   null;
	 end if;
  end if;
end process;
end rb1;