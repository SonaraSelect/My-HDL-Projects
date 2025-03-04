library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder is
    Port (
        A       : in  STD_LOGIC;
        B       : in  STD_LOGIC;
        Cin     : in  STD_LOGIC;
        Sum     : out STD_LOGIC;
        Cout    : out STD_LOGIC
    );
end entity full_adder;

architecture Behavioral of full_adder is
begin
    Sum <= A xor B xor Cin; -- Sum calculation
    Cout <= (A and B) or (Cin and (A xor B)); -- Carry calculation
end Behavioral;