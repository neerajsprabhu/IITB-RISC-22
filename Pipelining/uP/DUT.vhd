library ieee;
use ieee.std_logic_1164.all;
entity DUT is
	port(input_vector: in std_logic_vector(1 downto 0)
	);
end entity;

architecture DutWrap of DUT is
   component uP is
     port(
		clk : in std_logic;
		reset : in std_logic
		);
	  end component;
begin

   add_instance: uP
			port map (
					
					reset => input_vector(1),
					clk => input_vector(0)
					
			);

end DutWrap;

