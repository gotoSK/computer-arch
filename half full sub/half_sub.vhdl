library ieee;
use ieee.std_logic_1164.all; 

entity hs is
  port (
	a,b:in std_logic;
    c,s: out std_logic
  ) ;
end hs;

architecture behave of hs is
    
begin
    c<= a xor b; -- subtract
	s<= not(a) and b; -- burrow

end behave;