library ieee;
use ieee.std_logic_1164.all;

package components is

--NotA component

component entNotA is
 port(a : in std_logic;
      nota :out std_logic);
end  component;

--mymux2to1a component

component mymux2to1a is
 port(a,nota : in std_logic;
      AInvert: in std_logic;
		finala: out std_logic);
end component;

--NotB component

component entNotB is
 port(b : in std_logic;
      notb :out std_logic);
end  component;

--mymux2to1b component

component mymux2to1b is
 port(b,notb : in std_logic;
      BInvert: in std_logic;
		finalb: out std_logic);
end component;

--And Gate component

component AndGate is
 port(finala,finalb : in std_logic;
      outAnd : out std_logic);
end component;

--0r Gate component

component OrGate is
 port(finala,finalb : in std_logic;
      outOr : out std_logic);
end component;

--Xor Gate component

component XorGate is
 port(finala,finalb : in std_logic;
      outXor : out std_logic);
end component;

--Full Adder component

component FullAdder is
 port(CarryIn,finala,finalb : in std_logic;
      sum,CarryOut : out std_logic);
end component;

--Multiplexer 4to1 for ALU component

component mux4to1 is
 port(outAnd,outOr,sum,outXor : in std_logic;
      Operation : in std_logic_vector(1 downto 0);
      Result: out std_logic);
end component;

end package components;

--entity NotA

library ieee;
use ieee.std_logic_1164.all;

entity entNotA is
  port(a : in std_logic;
       nota : out std_logic);
end entNotA;

--architecture of NotA

architecture arNotA of entNotA is
 begin
  nota <= not a;
end ArNotA;

--entity of multiplexer 2to1 for A aka AInverter

library ieee;
use ieee.std_logic_1164.all;

entity mymux2to1a is
 port(a,nota : in std_logic;
      AInvert: in std_logic;
      finala : out std_logic);
end mymux2to1a;

--architecture of multiplexer 2to1 for A aka AInverter

architecture Armymux2to1a of mymux2to1a is
 begin
  with AInvert select
   finala <= a when '0',
	  nota when others;
end Armymux2to1a;

--entity NotB

library ieee;
use ieee.std_logic_1164.all;

entity entNotB is
  port(b : in std_logic;
       notb : out std_logic);
end entNotB;

--architecture of NotB

architecture arNotB of entNotB is
 begin
  notb <= not b;
end ArNotB;

--entity of multiplexer 2to1 for B aka BInverter

library ieee;
use ieee.std_logic_1164.all;

entity mymux2to1b is
 port(b,notb : in std_logic;
      BInvert: in std_logic;
      finalb : out std_logic);
end mymux2to1b;

--architecture of multiplexer 2to1 for B aka BInverter

architecture Armymux2to1b of mymux2to1b is
 begin
  with BInvert select
   finalb <= b when '0',
	  notb when others;
end Armymux2to1b;

--entity of AndGate

library ieee;
use ieee.std_logic_1164.all;

entity AndGate is
 port(finala,finalb : in std_logic;
      outAnd : out std_logic);
end AndGate;

--architecture of And Gate

architecture ArAndGate of AndGate is
 begin
  outAnd <= finala and finalb;
end ArAndGate;

--entity of OrGate

library ieee;
use ieee.std_logic_1164.all;

entity OrGate is
 port(finala,finalb : in std_logic;
      outOr : out std_logic);
end OrGate;

--architecture of Or Gate

architecture ArOrGate of OrGate is
 begin
  outOr <= finala or finalb;
end ArOrGate;

--entity of XorGate

library ieee;
use ieee.std_logic_1164.all;

entity XorGate is
 port(finala,finalb : in std_logic;
      outXor : out std_logic);
end XorGate;

--architecture of Xor Gate

architecture ArXorGate of XorGate is
 begin
  outXor <= finala xor finalb;
end ArXorGate;

--entity of FullAdder

library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
 port(CarryIn,finala,finalb : in std_logic;
      sum, CarryOut: out std_logic);
end FullAdder;

--architecture of Full Adder

architecture ArFullAdder of FullAdder is
 begin
  CarryOut <= (finalb and CarryIn) or (finala and CarryIn) or (finala and finalb);
  sum <= (finala and not finalb and not CarryIn) or (not finala and finalb and not CarryIn) or (not finala and not finalb and CarryIn) or (finala and finalb and CarryIn);
end ArFullAdder;

--entity of multiplexer 4to1 for ALU

library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is
 port(outAnd,outOr,sum,outXor : in std_logic;
      Operation : in std_logic_vector(1 downto 0);
      Result: out std_logic);
end mux4to1;

--architecture of multiplexer 4to1 for ALU

architecture Armux4to1 of mux4to1 is
 begin
  with Operation select
   Result <= outAnd when "00",
	  outOr when "01",
	  sum when "10",
	  outXor when others;
end Armux4to1;
  
