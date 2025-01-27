LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY inc_tb IS
END inc_tb;

ARCHITECTURE test OF inc_tb IS
    COMPONENT inc
        PORT (
            A : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
            S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
            Cin : IN STD_LOGIC;
            Cout : OUT STD_LOGIC);
    END COMPONENT;
    --input signal
    SIGNAL A : STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Cin : STD_LOGIC;
    --output signal
    SIGNAL S : STD_LOGIC_VECTOR (3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL Cout : STD_LOGIC;
BEGIN
    -- Instantiate the Unit Under Test (UUT)
    UUT : inc PORT MAP(A => A, S => S, Cin => Cin, Cout => Cout);
    PROCESS BEGIN
        A <= "0101";
        Cin <= '1';
        WAIT FOR 20 ns;
        A <= "1101";
        Cin <= '1';
        WAIT FOR 20 ns;
        A <= "1100";
        Cin <= '1';
        WAIT FOR 20 ns;
        A <= "1010";
        Cin <= '1';
        WAIT FOR 20 ns;

        WAIT;
    END PROCESS;
END test;