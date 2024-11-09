----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 25.05.2024 18:54:01
-- Design Name: 
-- Module Name: EJ1_N_BITS - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity EJ1_N_BITS is
    generic (N : integer := 4);
    Port ( A_i : in STD_LOGIC_VECTOR (N-1 downto 0);
           ENA : in STD_LOGIC;
           Z_o : out STD_LOGIC_VECTOR (2**N-1 downto 0));
end EJ1_N_BITS;

architecture Behavioral of EJ1_N_BITS is

begin

process (A_i, ENA)
begin
    if ENA = '1' then
        case A_i is
            when "0000" => Z_o <= "0000000000000000";
            when "0001" => Z_o <= "0000000000000010";
            when "0010" => Z_o <= "0000000000000100";
            when "0011" => Z_o <= "0000000000001000";
            when "0100" => Z_o <= "0000000000010000";
            when "0101" => Z_o <= "0000000000100000";
            when "0110" => Z_o <= "0000000001000000";
            when "0111" => Z_o <= "0000000010000000";
            when "1000" => Z_o <= "0000000100000000";
            when "1001" => Z_o <= "0000001000000000";
            when "1010" => Z_o <= "0000010000000000";
            when "1011" => Z_o <= "0000100000000000";
            when "1100" => Z_o <= "0001000000000000";
            when "1101" => Z_o <= "0010000000000000";
            when "1110" => Z_o <= "0100000000000000";
            when "1111" => Z_o <= "1000000000000000";
            when others => Z_o <= "1111111111111111";
        end case;
    else 
        Z_o <= (others => '0');
    end if;        
        
end process;
end Behavioral;
