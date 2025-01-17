library ieee; 
use ieee.std_logic_1164.all;


entity ha_tb is
end ha_tb;

architecture test of ha_tb is
    component ha 
    port(
        a,b:in std_logic;
		c,s: out std_logic
		) ;
    end component ha ;
    signal a,b,c,s:  std_logic; 
    
    begin
        halfadder:ha port map(
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
