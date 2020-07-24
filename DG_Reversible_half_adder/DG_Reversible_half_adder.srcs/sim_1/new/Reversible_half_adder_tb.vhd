library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity reversible_halfaddertb is
end reversible_halfaddertb;

architecture Behavioral of reversible_halfaddertb is
component Reversible_half_adder
  port(
  e_A,e_B,e_sum,e_carry: in std_logic;
  p_A,p_B,p_sum,p_carry: out std_logic;
  clk,clock,Res: in std_logic;
  E9: buffer std_logic
  );
  end component;

  signal e_A,e_B,e_sum,e_carry: std_logic;
  signal p_A,p_B,p_Sum,p_Carry: std_logic;
  signal clk,clock,reset: std_logic;
  signal Error: std_logic ;

  constant clock_period: time := 10 ns;
  signal stop_the_clock: boolean;


begin
 uut: Reversible_half_adder port map (e_A  => e_A,
                        e_B  => e_B,
                        e_sum  => e_sum,
                        e_carry => e_carry,
                        p_A => p_A,
                        p_B => p_B,
                        p_sum => p_sum,
                        p_carry => p_carry,
                        clk => clk,
                        clock => clock,
                        res => reset,
                        E9 => Error );
stimulus: process
                          begin 
                      
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='0';
                            wait for 100ns;              
                           
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='0';
                            assert p_carry='X'; 
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='0';
                            assert p_sum='X';
                            assert p_carry='0';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='0';
                            assert p_sum='X';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                            wait for 100ns;
                           
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='1';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                           
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                             assert p_carry='X';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='0';
                            wait for 100ns;              
                           
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0'; 
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                      
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                         
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                            wait for 100ns;
                          
                            assert p_A='0';
                            assert p_B='0';
                            assert p_sum='0';
                            assert p_carry='0';
                            wait for 100ns;
                           
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                        
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                          
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                           
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                             assert p_carry='X';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='0';
                            assert p_B='1';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;              -- Put test bench stimulus code here
                           
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1'; 
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;                          
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='0';
                            assert p_sum='1';
                            assert p_carry='0';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;                          
                            wait for 100ns;
                            assert p_A='1';
                            assert p_B='1';
                            assert p_sum='0';
                            assert p_carry='1';
                            
                            
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 100ns;
                            wait for 100ns;
                            assert p_A='X';
                            assert p_B='X';
                            assert p_sum='X';
                            assert p_carry='X';
                            wait for 600ns;
                       

                                            
                        stop_the_clock <= true;
                        wait;
                        end process;
                        
                          clocking: process
                          begin
                          while not stop_the_clock loop
                          clk <= '0', '1' after clock_period / 20;
                          wait for clock_period/10 ;
                          end loop;
                          wait;
                          end process;
   
                         clock_new: process
                          begin
                          while not stop_the_clock loop
                          clock <= '0', '1' after clock_period / 2;
                          wait for clock_period;
                          end loop;
                          wait;
                          end process;          
                         Resetting: process
                            begin
                            while not stop_the_clock loop
                            reset <= '1', '0' after 100ns;
                            wait for 200ns;
                            end loop;
                            wait;
                            end process;              
stimulate_e_A: process
                          begin
                            while not stop_the_clock loop
                              e_A <='X' ,'0' after 5400ns, '1' after 10800ns ;
                              wait for 16200ns;
                            end loop;
                          end process;

stimulate_e_B: process
                          begin
                            while not stop_the_clock loop
                              e_B <='X' ,'0' after 1800ns, '1' after 3600ns ;
                              wait for 5400ns;
                            end loop;
                          end process;
stimulate_e_sum: process
                          begin
                            while not stop_the_clock loop
                              e_sum <='X' ,'0' after 600ns, '1' after 1200ns ;
                              wait for 1800ns;
                            end loop;
                          end process;
stimulate_e_carry: process
                          begin
                            while not stop_the_clock loop
                              e_carry <='X' ,'0' after 200ns, '1' after 400ns ;
                              wait for 600ns;
                            end loop;
                          end process;

end Behavioral;