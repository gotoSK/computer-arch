LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY alu_tb IS
END alu_tb;
ARCHITECTURE behavior OF alu_tb IS
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT alu
        PORT (
            inp_a : IN signed(3 DOWNTO 0);
            inp_b : IN signed(3 DOWNTO 0);
            sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            out_alu : OUT signed(3 DOWNTO 0)
        );
    END COMPONENT;
    -- Inputs
    SIGNAL inp_a : signed(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL inp_b : signed(3 DOWNTO 0) := (OTHERS => '0');
    SIGNAL sel : STD_LOGIC_VECTOR(2 DOWNTO 0) := (OTHERS => '0');

    -- Outputs
    SIGNAL out_alu : signed(3 DOWNTO 0);
BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut : alu PORT MAP(
        inp_a => inp_a,
        inp_b => inp_b,
        sel => sel,
        out_alu => out_alu
    );
    -- Stimulus process
    stim_proc : PROCESS
    BEGIN
        -- hold reset state for 100 ns.
        WAIT FOR 100 ns;
        -- insert stimulus here
        inp_a <= "1001";
        inp_b <= "1111";

        sel <= "000";
        WAIT FOR 100 ns;
        sel <= "001";
        WAIT FOR 100 ns;
        sel <= "010";
        WAIT FOR 100 ns;
        sel <= "011";
        WAIT FOR 100 ns;
        sel <= "100";

        WAIT FOR 100 ns;
        sel <= "101";
        WAIT FOR 100 ns;
        sel <= "110";
        WAIT FOR 100 ns;
        sel <= "111";
        WAIT FOR 100 ns;
        WAIT;
    END PROCESS;
END;