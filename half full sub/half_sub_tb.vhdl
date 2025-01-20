library ieee; 
use ieee.std_logic_1164.all;

entity hs_tb is
end hs_tb;

architecture test of hs_tb is
    component hs 
    port(
        a,b:in std_logic;
		c,s: out std_logic
		);
    end component hs ;
    signal a,b,c,s:  std_logic; 
    
    begin
        hslfadder:hs port map(
            a =>a ,
            b =>b  ,
            c =>c ,
            s =>s
            
        );
        process begin

             a <= '0';
             b <= '0'; 
             wait for 1 ns;


             a <= '0';
             b <= '1'; 
             wait for 1 ns;

             a <= '1';
             b <= '0'; 
             wait for 1 ns;

             a <= '1';
             b <= '1'; 
             wait for 1 ns;
    assert false report "Reached end of test";
        wait;
    end process; 
end architecture test;
