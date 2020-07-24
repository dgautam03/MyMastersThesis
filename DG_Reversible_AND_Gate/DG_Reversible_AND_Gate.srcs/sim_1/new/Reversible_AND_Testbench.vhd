library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reversible_AND_Testbench is
end Reversible_AND_Testbench;

architecture Behavioral of Reversible_AND_Testbench is

component Reversible_AND_gate
  port(
  ex_A,ex_B,ex_C:IN std_logic;
  pre_A,pre_B,pre_C:OUT std_logic;
  Clock,reset:IN std_logic;
  Error:OUT std_logic
  );
  end component;


  signal ex_A,ex_B,ex_C: std_logic;
  signal pre_A,pre_B,pre_C: std_logic;
  signal Clock,reset: std_logic;
  signal Error: std_logic ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;


begin
 uut: Reversible_AND_gate port map ( ex_A  => ex_A,
                        ex_B  => ex_B,
                        ex_C  => ex_C,
                        pre_A => pre_A,
                        pre_B => pre_B,
                        pre_C => pre_C,
                        Clock => Clock,
                        reset => reset,
                        Error => Error );
stimulus: process
                          begin 
                            -- Put initialisation code here
                            ex_A<='X';
                            ex_B<='X';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='X';
                            ex_B<='X';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                                                  -- Put test bench stimulus code here
                           
                            ex_A<='X';
                            ex_B<='X';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='1';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='X';
                            ex_B<='0';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='0';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='X';
                            ex_B<='0';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='0';
                            assert pre_C='0';
                            assert error='0';  
                            wait for 100ns;
                            ex_A<='X';
                            ex_B<= '0';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='1';  
                            wait for 100ns;
                            ex_A<='X';
                            ex_B<='1';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='1';
                            assert pre_C='X';
                            assert error='0';  
                            wait for 100ns;
                            ex_A<='X';
                            ex_B<='1';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='1';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='X';
                            ex_B<='1';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='1';
                            assert error='0'; 
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='X';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='X';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='X';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='X';
                            assert pre_C='0';
                            assert error='0';  
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='X';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='1';  
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='0';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='0';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='0';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='0';
                            assert pre_C='0';
                            assert error='0';  
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='0';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='1';  
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='1';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='1';
                            assert pre_C='0';
                            assert error='0';  
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='1';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='1';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='0';
                            ex_B<='1';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='1';
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='X';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='X';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='0';
                            assert pre_C='0';
                            assert error='0';  
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='X';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='1';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='0';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='0';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='0';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='0';
                            assert pre_C='0';
                            assert error='0';
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='0';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='1';
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='1';
                            ex_C<='X';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='1';
                            assert error='0';  
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='1';
                            ex_C<='0';
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            assert error='1';  
                            wait for 100ns;
                            ex_A<='1';
                            ex_B<='1';
                            ex_C<='1';
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='1';
                            assert error='0';  
                            wait for 100ns; 
                            wait for 100ns;               
                        stop_the_clock <= true;
                        wait;
                        end process;
                        
                          clocking: process
                          begin
                            while not stop_the_clock loop
                              clock <= '0', '1' after clock_period / 2;
                              wait for clock_period;
                            end loop;
                            wait;
                          end process;

end Behavioral;