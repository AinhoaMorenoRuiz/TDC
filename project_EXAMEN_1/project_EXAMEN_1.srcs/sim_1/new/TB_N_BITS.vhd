-- Testbench created online at:
--   https://www.doulos.com/knowhow/perl/vhdl-testbench-creation-using-perl/
-- Copyright Doulos Ltd

library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity EJ1_N_BITS_tb is
end;

architecture bench of EJ1_N_BITS_tb is

  component EJ1_N_BITS
      generic (N : integer := 4);
      Port ( A_i : in STD_LOGIC_VECTOR (N-1 downto 0);
             ENA : in STD_LOGIC;
             Z_o : out STD_LOGIC_VECTOR (2**N-1 downto 0));
  end component;

  constant N : integer := 4; 
  
  signal A_i: STD_LOGIC_VECTOR (N-1 downto 0);
  signal ENA: STD_LOGIC;
  signal Z_o: STD_LOGIC_VECTOR (2**N-1 downto 0);

begin

  -- Insert values for generic parameters !!
  uut: EJ1_N_BITS generic map ( N   =>  N)
                     port map ( A_i => A_i,
                                ENA => ENA,
                                Z_o => Z_o );

  stimulus: process
  begin
  
    -- Put initialisation code here
     wait for 10 ns;
    A_i <= "0000";
    ENA <= '1';
    
    wait for 10 ns;
    A_i <= "0001";
    ENA <= '1';
    
    wait for 10 ns;
    A_i <= "0010";
    ENA <= '1';
    
    wait for 10 ns;
    A_i <= "0011";
    ENA <= '1';
    
    wait for 10 ns;
    A_i <= "1011";
    ENA <= '1';
    
    wait for 10 ns;
    A_i <= "0010";
    ENA <= '0';
    
    wait for 10 ns;
    A_i <= "1011";
    ENA <= '1';

    -- Put test bench stimulus code here

    wait;
  end process;


end;