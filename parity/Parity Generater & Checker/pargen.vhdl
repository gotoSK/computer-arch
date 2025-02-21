LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY paritygen IS
    PORT (
        A, B, C : IN STD_LOGIC;
        Ep, Op : OUT STD_LOGIC);
END paritygen;
ARCHITECTURE behave OF paritygen IS
BEGIN
    Ep <= (A XOR(B XOR C));
    Op <= NOT (A XOR(B XOR C));
END behave;