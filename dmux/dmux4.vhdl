library ieee;
use ieee.std_logic_1164.all; 

entity dmux4 is
  port (
	i, s1, s0 : in std_logic;
    y0, y1, y2, y3: out std_logic
  ) ;
end dmux4;

architecture behave of dmux4 is
    
begin
    y0 <= (not(s0) and not(s1) and i);
    y1 <= (not(s0) and s1 and i);
    y2 <= (s0 and not(s1) and i);
    y3 <= (s0 and s1 and i);

end behave;