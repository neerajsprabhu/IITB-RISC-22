library ieee;
use ieee.std_logic_1164.all;
entity DUT is
   port(input_vector: in std_logic_vector(8 downto 0);
       	output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
   component bitextender is
     port (
        A: in std_logic_vector(8 downto 0);
        Op: out std_logic_vector(15 downto 0)
    ) ;
	  end component;
begin

   add_instance: bitextender
			port map (
			
					A(8 downto 0)  => input_vector(8 downto 0),

					Op(15 downto 0) => output_vector(15 downto 0)
					
					);

end DutWrap;

