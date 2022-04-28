-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  Full-adder.

library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(33 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component ram is
    port(
	   wr: in std_logic;
		A: in std_logic_vector(15 downto 0);
		Din: in std_logic_vector(15 downto 0);
		clk: in std_logic;
		Dout: out std_logic_vector(15 downto 0)
		);
	  end component;
begin

   add_instance: ram
			port map (
					
					clk => input_vector(33),
					wr => input_vector(32),
					A => input_vector(31 downto 16),
					Din => input_vector(15 downto 0),
				
					Dout => output_vector(15 downto 0));

end DutWrap;

