library ieee; 
use ieee.std_logic_1164.all;

entity fs_tb is
end fs_tb;

architecture test of fs_tb is
    component fs 
    port(
        a,b,c:in std_logic;
		s,br: out std_logic
		);
    end component fs ;
    signal a,b,c,s,br:  std_logic; 
    
    begin
        fslfadder:fs port map(
            a =>a ,
            b =>b ,
            c =>c ,
            s =>s, 
            br => br
            
        );
        process begin

             a <= '0';
             b <= '0';
             c <= '0';
             wait for 1 ns;

             a <= '0';
             b <= '0';
             c <= '1';
             wait for 1 ns;

             a <= '0';
             b <= '1';
             c <= '0'; 
             wait for 1 ns;

             a <= '0';
             b <= '1';
             c <= '1'; 
             wait for 1 ns;

             a <= '1';
             b <= '0';
             c <= '0'; 
             wait for 1 ns;

             a <= '1';
             b <= '0';
             c <= '1'; 
             wait for 1 ns;

             a <= '1';
             b <= '1';
             c <= '0'; 
             wait for 1 ns;

             a <= '1';
             b <= '1';
             c <= '1'; 
             wait for 1 ns;
    assert false report "Reached end of test";
        wait;
    end process; 
end architecture test;
