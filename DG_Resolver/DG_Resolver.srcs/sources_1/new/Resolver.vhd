library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity Resolver is
port(
A,B:IN std_logic;
clock,reset:IN std_logic;
C,Error:OUT std_logic
);
end Resolver;

architecture Behavioural of Resolver is
begin
process(A,B,clock,reset)
begin
if reset = '1' then
C <= 'X';
elsif rising_edge(clock) 
then
if A='X' and B='X' then
C<='X';Error<='0';
elsif A='X' and B='0' then
C<='0';Error<='0';
elsif A='0' and B='X' then
C<='0';Error<='0';
elsif A='X' and B='1' then
C<='1';Error<='0';
elsif A='1' and B='X' then
C<='1';Error<='0';
elsif A='0' and B='0' then
C<='0';Error<='0';
elsif A='0' and B='1' then
C<='X';Error<='1';
elsif A='1' and B='0' then
C<='X';Error<='1';
elsif A='1' and B='1' then
C<='1';Error<='0';
end if;
end if;
end process;
end Behavioural;
  
