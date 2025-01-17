library ieee;
use ieee.std_logic_1164.all; 

entity ha is
  port (
	a,b:in std_logic;
    c,s: out std_logic
  ) ;
end ha;

architecture behave of ha is
    

begin
    c<= a and b;
	s<= a xor b;

end behave ; -- behave