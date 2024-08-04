-- ALU comenzaremos con el sumador

library IEEE;
use IEEE.std_logic_1164.all;

entity ALU is
    port(
        A : in std_logic_vector(3 downto 0);  -- Entrada A de 4 bits
        B : in std_logic_vector(3 downto 0);  -- Entrada B de 4 bits
        ALU_Sel : in std_logic_vector(1 downto 0);  -- Selector de operación (2 bits, aunque usaremos solo "00" por ahora)
        Result : out std_logic_vector(3 downto 0);  -- Resultado de la operación
        CarryOut : out std_logic  -- Salida de acarreo (solo para suma)
    );
end entity ALU;

architecture Behavioral of ALU is
    signal Sum: std_logic_vector(3 downto 0);  -- Resultado de la suma
    signal Carry: std_logic;  -- Acarreo de la suma
begin
    -- Instancia del sumador de 4 bits usando sumNb
    sumador_inst: entity work.sumNb
        generic map(N => 4)  -- Define el tamaño del sumador
        port map(
            a_i => A,
            b_i => B,
            ci_i => '0',  -- Acarreo de entrada inicial es 0
            s_o => Sum,
            co_o => Carry
        );

    -- Proceso para seleccionar la operación de la ALU
    process(A, B, ALU_Sel, Sum, Carry)
    begin
        case ALU_Sel is
            when "00" =>  -- Operación de suma
                Result <= Sum;
                CarryOut <= Carry;
            when others =>
                Result <= (others => '0');  -- Estado por defecto (sin operación)
                CarryOut <= '0';
        end case;
    end process;
end architecture Behavioral;
