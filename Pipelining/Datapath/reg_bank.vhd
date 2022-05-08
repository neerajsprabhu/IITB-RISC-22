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
		r7_in: in std_logic_vector(15 downto 0);
		wr: in std_logic;
		wr_r7: in std_logic;
		clk: in std_logic;
		D1: out std_logic_vector(15 downto 0);
		D2: out std_logic_vector(15 downto 0);
		r7_out: out std_logic_vector(15 downto 0)
		);
end register_bank;

architecture rb1 of register_bank is
	type reg_bank_type is array(7 downto 0) of std_logic_vector(15 downto 0);
	signal reg_bank: reg_bank_type := others=>"0000000000000000" ;
begin
	process(Add1, Add2, Add3, D3, wr, clk, wr_r7)
	begin
		if rising_edge(clk) then
			if wr='1' then
				reg_bank(to_integer(unsigned(Add3)))<=D3;
			end if;
			if wr_r7='1' then
				reg_bank(7)<=r7_in;
			end if;
		end if;
	end process;
	D1<=reg_bank(to_integer(unsigned(Add1)));
	D2<=reg_bank(to_integer(unsigned(Add2)));
	r7_out<=reg_bank(7);
end rb1;