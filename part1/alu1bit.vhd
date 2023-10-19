--entity alu1bit

library ieee;
use ieee.std_logic_1164.all;
use work.components.all;

entity alu1bit is
 port(a,b,CarryIn,AInvert,BInvert : in std_logic;
		Operation:in std_logic_vector(1 downto 0);
      Result,CarryOut: out std_logic);
end alu1bit;

--architecture alu1bit

architecture Aralu1bit of alu1bit is
 signal nota,notb,finala,finalb,outAnd,outOr,outXor,sum: std_logic;
 
 begin
  u0: entNotA port map(a,nota);
  u1: mymux2to1a port map(a,nota,AInvert,finala);
  u2: entNotB port map(b,notb);
  u3: mymux2to1b port map(b,notb,BInvert,finalb);
  u4: AndGate port map(finala,finalb,outAnd);
  u5: OrGate port map(finala,finalb,outOr);
  u6: FullAdder port map(CarryIn,finala,finalb,sum,CarryOut);
  u7: XorGate port map(finala,finalb,outXor);
  u8: mux4to1 port map(outAnd,outOr,sum,outXor,Operation,Result);
  
end Aralu1bit;