-- LAB 11 --
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY inc IS
    PORT (
        A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        Cin : IN STD_LOGIC;
        Cout : OUT STD_LOGIC
    );

END inc;
ARCHITECTURE behave OF inc IS
BEGIN
    PROCESS (A, Cin)
        VARIABLE t : STD_LOGIC;
    BEGIN
        t := Cin;
        FOR i IN 0 TO 3 LOOP
            S(i) <= A(i) XOR t;
            t := A(i) AND (t);
        END LOOP;
        Cout <= t;
    END PROCESS;
END behave;