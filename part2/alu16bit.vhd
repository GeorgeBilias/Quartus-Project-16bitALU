library ieee;
use ieee.std_logic_1164.all;
use work.components2.all;

entity ControlCircuit is
 port(opcode: in std_logic_vector(2 downto 0);
      AInvert,BInvert: out std_logic;
		Operation: out std_logic_vector(1 downto 0);
	   CarryIn: out std_logic);
end ControlCircuit;	

--architecture of Control Circuit

architecture ArControlCircuit of ControlCircuit is
 begin
  process(opcode)
   begin
	 case opcode is
	 --AND
	  when "000" =>
	   Operation <= "00";
		AInvert <= '0';
		BInvert <= '0';
		CarryIn <= '0';
	 --OR
	 when "001" =>
	   Operation <= "01";
		AInvert <= '0';
		BInvert <= '0';
		CarryIn <= '0';
	 --ADD
	 when "010" =>
	   Operation <= "10";
		AInvert <= '0';
		BInvert <= '0';
		CarryIn <= '0';
	 --SUB
	 when "011" =>
	   Operation <= "10";
		AInvert <= '0';
		BInvert <= '1';
		CarryIn <= '1';
	 --NOR
	 when "100" =>
	   Operation <= "00";
		AInvert <= '1';
		BInvert <= '1';
		CarryIn <= '0';
	 --NAND
	 when "101" =>
	   Operation <= "01";
		AInvert <= '1';
		BInvert <= '1';
		CarryIn <= '0';
	 --XOR
	 when "110" =>
	   Operation <= "11";
		AInvert <= '0';
		BInvert <= '0';
		CarryIn <= '0';
	 when others =>
	   Operation <= "00";
		AInvert <= '0';
		BInvert <= '0';
		CarryIn <= '0';
	 end case;
	 end process;

end ArControlCircuit;

--entity alu16bit

library ieee;
use ieee.std_logic_1164.all;
use work.components2.all;
use work.alu1comp.all;

entity alu16bit is
 port(a,b: in std_logic_vector(15 downto 0);
      opcode: in std_logic_vector(2 downto 0);
		Result: out std_logic_vector(15 downto 0);
		overflow: out std_logic);
end alu16bit;

--architecture alu16bit

architecture Aralu16bit of alu16bit is
 
 --control circuit component
  component ControlCircuit is
 port(opcode: in std_logic_vector(2 downto 0);
      AInvert,BInvert: out std_logic;
		Operation: out std_logic_vector(1 downto 0);
		CarryIn: out std_logic);
end component;

  signal insertA,insertB,CarryIn: std_logic;
  signal CarryOut: std_logic_vector(0 to 15);
  signal Operation: std_logic_vector(1 downto 0);
  
  begin
  
  a1:ControlCircuit port map(opcode,insertA,insertB,Operation,CarryIn);
  
  ALU0: alu1bit port map(a(0),b(0),CarryIn,insertA,InsertB,Operation,Result(0),CarryOut(0));
  ALU1: alu1bit port map(a(1),b(1),CarryOut(0),insertA,insertB,Operation,Result(1),CarryOut(1));
  ALU2: alu1bit port map(a(2),b(2),CarryOut(1),insertA,insertB,Operation,Result(2),CarryOut(2));
  ALU3: alu1bit port map(a(3),b(3),CarryOut(2),insertA,insertB,Operation,Result(3),CarryOut(3));
  ALU4: alu1bit port map(a(4),b(4),CarryOut(3),insertA,insertB,Operation,Result(4),CarryOut(4));
  ALU5: alu1bit port map(a(5),b(5),CarryOut(4),insertA,insertB,Operation,Result(5),CarryOut(5));
  ALU6: alu1bit port map(a(6),b(6),CarryOut(5),insertA,insertB,Operation,Result(6),CarryOut(6));
  ALU7: alu1bit port map(a(7),b(7),CarryOut(6),insertA,insertB,Operation,Result(7),CarryOut(7));
  ALU8: alu1bit port map(a(8),b(8),CarryOut(7),insertA,insertB,Operation,Result(8),CarryOut(8));
  ALU9: alu1bit port map(a(9),b(9),CarryOut(8),insertA,insertB,Operation,Result(9),CarryOut(9));
  ALU10: alu1bit port map(a(10),b(10),CarryOut(9),insertA,insertB,Operation,Result(10),CarryOut(10)); 
  ALU11: alu1bit port map(a(11),b(11),CarryOut(10),insertA,insertB,Operation,Result(11),CarryOut(11));
  ALU12: alu1bit port map(a(12),b(12),CarryOut(11),insertA,insertB,Operation,Result(12),CarryOut(12));
  ALU13: alu1bit port map(a(13),b(13),CarryOut(12),insertA,insertB,Operation,Result(13),CarryOut(13));
  ALU14: alu1bit port map(a(14),b(14),CarryOut(13),insertA,insertB,Operation,Result(14),CarryOut(14));
  ALU15: alu1bit port map(a(15),b(15),CarryOut(14),insertA,insertB,Operation,Result(15),CarryOut(15));
  
  Overflow <= CarryOut(14) xor CarryOut(15);

end Aralu16bit;