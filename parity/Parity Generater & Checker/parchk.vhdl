LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY paritycheck IS
    PORT (
        A, B, C, D : IN STD_LOGIC;
        Epc, Opc : OUT STD_LOGIC);
END paritycheck;
ARCHITECTURE behave OF paritycheck IS
BEGIN
    Epc <= ((A XOR B) XOR (C XOR D));
    Opc <= NOT ((A XOR B) XOR (C XOR D));
END behave;