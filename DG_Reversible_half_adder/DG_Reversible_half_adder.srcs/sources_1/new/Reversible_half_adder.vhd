library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.all;

entity Reversible_half_adder is
--  Port ( );
port(
e_A,e_B,e_sum,e_carry: in std_logic;
p_A,p_B,p_sum,p_carry: out std_logic;
clk,clock,Res:in std_logic;
E9: buffer std_logic
);
end Reversible_half_adder;

architecture Structure of Reversible_half_adder is

component Reversible_AND_Gate is
port( 
ex_A,ex_B,ex_C:IN std_logic;
pre_A,pre_B,pre_C:OUT std_logic;
Clock,reset:IN std_logic;
Error:OUT std_logic
);
end component;
component Reversible_XOR_Gate is
port(
ex_A,ex_B,ex_C:IN std_logic;
pre_A,pre_B,pre_C:OUT std_logic;
Clock,reset:IN std_logic;
Error:OUT std_logic
);
end component;
component Resolver is
port(
A,B:IN std_logic;
clock,Reset:IN std_logic;
C,Error:OUT std_logic
);
end component;

signal A1,A2,A3,A4,B1,B2,B3,B4,C1,C2,C3,C4,E1,E2,E3,E4,E5,E6,E7,E8: std_logic;
begin
Gate1: Resolver port map ( 
 A => e_A,
 B => A4,
 C => A1,
 clock => clk,
 reset => res,
 Error => E1
 );
Gate2: Resolver port map(
A => e_B,
B => B4,
C => B1,
clock => clk,
reset => res,
Error => E2
);
Gate3: Resolver Port map(
A => e_A,
B => A3,
C => A2,
clock => clk,
reset => res,
Error => E3
);   
Gate4: Resolver Port map(
A => e_B,
B => B3,
C => B2,
clock => clk,
reset => res,
Error => E4
); 
Gate5: Resolver Port map(
A => A3,
B => A4,
C => C1,
clock => clk,
reset => res,
Error => E7
); 
Gate6: Resolver Port map(
A => B3,
B => B4,
C => C2,
clock => clk,
reset => res,
Error => E8
); 
Gate7: Reversible_XOR_Gate port map(
ex_A => A1,
ex_B => B1,
ex_C => e_sum,
pre_A => A3,
pre_B => B3,
pre_c => c3,
clock => clock,
Reset => Res,
Error => E5
);
Gate8: Reversible_AND_Gate port map(
ex_A => A2,
ex_B => B2,
ex_C => e_carry,
pre_A => A4,
pre_B => B4,
pre_c => c4,
clock => clk,
Reset => Res,
Error => E6
);
P_A<=c1 when E9 = '0' else 'X';
P_B<=c2 when E9 ='0' else 'X';
P_sum<=c3 when E9 ='0' else 'X';
P_carry<=c4 when E9 ='0' else 'X';
E9 <= E1 or E2 or E3 or E4 or E5 or E6 or E7 or E8;
end structure;