-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "05/31/2021 13:46:12"

-- 
-- Device: Altera 5M160ZT100C4 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	alu16bit IS
    PORT (
	a : IN std_logic_vector(15 DOWNTO 0);
	b : IN std_logic_vector(15 DOWNTO 0);
	opcode : IN std_logic_vector(2 DOWNTO 0);
	Result : BUFFER std_logic_vector(15 DOWNTO 0);
	overflow : BUFFER std_logic
	);
END alu16bit;

-- Design Ports Information


ARCHITECTURE structure OF alu16bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_opcode : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_overflow : std_logic;
SIGNAL \ALU0|u8|Mux0~2_combout\ : std_logic;
SIGNAL \ALU0|u8|Mux0~3_combout\ : std_logic;
SIGNAL \ALU0|u8|Mux0~4_combout\ : std_logic;
SIGNAL \ALU1|u3|finalb~0_combout\ : std_logic;
SIGNAL \a1|Mux0~0_combout\ : std_logic;
SIGNAL \a1|Mux1~0_combout\ : std_logic;
SIGNAL \ALU0|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU0|u6|CarryOut~1_combout\ : std_logic;
SIGNAL \ALU1|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU1|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU1|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU2|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU2|u3|finalb~0_combout\ : std_logic;
SIGNAL \a1|Mux3~0_combout\ : std_logic;
SIGNAL \ALU1|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU2|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU2|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU3|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU2|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU3|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU3|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU3|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU4|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU3|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU4|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU4|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU4|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU5|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU4|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU5|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU5|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU5|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU6|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU5|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU6|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU6|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU6|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU6|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU7|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU7|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU7|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU7|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU8|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU7|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU8|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU8|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU8|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU8|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU9|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU9|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU9|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU9|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU10|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU10|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU9|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU10|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU10|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU11|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU10|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU11|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU11|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU11|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU11|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU12|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU12|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU12|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU12|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU13|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU13|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU12|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU13|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU13|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU13|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU14|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU14|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU14|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU14|u8|Mux0~1_combout\ : std_logic;
SIGNAL \ALU15|u3|finalb~0_combout\ : std_logic;
SIGNAL \ALU15|u6|sum~0_combout\ : std_logic;
SIGNAL \ALU14|u6|CarryOut~0_combout\ : std_logic;
SIGNAL \ALU15|u8|Mux0~0_combout\ : std_logic;
SIGNAL \ALU15|u8|Mux0~1_combout\ : std_logic;
SIGNAL \overflow~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \opcode~combout\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(15 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_opcode <= opcode;
Result <= ww_Result;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(1),
	combout => \opcode~combout\(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(0),
	combout => \opcode~combout\(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\opcode[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_opcode(2),
	combout => \opcode~combout\(2));

-- Location: PIN_74,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: LC_X7_Y4_N9
\ALU0|u8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \ALU0|u8|Mux0~2_combout\ = (\opcode~combout\(1) & (\b~combout\(0) & ((!\opcode~combout\(2)) # (!\opcode~combout\(0))))) # (!\opcode~combout\(1) & ((\b~combout\(0) & (\opcode~combout\(0))) # (!\b~combout\(0) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6e50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU0|u8|Mux0~2_combout\);

-- Location: LC_X7_Y4_N0
\ALU0|u8|Mux0~3\ : maxv_lcell
-- Equation(s):
-- \ALU0|u8|Mux0~3_combout\ = (\opcode~combout\(1) & (\b~combout\(0) $ (((!\opcode~combout\(2)) # (!\opcode~combout\(0)))))) # (!\opcode~combout\(1) & ((\b~combout\(0) & ((!\opcode~combout\(2)))) # (!\b~combout\(0) & (\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "856e",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(2),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU0|u8|Mux0~3_combout\);

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LC_X7_Y4_N8
\ALU0|u8|Mux0~4\ : maxv_lcell
-- Equation(s):
-- \ALU0|u8|Mux0~4_combout\ = ((\a~combout\(0) & ((\ALU0|u8|Mux0~3_combout\))) # (!\a~combout\(0) & (\ALU0|u8|Mux0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU0|u8|Mux0~2_combout\,
	datac => \ALU0|u8|Mux0~3_combout\,
	datad => \a~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU0|u8|Mux0~4_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LC_X7_Y4_N5
\ALU1|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU1|u3|finalb~0_combout\ = \b~combout\(1) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96b4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(2),
	datac => \b~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU1|u3|finalb~0_combout\);

-- Location: LC_X5_Y4_N5
\a1|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \a1|Mux0~0_combout\ = (((\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f333",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a1|Mux0~0_combout\);

-- Location: LC_X5_Y4_N4
\a1|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \a1|Mux1~0_combout\ = ((\opcode~combout\(1) & (\opcode~combout\(2) & !\opcode~combout\(0))) # (!\opcode~combout\(1) & ((\opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a1|Mux1~0_combout\);

-- Location: LC_X7_Y4_N4
\ALU0|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU0|u6|CarryOut~0_combout\ = (\b~combout\(0) & (\a~combout\(0) & ((\opcode~combout\(1)) # (!\opcode~combout\(2))))) # (!\b~combout\(0) & ((\opcode~combout\(1) & ((!\opcode~combout\(2)))) # (!\opcode~combout\(1) & (!\a~combout\(0) & 
-- \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8c1a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \a~combout\(0),
	datac => \opcode~combout\(2),
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU0|u6|CarryOut~0_combout\);

-- Location: LC_X7_Y4_N1
\ALU0|u6|CarryOut~1\ : maxv_lcell
-- Equation(s):
-- \ALU0|u6|CarryOut~1_combout\ = (\ALU0|u6|CarryOut~0_combout\ & (((\opcode~combout\(0)) # (\b~combout\(0))) # (!\opcode~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0d0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \opcode~combout\(0),
	datac => \ALU0|u6|CarryOut~0_combout\,
	datad => \b~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU0|u6|CarryOut~1_combout\);

-- Location: LC_X7_Y4_N6
\ALU1|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU1|u8|Mux0~0_combout\ = ((\a1|Mux0~0_combout\ & (\a1|Mux1~0_combout\)) # (!\a1|Mux0~0_combout\ & (!\a1|Mux1~0_combout\ & \ALU0|u6|CarryOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a1|Mux0~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \ALU0|u6|CarryOut~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU1|u8|Mux0~0_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LC_X7_Y4_N2
\ALU1|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU1|u6|sum~0_combout\ = (\a~combout\(1) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f03c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(2),
	datac => \a~combout\(1),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU1|u6|sum~0_combout\);

-- Location: LC_X7_Y4_N3
\ALU1|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU1|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU1|u3|finalb~0_combout\ & ((\ALU1|u8|Mux0~0_combout\) # (\ALU1|u6|sum~0_combout\))) # (!\ALU1|u3|finalb~0_combout\ & (\ALU1|u8|Mux0~0_combout\ & \ALU1|u6|sum~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU1|u3|finalb~0_combout\ $ (\ALU1|u8|Mux0~0_combout\ $ (\ALU1|u6|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU1|u3|finalb~0_combout\,
	datab => \a1|Mux0~0_combout\,
	datac => \ALU1|u8|Mux0~0_combout\,
	datad => \ALU1|u6|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU1|u8|Mux0~1_combout\);

-- Location: PIN_82,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LC_X6_Y4_N5
\ALU2|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU2|u6|sum~0_combout\ = \a~combout\(2) $ (((!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "99aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(2),
	datab => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU2|u6|sum~0_combout\);

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: LC_X6_Y4_N0
\ALU2|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU2|u3|finalb~0_combout\ = \b~combout\(2) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c378",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \b~combout\(2),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU2|u3|finalb~0_combout\);

-- Location: LC_X5_Y4_N2
\a1|Mux3~0\ : maxv_lcell
-- Equation(s):
-- \a1|Mux3~0_combout\ = ((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \a1|Mux3~0_combout\);

-- Location: LC_X7_Y4_N7
\ALU1|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU1|u6|CarryOut~0_combout\ = (\ALU0|u6|CarryOut~1_combout\ & ((\ALU1|u6|sum~0_combout\) # (\a1|Mux3~0_combout\ $ (\b~combout\(1))))) # (!\ALU0|u6|CarryOut~1_combout\ & (\ALU1|u6|sum~0_combout\ & (\a1|Mux3~0_combout\ $ (\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux3~0_combout\,
	datab => \ALU0|u6|CarryOut~1_combout\,
	datac => \b~combout\(1),
	datad => \ALU1|u6|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU1|u6|CarryOut~0_combout\);

-- Location: LC_X6_Y4_N2
\ALU2|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU2|u8|Mux0~0_combout\ = (\a1|Mux0~0_combout\ & (\a1|Mux1~0_combout\)) # (!\a1|Mux0~0_combout\ & (!\a1|Mux1~0_combout\ & ((\ALU1|u6|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9988",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux0~0_combout\,
	datab => \a1|Mux1~0_combout\,
	datad => \ALU1|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU2|u8|Mux0~0_combout\);

-- Location: LC_X6_Y4_N1
\ALU2|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU2|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU2|u6|sum~0_combout\ & ((\ALU2|u3|finalb~0_combout\) # (\ALU2|u8|Mux0~0_combout\))) # (!\ALU2|u6|sum~0_combout\ & (\ALU2|u3|finalb~0_combout\ & \ALU2|u8|Mux0~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU2|u6|sum~0_combout\ $ (\ALU2|u3|finalb~0_combout\ $ (\ALU2|u8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2|u6|sum~0_combout\,
	datab => \ALU2|u3|finalb~0_combout\,
	datac => \a1|Mux0~0_combout\,
	datad => \ALU2|u8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU2|u8|Mux0~1_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LC_X6_Y4_N6
\ALU3|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU3|u6|sum~0_combout\ = (\a~combout\(3) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \a~combout\(3),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU3|u6|sum~0_combout\);

-- Location: LC_X6_Y4_N8
\ALU2|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU2|u6|CarryOut~0_combout\ = (\ALU2|u6|sum~0_combout\ & ((\ALU1|u6|CarryOut~0_combout\) # (\b~combout\(2) $ (\a1|Mux3~0_combout\)))) # (!\ALU2|u6|sum~0_combout\ & (\ALU1|u6|CarryOut~0_combout\ & (\b~combout\(2) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \a1|Mux3~0_combout\,
	datac => \ALU2|u6|sum~0_combout\,
	datad => \ALU1|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU2|u6|CarryOut~0_combout\);

-- Location: LC_X6_Y4_N9
\ALU3|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU3|u8|Mux0~0_combout\ = (\a1|Mux0~0_combout\ & (\a1|Mux1~0_combout\)) # (!\a1|Mux0~0_combout\ & (!\a1|Mux1~0_combout\ & ((\ALU2|u6|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9988",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux0~0_combout\,
	datab => \a1|Mux1~0_combout\,
	datad => \ALU2|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU3|u8|Mux0~0_combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LC_X6_Y4_N3
\ALU3|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU3|u3|finalb~0_combout\ = \b~combout\(3) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9d62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(0),
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU3|u3|finalb~0_combout\);

-- Location: LC_X6_Y4_N4
\ALU3|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU3|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU3|u6|sum~0_combout\ & ((\ALU3|u8|Mux0~0_combout\) # (\ALU3|u3|finalb~0_combout\))) # (!\ALU3|u6|sum~0_combout\ & (\ALU3|u8|Mux0~0_combout\ & \ALU3|u3|finalb~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU3|u6|sum~0_combout\ $ (\ALU3|u8|Mux0~0_combout\ $ (\ALU3|u3|finalb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e986",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU3|u6|sum~0_combout\,
	datab => \ALU3|u8|Mux0~0_combout\,
	datac => \a1|Mux0~0_combout\,
	datad => \ALU3|u3|finalb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU3|u8|Mux0~1_combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: LC_X3_Y2_N8
\ALU4|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU4|u3|finalb~0_combout\ = \b~combout\(4) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(4),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU4|u3|finalb~0_combout\);

-- Location: LC_X6_Y4_N7
\ALU3|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU3|u6|CarryOut~0_combout\ = (\ALU2|u6|CarryOut~0_combout\ & ((\ALU3|u6|sum~0_combout\) # (\a1|Mux3~0_combout\ $ (\b~combout\(3))))) # (!\ALU2|u6|CarryOut~0_combout\ & (\ALU3|u6|sum~0_combout\ & (\a1|Mux3~0_combout\ $ (\b~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b2e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU2|u6|CarryOut~0_combout\,
	datab => \a1|Mux3~0_combout\,
	datac => \ALU3|u6|sum~0_combout\,
	datad => \b~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU3|u6|CarryOut~0_combout\);

-- Location: LC_X3_Y2_N9
\ALU4|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU4|u8|Mux0~0_combout\ = ((\a1|Mux0~0_combout\ & (\a1|Mux1~0_combout\)) # (!\a1|Mux0~0_combout\ & (!\a1|Mux1~0_combout\ & \ALU3|u6|CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a1|Mux0~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \ALU3|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU4|u8|Mux0~0_combout\);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LC_X3_Y2_N7
\ALU4|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU4|u6|sum~0_combout\ = (\a~combout\(4) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU4|u6|sum~0_combout\);

-- Location: LC_X3_Y2_N2
\ALU4|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU4|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU4|u3|finalb~0_combout\ & ((\ALU4|u8|Mux0~0_combout\) # (\ALU4|u6|sum~0_combout\))) # (!\ALU4|u3|finalb~0_combout\ & (\ALU4|u8|Mux0~0_combout\ & \ALU4|u6|sum~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU4|u3|finalb~0_combout\ $ (\ALU4|u8|Mux0~0_combout\ $ (\ALU4|u6|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU4|u3|finalb~0_combout\,
	datab => \ALU4|u8|Mux0~0_combout\,
	datac => \ALU4|u6|sum~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU4|u8|Mux0~1_combout\);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LC_X3_Y2_N6
\ALU5|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU5|u6|sum~0_combout\ = \a~combout\(5) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \a~combout\(5),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU5|u6|sum~0_combout\);

-- Location: LC_X3_Y2_N0
\ALU4|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU4|u6|CarryOut~0_combout\ = (\ALU4|u6|sum~0_combout\ & ((\ALU3|u6|CarryOut~0_combout\) # (\a1|Mux3~0_combout\ $ (\b~combout\(4))))) # (!\ALU4|u6|sum~0_combout\ & (\ALU3|u6|CarryOut~0_combout\ & (\a1|Mux3~0_combout\ $ (\b~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f660",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux3~0_combout\,
	datab => \b~combout\(4),
	datac => \ALU4|u6|sum~0_combout\,
	datad => \ALU3|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU4|u6|CarryOut~0_combout\);

-- Location: LC_X3_Y2_N1
\ALU5|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU5|u8|Mux0~0_combout\ = (\a1|Mux1~0_combout\ & (((\a1|Mux0~0_combout\)))) # (!\a1|Mux1~0_combout\ & (\ALU4|u6|CarryOut~0_combout\ & ((!\a1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux1~0_combout\,
	datab => \ALU4|u6|CarryOut~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU5|u8|Mux0~0_combout\);

-- Location: PIN_34,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LC_X3_Y2_N4
\ALU5|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU5|u3|finalb~0_combout\ = \b~combout\(5) $ (((\opcode~combout\(2) & ((!\opcode~combout\(1)))) # (!\opcode~combout\(2) & (\opcode~combout\(0) & \opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9c66",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(5),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU5|u3|finalb~0_combout\);

-- Location: LC_X3_Y2_N3
\ALU5|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU5|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU5|u6|sum~0_combout\ & ((\ALU5|u8|Mux0~0_combout\) # (\ALU5|u3|finalb~0_combout\))) # (!\ALU5|u6|sum~0_combout\ & (\ALU5|u8|Mux0~0_combout\ & \ALU5|u3|finalb~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU5|u6|sum~0_combout\ $ (\ALU5|u8|Mux0~0_combout\ $ (\ALU5|u3|finalb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU5|u6|sum~0_combout\,
	datab => \ALU5|u8|Mux0~0_combout\,
	datac => \ALU5|u3|finalb~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU5|u8|Mux0~1_combout\);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: LC_X3_Y3_N6
\ALU6|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU6|u3|finalb~0_combout\ = \b~combout\(6) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c378",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \b~combout\(6),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU6|u3|finalb~0_combout\);

-- Location: LC_X3_Y2_N5
\ALU5|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU5|u6|CarryOut~0_combout\ = (\ALU5|u6|sum~0_combout\ & ((\ALU4|u6|CarryOut~0_combout\) # (\b~combout\(5) $ (\a1|Mux3~0_combout\)))) # (!\ALU5|u6|sum~0_combout\ & (\ALU4|u6|CarryOut~0_combout\ & (\b~combout\(5) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "be28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU5|u6|sum~0_combout\,
	datab => \b~combout\(5),
	datac => \a1|Mux3~0_combout\,
	datad => \ALU4|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU5|u6|CarryOut~0_combout\);

-- Location: LC_X3_Y3_N0
\ALU6|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU6|u8|Mux0~0_combout\ = ((\a1|Mux1~0_combout\ & ((\a1|Mux0~0_combout\))) # (!\a1|Mux1~0_combout\ & (\ALU5|u6|CarryOut~0_combout\ & !\a1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU5|u6|CarryOut~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU6|u8|Mux0~0_combout\);

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LC_X3_Y3_N4
\ALU6|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU6|u6|sum~0_combout\ = \a~combout\(6) $ (((!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9a9a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a~combout\(6),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU6|u6|sum~0_combout\);

-- Location: LC_X3_Y3_N8
\ALU6|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU6|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU6|u3|finalb~0_combout\ & ((\ALU6|u8|Mux0~0_combout\) # (\ALU6|u6|sum~0_combout\))) # (!\ALU6|u3|finalb~0_combout\ & (\ALU6|u8|Mux0~0_combout\ & \ALU6|u6|sum~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU6|u3|finalb~0_combout\ $ (\ALU6|u8|Mux0~0_combout\ $ (\ALU6|u6|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU6|u3|finalb~0_combout\,
	datab => \ALU6|u8|Mux0~0_combout\,
	datac => \ALU6|u6|sum~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU6|u8|Mux0~1_combout\);

-- Location: LC_X3_Y3_N2
\ALU6|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU6|u6|CarryOut~0_combout\ = (\ALU5|u6|CarryOut~0_combout\ & ((\ALU6|u6|sum~0_combout\) # (\b~combout\(6) $ (\a1|Mux3~0_combout\)))) # (!\ALU5|u6|CarryOut~0_combout\ & (\ALU6|u6|sum~0_combout\ & (\b~combout\(6) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(6),
	datab => \ALU5|u6|CarryOut~0_combout\,
	datac => \ALU6|u6|sum~0_combout\,
	datad => \a1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU6|u6|CarryOut~0_combout\);

-- Location: LC_X3_Y3_N3
\ALU7|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU7|u8|Mux0~0_combout\ = ((\a1|Mux1~0_combout\ & ((\a1|Mux0~0_combout\))) # (!\a1|Mux1~0_combout\ & (\ALU6|u6|CarryOut~0_combout\ & !\a1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU6|u6|CarryOut~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU7|u8|Mux0~0_combout\);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: LC_X3_Y3_N9
\ALU7|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU7|u3|finalb~0_combout\ = \b~combout\(7) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c738",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \b~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU7|u3|finalb~0_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LC_X3_Y3_N7
\ALU7|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU7|u6|sum~0_combout\ = (\a~combout\(7) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU7|u6|sum~0_combout\);

-- Location: LC_X3_Y3_N5
\ALU7|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU7|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU7|u8|Mux0~0_combout\ & ((\ALU7|u3|finalb~0_combout\) # (\ALU7|u6|sum~0_combout\))) # (!\ALU7|u8|Mux0~0_combout\ & (\ALU7|u3|finalb~0_combout\ & \ALU7|u6|sum~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU7|u8|Mux0~0_combout\ $ (\ALU7|u3|finalb~0_combout\ $ (\ALU7|u6|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU7|u8|Mux0~0_combout\,
	datab => \ALU7|u3|finalb~0_combout\,
	datac => \ALU7|u6|sum~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU7|u8|Mux0~1_combout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(8),
	combout => \b~combout\(8));

-- Location: LC_X6_Y3_N0
\ALU8|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU8|u3|finalb~0_combout\ = \b~combout\(8) $ (((\opcode~combout\(1) & (!\opcode~combout\(2) & \opcode~combout\(0))) # (!\opcode~combout\(1) & (\opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "969a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(8),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU8|u3|finalb~0_combout\);

-- Location: LC_X3_Y3_N1
\ALU7|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU7|u6|CarryOut~0_combout\ = (\ALU6|u6|CarryOut~0_combout\ & ((\ALU7|u6|sum~0_combout\) # (\b~combout\(7) $ (\a1|Mux3~0_combout\)))) # (!\ALU6|u6|CarryOut~0_combout\ & (\ALU7|u6|sum~0_combout\ & (\b~combout\(7) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d4e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \ALU6|u6|CarryOut~0_combout\,
	datac => \ALU7|u6|sum~0_combout\,
	datad => \a1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU7|u6|CarryOut~0_combout\);

-- Location: LC_X6_Y3_N6
\ALU8|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU8|u8|Mux0~0_combout\ = ((\a1|Mux1~0_combout\ & ((\a1|Mux0~0_combout\))) # (!\a1|Mux1~0_combout\ & (\ALU7|u6|CarryOut~0_combout\ & !\a1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU7|u6|CarryOut~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU8|u8|Mux0~0_combout\);

-- Location: PIN_85,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(8),
	combout => \a~combout\(8));

-- Location: LC_X6_Y3_N3
\ALU8|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU8|u6|sum~0_combout\ = (\a~combout\(8) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(8),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU8|u6|sum~0_combout\);

-- Location: LC_X6_Y3_N4
\ALU8|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU8|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU8|u3|finalb~0_combout\ & ((\ALU8|u8|Mux0~0_combout\) # (\ALU8|u6|sum~0_combout\))) # (!\ALU8|u3|finalb~0_combout\ & (\ALU8|u8|Mux0~0_combout\ & \ALU8|u6|sum~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU8|u3|finalb~0_combout\ $ (\ALU8|u8|Mux0~0_combout\ $ (\ALU8|u6|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e994",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux0~0_combout\,
	datab => \ALU8|u3|finalb~0_combout\,
	datac => \ALU8|u8|Mux0~0_combout\,
	datad => \ALU8|u6|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU8|u8|Mux0~1_combout\);

-- Location: LC_X6_Y3_N9
\ALU8|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU8|u6|CarryOut~0_combout\ = (\ALU8|u6|sum~0_combout\ & ((\ALU7|u6|CarryOut~0_combout\) # (\a1|Mux3~0_combout\ $ (\b~combout\(8))))) # (!\ALU8|u6|sum~0_combout\ & (\ALU7|u6|CarryOut~0_combout\ & (\a1|Mux3~0_combout\ $ (\b~combout\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU8|u6|sum~0_combout\,
	datab => \ALU7|u6|CarryOut~0_combout\,
	datac => \a1|Mux3~0_combout\,
	datad => \b~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU8|u6|CarryOut~0_combout\);

-- Location: LC_X6_Y3_N2
\ALU9|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU9|u8|Mux0~0_combout\ = (\a1|Mux0~0_combout\ & (((\a1|Mux1~0_combout\)))) # (!\a1|Mux0~0_combout\ & (((!\a1|Mux1~0_combout\ & \ALU8|u6|CarryOut~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux0~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \ALU8|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU9|u8|Mux0~0_combout\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(9),
	combout => \b~combout\(9));

-- Location: LC_X6_Y3_N7
\ALU9|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU9|u3|finalb~0_combout\ = \b~combout\(9) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(1),
	datac => \b~combout\(9),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU9|u3|finalb~0_combout\);

-- Location: PIN_84,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(9),
	combout => \a~combout\(9));

-- Location: LC_X6_Y3_N8
\ALU9|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU9|u6|sum~0_combout\ = \a~combout\(9) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d2d2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \opcode~combout\(1),
	datac => \a~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU9|u6|sum~0_combout\);

-- Location: LC_X6_Y3_N1
\ALU9|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU9|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU9|u8|Mux0~0_combout\ & ((\ALU9|u3|finalb~0_combout\) # (\ALU9|u6|sum~0_combout\))) # (!\ALU9|u8|Mux0~0_combout\ & (\ALU9|u3|finalb~0_combout\ & \ALU9|u6|sum~0_combout\)))) # (!\a1|Mux0~0_combout\ & 
-- (\ALU9|u8|Mux0~0_combout\ $ (\ALU9|u3|finalb~0_combout\ $ (\ALU9|u6|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e994",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux0~0_combout\,
	datab => \ALU9|u8|Mux0~0_combout\,
	datac => \ALU9|u3|finalb~0_combout\,
	datad => \ALU9|u6|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU9|u8|Mux0~1_combout\);

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(10),
	combout => \b~combout\(10));

-- Location: LC_X7_Y2_N5
\ALU10|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU10|u3|finalb~0_combout\ = \b~combout\(10) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c738",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \b~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU10|u3|finalb~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(10),
	combout => \a~combout\(10));

-- Location: LC_X7_Y2_N0
\ALU10|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU10|u6|sum~0_combout\ = (\a~combout\(10) $ (((\opcode~combout\(2) & !\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(10),
	datac => \opcode~combout\(2),
	datad => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU10|u6|sum~0_combout\);

-- Location: LC_X6_Y3_N5
\ALU9|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU9|u6|CarryOut~0_combout\ = (\ALU8|u6|CarryOut~0_combout\ & ((\ALU9|u6|sum~0_combout\) # (\b~combout\(9) $ (\a1|Mux3~0_combout\)))) # (!\ALU8|u6|CarryOut~0_combout\ & (\ALU9|u6|sum~0_combout\ & (\b~combout\(9) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(9),
	datab => \ALU8|u6|CarryOut~0_combout\,
	datac => \a1|Mux3~0_combout\,
	datad => \ALU9|u6|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU9|u6|CarryOut~0_combout\);

-- Location: LC_X7_Y2_N2
\ALU10|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU10|u8|Mux0~0_combout\ = (\a1|Mux0~0_combout\ & (((\a1|Mux1~0_combout\)))) # (!\a1|Mux0~0_combout\ & (\ALU9|u6|CarryOut~0_combout\ & (!\a1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU9|u6|CarryOut~0_combout\,
	datab => \a1|Mux0~0_combout\,
	datac => \a1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU10|u8|Mux0~0_combout\);

-- Location: LC_X7_Y2_N7
\ALU10|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU10|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU10|u3|finalb~0_combout\ & ((\ALU10|u6|sum~0_combout\) # (\ALU10|u8|Mux0~0_combout\))) # (!\ALU10|u3|finalb~0_combout\ & (\ALU10|u6|sum~0_combout\ & \ALU10|u8|Mux0~0_combout\)))) # 
-- (!\a1|Mux0~0_combout\ & (\ALU10|u3|finalb~0_combout\ $ (\ALU10|u6|sum~0_combout\ $ (\ALU10|u8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU10|u3|finalb~0_combout\,
	datab => \a1|Mux0~0_combout\,
	datac => \ALU10|u6|sum~0_combout\,
	datad => \ALU10|u8|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU10|u8|Mux0~1_combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(11),
	combout => \b~combout\(11));

-- Location: LC_X7_Y2_N8
\ALU11|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU11|u3|finalb~0_combout\ = \b~combout\(11) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c738",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(0),
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU11|u3|finalb~0_combout\);

-- Location: LC_X7_Y2_N4
\ALU10|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU10|u6|CarryOut~0_combout\ = (\ALU9|u6|CarryOut~0_combout\ & ((\ALU10|u6|sum~0_combout\) # (\a1|Mux3~0_combout\ $ (\b~combout\(10))))) # (!\ALU9|u6|CarryOut~0_combout\ & (\ALU10|u6|sum~0_combout\ & (\a1|Mux3~0_combout\ $ (\b~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU9|u6|CarryOut~0_combout\,
	datab => \ALU10|u6|sum~0_combout\,
	datac => \a1|Mux3~0_combout\,
	datad => \b~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU10|u6|CarryOut~0_combout\);

-- Location: LC_X7_Y2_N6
\ALU11|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU11|u8|Mux0~0_combout\ = (\a1|Mux0~0_combout\ & (((\a1|Mux1~0_combout\)))) # (!\a1|Mux0~0_combout\ & (\ALU10|u6|CarryOut~0_combout\ & (!\a1|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c2c2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU10|u6|CarryOut~0_combout\,
	datab => \a1|Mux0~0_combout\,
	datac => \a1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU11|u8|Mux0~0_combout\);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(11),
	combout => \a~combout\(11));

-- Location: LC_X7_Y2_N9
\ALU11|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU11|u6|sum~0_combout\ = (\a~combout\(11) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \opcode~combout\(1),
	datac => \opcode~combout\(2),
	datad => \a~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU11|u6|sum~0_combout\);

-- Location: LC_X7_Y2_N1
\ALU11|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU11|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU11|u3|finalb~0_combout\ & ((\ALU11|u8|Mux0~0_combout\) # (\ALU11|u6|sum~0_combout\))) # (!\ALU11|u3|finalb~0_combout\ & (\ALU11|u8|Mux0~0_combout\ & \ALU11|u6|sum~0_combout\)))) # 
-- (!\a1|Mux0~0_combout\ & (\ALU11|u3|finalb~0_combout\ $ (\ALU11|u8|Mux0~0_combout\ $ (\ALU11|u6|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e992",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU11|u3|finalb~0_combout\,
	datab => \a1|Mux0~0_combout\,
	datac => \ALU11|u8|Mux0~0_combout\,
	datad => \ALU11|u6|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU11|u8|Mux0~1_combout\);

-- Location: LC_X7_Y2_N3
\ALU11|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU11|u6|CarryOut~0_combout\ = (\ALU10|u6|CarryOut~0_combout\ & ((\ALU11|u6|sum~0_combout\) # (\a1|Mux3~0_combout\ $ (\b~combout\(11))))) # (!\ALU10|u6|CarryOut~0_combout\ & (\ALU11|u6|sum~0_combout\ & (\a1|Mux3~0_combout\ $ (\b~combout\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU10|u6|CarryOut~0_combout\,
	datab => \ALU11|u6|sum~0_combout\,
	datac => \a1|Mux3~0_combout\,
	datad => \b~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU11|u6|CarryOut~0_combout\);

-- Location: LC_X5_Y2_N5
\ALU12|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU12|u8|Mux0~0_combout\ = ((\a1|Mux0~0_combout\ & (\a1|Mux1~0_combout\)) # (!\a1|Mux0~0_combout\ & (!\a1|Mux1~0_combout\ & \ALU11|u6|CarryOut~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a1|Mux0~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \ALU11|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU12|u8|Mux0~0_combout\);

-- Location: PIN_36,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(12),
	combout => \a~combout\(12));

-- Location: LC_X5_Y2_N1
\ALU12|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU12|u6|sum~0_combout\ = (\a~combout\(12) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(12),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU12|u6|sum~0_combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(12),
	combout => \b~combout\(12));

-- Location: LC_X5_Y2_N7
\ALU12|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU12|u3|finalb~0_combout\ = \b~combout\(12) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "996c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(1),
	datab => \b~combout\(12),
	datac => \opcode~combout\(0),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU12|u3|finalb~0_combout\);

-- Location: LC_X5_Y2_N0
\ALU12|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU12|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU12|u8|Mux0~0_combout\ & ((\ALU12|u6|sum~0_combout\) # (\ALU12|u3|finalb~0_combout\))) # (!\ALU12|u8|Mux0~0_combout\ & (\ALU12|u6|sum~0_combout\ & \ALU12|u3|finalb~0_combout\)))) # 
-- (!\a1|Mux0~0_combout\ & (\ALU12|u8|Mux0~0_combout\ $ (\ALU12|u6|sum~0_combout\ $ (\ALU12|u3|finalb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU12|u8|Mux0~0_combout\,
	datab => \ALU12|u6|sum~0_combout\,
	datac => \ALU12|u3|finalb~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU12|u8|Mux0~1_combout\);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(13),
	combout => \a~combout\(13));

-- Location: LC_X5_Y2_N8
\ALU13|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU13|u6|sum~0_combout\ = (\a~combout\(13) $ (((!\opcode~combout\(1) & \opcode~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \a~combout\(13),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU13|u6|sum~0_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(13),
	combout => \b~combout\(13));

-- Location: LC_X5_Y2_N2
\ALU13|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU13|u3|finalb~0_combout\ = \b~combout\(13) $ (((\opcode~combout\(1) & (\opcode~combout\(0) & !\opcode~combout\(2))) # (!\opcode~combout\(1) & ((\opcode~combout\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a56a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(13),
	datab => \opcode~combout\(0),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU13|u3|finalb~0_combout\);

-- Location: LC_X5_Y2_N9
\ALU12|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU12|u6|CarryOut~0_combout\ = (\ALU11|u6|CarryOut~0_combout\ & ((\ALU12|u6|sum~0_combout\) # (\b~combout\(12) $ (\a1|Mux3~0_combout\)))) # (!\ALU11|u6|CarryOut~0_combout\ & (\ALU12|u6|sum~0_combout\ & (\b~combout\(12) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU11|u6|CarryOut~0_combout\,
	datab => \ALU12|u6|sum~0_combout\,
	datac => \b~combout\(12),
	datad => \a1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU12|u6|CarryOut~0_combout\);

-- Location: LC_X5_Y2_N6
\ALU13|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU13|u8|Mux0~0_combout\ = ((\a1|Mux1~0_combout\ & ((\a1|Mux0~0_combout\))) # (!\a1|Mux1~0_combout\ & (\ALU12|u6|CarryOut~0_combout\ & !\a1|Mux0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f00c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALU12|u6|CarryOut~0_combout\,
	datac => \a1|Mux1~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU13|u8|Mux0~0_combout\);

-- Location: LC_X5_Y2_N3
\ALU13|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU13|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU13|u6|sum~0_combout\ & ((\ALU13|u3|finalb~0_combout\) # (\ALU13|u8|Mux0~0_combout\))) # (!\ALU13|u6|sum~0_combout\ & (\ALU13|u3|finalb~0_combout\ & \ALU13|u8|Mux0~0_combout\)))) # 
-- (!\a1|Mux0~0_combout\ & (\ALU13|u6|sum~0_combout\ $ (\ALU13|u3|finalb~0_combout\ $ (\ALU13|u8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU13|u6|sum~0_combout\,
	datab => \ALU13|u3|finalb~0_combout\,
	datac => \ALU13|u8|Mux0~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU13|u8|Mux0~1_combout\);

-- Location: LC_X5_Y2_N4
\ALU13|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU13|u6|CarryOut~0_combout\ = (\ALU13|u6|sum~0_combout\ & ((\ALU12|u6|CarryOut~0_combout\) # (\b~combout\(13) $ (\a1|Mux3~0_combout\)))) # (!\ALU13|u6|sum~0_combout\ & (\ALU12|u6|CarryOut~0_combout\ & (\b~combout\(13) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8ee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU13|u6|sum~0_combout\,
	datab => \ALU12|u6|CarryOut~0_combout\,
	datac => \b~combout\(13),
	datad => \a1|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU13|u6|CarryOut~0_combout\);

-- Location: LC_X4_Y2_N2
\ALU14|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU14|u8|Mux0~0_combout\ = (\a1|Mux1~0_combout\ & (((\a1|Mux0~0_combout\)))) # (!\a1|Mux1~0_combout\ & (\ALU13|u6|CarryOut~0_combout\ & ((!\a1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux1~0_combout\,
	datab => \ALU13|u6|CarryOut~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU14|u8|Mux0~0_combout\);

-- Location: PIN_37,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(14),
	combout => \a~combout\(14));

-- Location: LC_X4_Y2_N1
\ALU14|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU14|u6|sum~0_combout\ = \a~combout\(14) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \a~combout\(14),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU14|u6|sum~0_combout\);

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(14),
	combout => \b~combout\(14));

-- Location: LC_X4_Y2_N0
\ALU14|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU14|u3|finalb~0_combout\ = \b~combout\(14) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(14),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU14|u3|finalb~0_combout\);

-- Location: LC_X4_Y2_N3
\ALU14|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU14|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU14|u8|Mux0~0_combout\ & ((\ALU14|u6|sum~0_combout\) # (\ALU14|u3|finalb~0_combout\))) # (!\ALU14|u8|Mux0~0_combout\ & (\ALU14|u6|sum~0_combout\ & \ALU14|u3|finalb~0_combout\)))) # 
-- (!\a1|Mux0~0_combout\ & (\ALU14|u8|Mux0~0_combout\ $ (\ALU14|u6|sum~0_combout\ $ (\ALU14|u3|finalb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU14|u8|Mux0~0_combout\,
	datab => \ALU14|u6|sum~0_combout\,
	datac => \ALU14|u3|finalb~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU14|u8|Mux0~1_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b(15),
	combout => \b~combout\(15));

-- Location: LC_X4_Y2_N8
\ALU15|u3|finalb~0\ : maxv_lcell
-- Equation(s):
-- \ALU15|u3|finalb~0_combout\ = \b~combout\(15) $ (((\opcode~combout\(2) & (!\opcode~combout\(1))) # (!\opcode~combout\(2) & (\opcode~combout\(1) & \opcode~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "96c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \b~combout\(15),
	datac => \opcode~combout\(1),
	datad => \opcode~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU15|u3|finalb~0_combout\);

-- Location: PIN_38,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a(15),
	combout => \a~combout\(15));

-- Location: LC_X4_Y2_N7
\ALU15|u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \ALU15|u6|sum~0_combout\ = \a~combout\(15) $ (((\opcode~combout\(2) & (!\opcode~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \opcode~combout\(2),
	datab => \a~combout\(15),
	datac => \opcode~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU15|u6|sum~0_combout\);

-- Location: LC_X4_Y2_N9
\ALU14|u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \ALU14|u6|CarryOut~0_combout\ = (\ALU14|u6|sum~0_combout\ & ((\ALU13|u6|CarryOut~0_combout\) # (\b~combout\(14) $ (\a1|Mux3~0_combout\)))) # (!\ALU14|u6|sum~0_combout\ & (\ALU13|u6|CarryOut~0_combout\ & (\b~combout\(14) $ (\a1|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de48",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(14),
	datab => \ALU14|u6|sum~0_combout\,
	datac => \a1|Mux3~0_combout\,
	datad => \ALU13|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU14|u6|CarryOut~0_combout\);

-- Location: LC_X4_Y2_N6
\ALU15|u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \ALU15|u8|Mux0~0_combout\ = (\a1|Mux1~0_combout\ & (((\a1|Mux0~0_combout\)))) # (!\a1|Mux1~0_combout\ & (\ALU14|u6|CarryOut~0_combout\ & ((!\a1|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux1~0_combout\,
	datab => \ALU14|u6|CarryOut~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU15|u8|Mux0~0_combout\);

-- Location: LC_X4_Y2_N4
\ALU15|u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \ALU15|u8|Mux0~1_combout\ = (\a1|Mux0~0_combout\ & ((\ALU15|u3|finalb~0_combout\ & ((\ALU15|u6|sum~0_combout\) # (\ALU15|u8|Mux0~0_combout\))) # (!\ALU15|u3|finalb~0_combout\ & (\ALU15|u6|sum~0_combout\ & \ALU15|u8|Mux0~0_combout\)))) # 
-- (!\a1|Mux0~0_combout\ & (\ALU15|u3|finalb~0_combout\ $ (\ALU15|u6|sum~0_combout\ $ (\ALU15|u8|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e896",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALU15|u3|finalb~0_combout\,
	datab => \ALU15|u6|sum~0_combout\,
	datac => \ALU15|u8|Mux0~0_combout\,
	datad => \a1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU15|u8|Mux0~1_combout\);

-- Location: LC_X4_Y2_N5
\overflow~0\ : maxv_lcell
-- Equation(s):
-- \overflow~0_combout\ = (\ALU15|u6|sum~0_combout\ & (!\ALU14|u6|CarryOut~0_combout\ & (\a1|Mux3~0_combout\ $ (\b~combout\(15))))) # (!\ALU15|u6|sum~0_combout\ & (\ALU14|u6|CarryOut~0_combout\ & (\a1|Mux3~0_combout\ $ (!\b~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0960",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \a1|Mux3~0_combout\,
	datab => \b~combout\(15),
	datac => \ALU15|u6|sum~0_combout\,
	datad => \ALU14|u6|CarryOut~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \overflow~0_combout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU0|u8|Mux0~4_combout\,
	oe => VCC,
	padio => ww_Result(0));

-- Location: PIN_73,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU1|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(1));

-- Location: PIN_83,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU2|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(2));

-- Location: PIN_68,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU3|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(3));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU4|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(4));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU5|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(5));

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU6|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(6));

-- Location: PIN_95,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU7|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(7));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU8|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(8));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU9|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(9));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU10|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(10));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU11|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(11));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU12|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(12));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU13|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(13));

-- Location: PIN_35,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU14|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(14));

-- Location: PIN_90,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALU15|u8|Mux0~1_combout\,
	oe => VCC,
	padio => ww_Result(15));

-- Location: PIN_30,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\overflow~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \overflow~0_combout\,
	oe => VCC,
	padio => ww_overflow);
END structure;


