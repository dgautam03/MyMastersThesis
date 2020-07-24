library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reversible_OR is
--  Port ( );
port(
ex_A,ex_B,ex_C:IN std_logic;
pre_A,pre_B,pre_C:OUT std_logic;
Clock,reset:IN std_logic;
Error:OUT std_logic
);
end Reversible_OR;

architecture FSM of Reversible_OR is
type state_type is(s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,E1);
signal current_state,next_state: state_type;
begin
process(clock,reset)
begin
if (reset='1')then
current_state<=s1;
elsif(clock'event and clock='1') then 
current_state<=next_state;

end if;

end process;
 
process(current_state)
begin
if current_state=s1 then 
pre_A<='X';pre_B<='X';pre_C<='X';Error<='0';
 elsif current_state = s2 then
pre_A<='0';pre_B<='0';pre_C<='0';Error<='0';
 elsif current_state = s3 then
pre_A<='X';pre_B<='X';pre_C<='1';Error<='0';
 elsif current_state = s4 then
pre_A<='X';pre_B<='0';pre_C<='X';Error<='0';
 elsif current_state = s5 then 
pre_A<='1';pre_B<='0';pre_C<='1';Error<='0';
 elsif current_state = s6 then 
pre_A<='X';pre_B<='1';pre_C<='1';Error<='0';
 elsif current_state = E1 then 
pre_A<='X';pre_B<='X';pre_C<='X';Error<='1';
 elsif current_state = s7 then 
pre_A<='0';pre_B<='X';pre_C<='X';Error<='0';
elsif current_state = s8 then 
pre_A<='0';pre_B<='1';pre_C<='1';Error<='0';
elsif current_state = s9 then 
pre_A<='1';pre_B<='X';pre_C<='1';Error<='0'; 
elsif current_state=s10 then
pre_A<='1';pre_B<='1';pre_C<='1';Error<='0';
end if;
end process;

process(ex_A,ex_B,ex_c)
begin
if ex_A='X'and ex_B='X' and ex_C='X' then
next_state<=s1;
elsif ex_A='X' and ex_B='X' and ex_C='0' then
next_state<=s2;
elsif ex_A='X' and ex_B='X' and ex_C='1' then
next_state<=s3;
elsif ex_A='X' and ex_B='0' and ex_C='X' then
next_state<=s4;
elsif ex_A='X' and ex_B='0' and ex_C='0' then
next_state<=s2;
elsif ex_A='X' and ex_B='0' and ex_C='1' then
next_state<=s5;
elsif ex_A='X' and ex_B='1' and ex_C='X' then
next_state<=s6;
elsif ex_A='X' and ex_B='1' and ex_C='0' then
next_state<=E1;
elsif ex_A='X' and ex_B='1' and ex_C='1' then
next_state<=s6;
elsif ex_A='0' and ex_B='X' and ex_C='X' then
next_state<=s2;
elsif ex_A='0' and ex_B='X' and ex_C='0' then
next_state<=s2;
elsif ex_A='0' and ex_B='X' and ex_C='1' then
next_state<=s8;
elsif ex_A='0' and ex_B='0' and ex_C='X' then
next_state<=s2;
elsif ex_A='0' and ex_B='0' and ex_C='0' then
next_state<=s2;
elsif ex_A='0' and ex_B='0' and ex_C='1' then
next_state<=E1;
elsif ex_A='0' and ex_B='1' and ex_C='X' then
next_state<=s8;
elsif ex_A='0' and ex_B='1' and ex_C='0' then
next_state<=E1;
elsif ex_A='0' and ex_B='1' and ex_C='1' then
next_state<=s8;
elsif ex_A='1' and ex_B='X' and ex_C='X' then
next_state<=s9;
elsif ex_A='1' and ex_B='X' and ex_C='0' then
next_state<=E1;
elsif ex_A='1' and ex_B='X' and ex_C='1' then
next_state<=s9;
elsif ex_A='1' and ex_B='0' and ex_C='X' then
next_state<=s5;
elsif ex_A='1' and ex_B='0' and ex_C='0' then
next_state<=E1;
elsif ex_A='1' and ex_B='0' and ex_C='1' then
next_state<=s5;
elsif ex_A='1' and ex_B='1' and ex_C='X' then
next_state<=s10;
elsif ex_A='1' and ex_B='1' and ex_C='0' then
next_state<=E1;
elsif ex_A='1' and ex_B='1' and ex_C='1' then
next_state<=s10;
end if;
end process;
end FSM;