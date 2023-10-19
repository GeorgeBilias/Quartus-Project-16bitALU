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

-- DATE "05/31/2021 13:35:00"

-- 
-- Device: Altera 5M40ZM64C4 Package MBGA64
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	alu1bit IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	CarryIn : IN std_logic;
	AInvert : IN std_logic;
	BInvert : IN std_logic;
	Operation : IN std_logic_vector(1 DOWNTO 0);
	Result : OUT std_logic;
	CarryOut : OUT std_logic
	);
END alu1bit;

-- Design Ports Information


ARCHITECTURE structure OF alu1bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_CarryIn : std_logic;
SIGNAL ww_AInvert : std_logic;
SIGNAL ww_BInvert : std_logic;
SIGNAL ww_Operation : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Result : std_logic;
SIGNAL ww_CarryOut : std_logic;
SIGNAL \AInvert~combout\ : std_logic;
SIGNAL \a~combout\ : std_logic;
SIGNAL \u6|sum~0_combout\ : std_logic;
SIGNAL \b~combout\ : std_logic;
SIGNAL \CarryIn~combout\ : std_logic;
SIGNAL \u8|Mux0~0_combout\ : std_logic;
SIGNAL \BInvert~combout\ : std_logic;
SIGNAL \u8|Mux0~1_combout\ : std_logic;
SIGNAL \u8|Mux0~2_combout\ : std_logic;
SIGNAL \u6|CarryOut~0_combout\ : std_logic;
SIGNAL \Operation~combout\ : std_logic_vector(1 DOWNTO 0);

BEGIN

ww_a <= a;
ww_b <= b;
ww_CarryIn <= CarryIn;
ww_AInvert <= AInvert;
ww_BInvert <= BInvert;
ww_Operation <= Operation;
Result <= ww_Result;
CarryOut <= ww_CarryOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\AInvert~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_AInvert,
	combout => \AInvert~combout\);

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_a,
	combout => \a~combout\);

-- Location: LC_X5_Y2_N6
\u6|sum~0\ : maxv_lcell
-- Equation(s):
-- \u6|sum~0_combout\ = ((\AInvert~combout\ $ (\a~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \AInvert~combout\,
	datad => \a~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u6|sum~0_combout\);

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Operation[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Operation(0),
	combout => \Operation~combout\(0));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Operation[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Operation(1),
	combout => \Operation~combout\(1));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_b,
	combout => \b~combout\);

-- Location: PIN_F5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CarryIn~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CarryIn,
	combout => \CarryIn~combout\);

-- Location: LC_X5_Y2_N2
\u8|Mux0~0\ : maxv_lcell
-- Equation(s):
-- \u8|Mux0~0_combout\ = (\Operation~combout\(0) & ((\AInvert~combout\ $ (\a~combout\)))) # (!\Operation~combout\(0) & (\CarryIn~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2ee2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CarryIn~combout\,
	datab => \Operation~combout\(0),
	datac => \AInvert~combout\,
	datad => \a~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u8|Mux0~0_combout\);

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\BInvert~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_BInvert,
	combout => \BInvert~combout\);

-- Location: LC_X5_Y2_N8
\u8|Mux0~1\ : maxv_lcell
-- Equation(s):
-- \u8|Mux0~1_combout\ = \b~combout\ $ (\BInvert~combout\ $ (((\u8|Mux0~0_combout\ & \Operation~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "956a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\,
	datab => \u8|Mux0~0_combout\,
	datac => \Operation~combout\(1),
	datad => \BInvert~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u8|Mux0~1_combout\);

-- Location: LC_X5_Y2_N4
\u8|Mux0~2\ : maxv_lcell
-- Equation(s):
-- \u8|Mux0~2_combout\ = (\u8|Mux0~1_combout\ & ((\Operation~combout\(0)) # (\u6|sum~0_combout\ $ (\Operation~combout\(1))))) # (!\u8|Mux0~1_combout\ & (\u6|sum~0_combout\ & (\Operation~combout\(0) $ (\Operation~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "de28",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u6|sum~0_combout\,
	datab => \Operation~combout\(0),
	datac => \Operation~combout\(1),
	datad => \u8|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u8|Mux0~2_combout\);

-- Location: LC_X5_Y2_N5
\u6|CarryOut~0\ : maxv_lcell
-- Equation(s):
-- \u6|CarryOut~0_combout\ = (\CarryIn~combout\ & ((\u6|sum~0_combout\) # (\b~combout\ $ (\BInvert~combout\)))) # (!\CarryIn~combout\ & (\u6|sum~0_combout\ & (\b~combout\ $ (\BInvert~combout\))))

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
	dataa => \b~combout\,
	datab => \CarryIn~combout\,
	datac => \u6|sum~0_combout\,
	datad => \BInvert~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \u6|CarryOut~0_combout\);

-- Location: PIN_C5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\Result~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u8|Mux0~2_combout\,
	oe => VCC,
	padio => ww_Result);

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\CarryOut~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \u6|CarryOut~0_combout\,
	oe => VCC,
	padio => ww_CarryOut);
END structure;


