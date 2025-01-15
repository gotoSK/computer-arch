library ieee; 
use ieee.std_logic_1164.all;

entity dmux4_tb is
end dmux4_tb;

architecture test of dmux4_tb is
    component dmux4
    port (
        i, s1, s0 : in std_logic;
        y0, y1, y2, y3: out std_logic
    );
    end component dmux4 ;
    signal i,s1,s0,y0,y1,y2,y3: std_logic; 
    
    begin
        dmux4_tb:dmux4 port map(
            i => i,
            s1 => s1,
            s0 => s0,
            y0 => y0,
            y1 => y1,
            y2 => y2,
            y3 => y3
        );
        process begin

             s0 <= '0';
             s1 <= '0';
             i <= '1'; 
             wait for 1 ns;


             s0 <= '0';
             s1 <= '1'; 
             i <= '1'; 
             wait for 1 ns;

             s0 <= '1';
             s1 <= '0'; 
             i <= '1'; 
             wait for 1 ns;

             s0 <= '1';
             s1 <= '1';
             i <= '1'; 
             wait for 1 ns;
             
            assert false report "Reached end of test";
        wait;
    end process; 
end architecture test;
