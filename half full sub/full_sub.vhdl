library ieee;
use ieee.std_logic_1164.all; 

entity fs is
  port (
	a,b,c:in std_logic;
    s, br: out std_logic
  ) ;
end fs;

architecture behave of fs is
    
begin
	s<= not(a) and b; -- substract
    br<= (not(a) and c) or (not(a) and b) or (b and c); -- burrow

end behave;