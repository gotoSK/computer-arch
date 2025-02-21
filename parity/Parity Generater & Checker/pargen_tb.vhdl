LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY paritygen_tb IS
END paritygen_tb;
ARCHITECTURE test OF paritygen_tb IS
    COMPONENT paritygen
        PORT (
            A, B, C : IN STD_LOGIC;
            Ep, Op : OUT STD_LOGIC);
    END COMPONENT;
    SIGNAL A, B, C, Ep, Op : STD_LOGIC;
BEGIN
    parity_gen : paritygen PORT MAP(A => A, B => B, C => C, Ep => Ep, Op => Op);
    PROCESS BEGIN
        A <= '0';
        B <= '0';
        C <= '0';
        WAIT FOR 20 ns;
        A <= '0';
        B <= '0';
        C <= '1';
        WAIT FOR 20 ns;
        A <= '0';
        B <= '1';
        C <= '0';
        WAIT FOR 20 ns;
        A <= '0';
        B <= '1';
        C <= '1';
        WAIT FOR 20 ns;

        A <= '1';
        B <= '0';
        C <= '0';
        WAIT FOR 20 ns;
        A <= '1';
        B <= '0';
        C <= '1';
        WAIT FOR 20 ns;
        A <= '1';
        B <= '1';
        C <= '0';
        WAIT FOR 20 ns;
        A <= '1';
        B <= '1';
        C <= '1';
        WAIT FOR 20 ns;
        WAIT;
    END PROCESS;
END test;