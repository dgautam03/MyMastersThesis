library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Reversible_tb_XOR is
end Reversible_tb_XOR;

architecture Behavioral of Reversible_tb_XOR is
component Reversible_XOR_Gate
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
 uut: Reversible_XOR_Gate port map ( ex_A  => ex_A,
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
                            
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='0';
                            wait for 100ns;              
                           
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='0';
                            assert pre_C='X';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='0';
                            assert pre_C='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='0';
                            assert pre_C='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='1';
                            assert pre_C='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='1';
                            assert pre_C='1';
                            wait for 100Ns;
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='X';
                            assert pre_C='X';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='0';
                            assert pre_C='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='1';
                            assert pre_C='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='0';
                            assert pre_C='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='0';
                            assert pre_C='0';
                            wait for 100ns;
                           
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='1';
                            assert pre_C='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='0';
                            assert pre_B='1';
                            assert pre_C='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='X';
                            assert pre_C='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='0';
                            wait for 100ns;
                           
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='0';
                            assert pre_C='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='0';
                            assert pre_C='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='0';
                            assert pre_C='1';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='0';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert pre_A='1';
                            assert pre_B='1';
                            assert pre_C='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert pre_A='X';
                            assert pre_B='X';
                            assert pre_C='X';
                            wait for 100ns;
                                            
                        stop_the_clock <= true;
                        wait;
                        end process;

stimulate_ex_A: process
                          begin
                          while not stop_the_clock loop
                          ex_A <='X' ,'0' after 1800ns, '1' after 3600ns ;
                          wait for 5400ns;
                          end loop;
                          end process;
stimulate_ex_B: process
                          begin
                          while not stop_the_clock loop
                          ex_B <='X' ,'0' after 600ns, '1' after 1200ns ;
                          wait for 1800ns;
                          end loop;
                          end process;

stimulate_ex_c: process
                          begin
                          while not stop_the_clock loop
                          ex_c <='X' ,'0' after 200ns, '1' after 400ns ;
                          wait for 600ns;
                          end loop;
                          end process;
  clocking: process
                         begin
                         while not stop_the_clock loop
                         clock <= '0', '1' after clock_period / 2;
                         wait for clock_period;
                         end loop;
                         end process;                         

end Behavioral;