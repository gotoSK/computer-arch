LIBRARY ieee;

USE ieee.std_logic_1164.ALL;
ENTITY paritycheck_tb IS
END paritycheck_tb;

ARCHITECTURE test OF paritycheck_tb IS
    COMPONENT paritycheck
        PORT (
            A, B, C, D : IN STD_LOGIC;
            Epc, Opc : OUT STD_LOGIC);
    END COMPONENT;
    SIGNAL A, B, C, D, Epc, Opc : STD_LOGIC;
BEGIN
    parity_check : paritycheck PORT MAP(A => A, B => B, C => C, D => D, Epc => Epc, Opc => Opc);
    PROCESS BEGIN
        A <= '0';
        B <= '0';
        C <= '0';
        D <= '0';
        WAIT FOR 1 ns;
        A <= '0';
        B <= '0';
        C <= '0';
        D <= '1';
        WAIT FOR 1 ns;
        A <= '0';
        B <= '0';
        C <= '1';
        D <= '0';
        WAIT FOR 1 ns;
        A <= '0';

        B <= '0';
        C <= '1';
        D <= '1';
        WAIT FOR 1 ns;
        A <= '0';
        B <= '1';
        C <= '0';
        D <= '0';
        WAIT FOR 1 ns;
        A <= '0';
        B <= '1';
        C <= '0';
        D <= '1';
        WAIT FOR 1 ns;
        A <= '0';
        B <= '1';
        C <= '1';
        D <= '0';
        WAIT FOR 1 ns;
        A <= '0';
        B <= '1';
        C <= '1';
        D <= '1';
        WAIT FOR 1 ns;
        A <= '1';
        B <= '0';
        C <= '0';
        D <= '0';
        WAIT FOR 1 ns;

        A <= '1';
        B <= '0';
        C <= '0';
        D <= '1';
        WAIT FOR 1 ns;
        A <= '1';
        B <= '0';
        C <= '1';
        D <= '0';
        WAIT FOR 1 ns;
        A <= '1';
        B <= '0';
        C <= '1';
        D <= '1';
        WAIT FOR 1 ns;
        A <= '1';
        B <= '1';
        C <= '0';
        D <= '0';
        WAIT FOR 1 ns;
        A <= '1';
        B <= '1';
        C <= '0';
        D <= '1';
        WAIT FOR 1 ns;
        A <= '1';
        B <= '1';
        C <= '1';
        D <= '0';

        WAIT FOR 1 ns;
        A <= '1';
        B <= '1';
        C <= '1';
        D <= '1';
        WAIT FOR 1 ns;
        WAIT;
    END PROCESS;
END test;