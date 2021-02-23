-- Copyright (C) 1991-2009 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 9.0 Build 132 02/25/2009 SJ Full Version"

-- DATE "10/30/2020 21:46:17"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE, cycloneiii;
LIBRARY altera;
USE IEEE.std_logic_1164.all;
USE altera.altera_primitives_components.all;
USE cycloneiii.cycloneiii_components.all;

ENTITY 	carlight IS
    PORT (
	A2 : OUT std_logic;
	clk : IN std_logic;
	tright : IN std_logic;
	tleft : IN std_logic;
	mark : IN std_logic;
	A1 : OUT std_logic;
	A0 : OUT std_logic;
	B2 : OUT std_logic;
	B1 : OUT std_logic;
	B0 : OUT std_logic
	);
END carlight;

ARCHITECTURE structure OF carlight IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A2 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_tright : std_logic;
SIGNAL ww_tleft : std_logic;
SIGNAL ww_mark : std_logic;
SIGNAL ww_A1 : std_logic;
SIGNAL ww_A0 : std_logic;
SIGNAL ww_B2 : std_logic;
SIGNAL ww_B1 : std_logic;
SIGNAL ww_B0 : std_logic;
SIGNAL \inst|rightlight[2]~clear_lutclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \A2~output_o\ : std_logic;
SIGNAL \A1~output_o\ : std_logic;
SIGNAL \A0~output_o\ : std_logic;
SIGNAL \B2~output_o\ : std_logic;
SIGNAL \B1~output_o\ : std_logic;
SIGNAL \B0~output_o\ : std_logic;
SIGNAL \tright~input_o\ : std_logic;
SIGNAL \mark~input_o\ : std_logic;
SIGNAL \inst|rightlight[2]~12_combout\ : std_logic;
SIGNAL \tleft~input_o\ : std_logic;
SIGNAL \inst|rightlight[2]~1_combout\ : std_logic;
SIGNAL \inst|rightlight[2]~latch_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|rightlight[2]~data_lut_combout\ : std_logic;
SIGNAL \inst|rightlight[2]~clear_lut_combout\ : std_logic;
SIGNAL \inst|rightlight[2]~clear_lutclkctrl_outclk\ : std_logic;
SIGNAL \inst|rightlight~11_combout\ : std_logic;
SIGNAL \inst|rightlight[2]~_emulated_q\ : std_logic;
SIGNAL \inst|rightlight[2]~head_lut_combout\ : std_logic;
SIGNAL \inst|rightlight[1]~data_lut_combout\ : std_logic;
SIGNAL \inst|rightlight[1]~_emulated_q\ : std_logic;
SIGNAL \inst|rightlight[1]~head_lut_combout\ : std_logic;
SIGNAL \inst|Mux1~2_combout\ : std_logic;
SIGNAL \inst|rightlight[0]~data_lut_combout\ : std_logic;
SIGNAL \inst|rightlight[0]~_emulated_q\ : std_logic;
SIGNAL \inst|rightlight[0]~head_lut_combout\ : std_logic;
SIGNAL \inst|leftlight[2]~data_lut_combout\ : std_logic;
SIGNAL \inst|leftlight[2]~_emulated_q\ : std_logic;
SIGNAL \inst|leftlight[2]~head_lut_combout\ : std_logic;
SIGNAL \inst|leftlight[1]~data_lut_combout\ : std_logic;
SIGNAL \inst|leftlight[1]~_emulated_q\ : std_logic;
SIGNAL \inst|leftlight[1]~head_lut_combout\ : std_logic;
SIGNAL \inst|leftlight[0]~data_lut_combout\ : std_logic;
SIGNAL \inst|leftlight[0]~_emulated_q\ : std_logic;
SIGNAL \inst|leftlight[0]~head_lut_combout\ : std_logic;
SIGNAL \inst|rlight\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\ : std_logic;

BEGIN

A2 <= ww_A2;
ww_clk <= clk;
ww_tright <= tright;
ww_tleft <= tleft;
ww_mark <= mark;
A1 <= ww_A1;
A0 <= ww_A0;
B2 <= ww_B2;
B1 <= ww_B1;
B0 <= ww_B0;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|rightlight[2]~clear_lutclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|rightlight[2]~clear_lut_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\ <= NOT \inst|rightlight[2]~clear_lutclkctrl_outclk\;

\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

\A2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|rightlight[2]~head_lut_combout\,
	devoe => ww_devoe,
	o => \A2~output_o\);

\A1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|rightlight[1]~head_lut_combout\,
	devoe => ww_devoe,
	o => \A1~output_o\);

\A0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|rightlight[0]~head_lut_combout\,
	devoe => ww_devoe,
	o => \A0~output_o\);

\B2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|leftlight[2]~head_lut_combout\,
	devoe => ww_devoe,
	o => \B2~output_o\);

\B1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|leftlight[1]~head_lut_combout\,
	devoe => ww_devoe,
	o => \B1~output_o\);

\B0~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|leftlight[0]~head_lut_combout\,
	devoe => ww_devoe,
	o => \B0~output_o\);

\tright~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tright,
	o => \tright~input_o\);

\mark~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mark,
	o => \mark~input_o\);

\inst|rightlight[2]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[2]~12_combout\ = !\tleft~input_o\ & !\tright~input_o\ & !\mark~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tleft~input_o\,
	datab => \tright~input_o\,
	datac => \mark~input_o\,
	combout => \inst|rightlight[2]~12_combout\);

\tleft~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tleft,
	o => \tleft~input_o\);

\inst|rightlight[2]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[2]~1_combout\ = \mark~input_o\ # \tright~input_o\ & \tleft~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mark~input_o\,
	datab => \tright~input_o\,
	datad => \tleft~input_o\,
	combout => \inst|rightlight[2]~1_combout\);

\inst|rightlight[2]~latch\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[2]~latch_combout\ = !\inst|rightlight[2]~12_combout\ & (\inst|rightlight[2]~1_combout\ # \inst|rightlight[2]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|rightlight[2]~12_combout\,
	datac => \inst|rightlight[2]~1_combout\,
	datad => \inst|rightlight[2]~latch_combout\,
	combout => \inst|rightlight[2]~latch_combout\);

\inst|Mux1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = \inst|rlight\(0) # !\inst|rlight\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rlight\(0),
	datac => \inst|rlight\(1),
	combout => \inst|Mux1~1_combout\);

\inst|rlight[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux1~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rlight\(1));

\inst|rlight[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \inst|Mux1~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rlight\(0));

\inst|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = !\inst|rlight\(0) # !\inst|rlight\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|rlight\(1),
	datad => \inst|rlight\(0),
	combout => \inst|Mux1~0_combout\);

\inst|rightlight[2]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[2]~data_lut_combout\ = \inst|rightlight[2]~latch_combout\ $ (!\inst|Mux1~0_combout\ & (\tright~input_o\ # !\tleft~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tleft~input_o\,
	datab => \tright~input_o\,
	datac => \inst|Mux1~0_combout\,
	datad => \inst|rightlight[2]~latch_combout\,
	combout => \inst|rightlight[2]~data_lut_combout\);

\inst|rightlight[2]~clear_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[2]~clear_lut_combout\ = \inst|rightlight[2]~12_combout\ # \inst|rightlight[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|rightlight[2]~12_combout\,
	datad => \inst|rightlight[2]~1_combout\,
	combout => \inst|rightlight[2]~clear_lut_combout\);

\inst|rightlight[2]~clear_lutclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "falling edge")
-- pragma translate_on
PORT MAP (
	inclk => \inst|rightlight[2]~clear_lutclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|rightlight[2]~clear_lutclkctrl_outclk\);

\inst|rightlight~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight~11_combout\ = \tleft~input_o\ $ \tright~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tleft~input_o\,
	datab => \tright~input_o\,
	combout => \inst|rightlight~11_combout\);

\inst|rightlight[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|rightlight[2]~data_lut_combout\,
	clrn => \inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\,
	ena => \inst|rightlight~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rightlight[2]~_emulated_q\);

\inst|rightlight[2]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[2]~head_lut_combout\ = !\inst|rightlight[2]~12_combout\ & (\inst|rightlight[2]~1_combout\ # \inst|rightlight[2]~latch_combout\ $ \inst|rightlight[2]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \inst|rightlight[2]~_emulated_q\,
	datac => \inst|rightlight[2]~12_combout\,
	datad => \inst|rightlight[2]~1_combout\,
	combout => \inst|rightlight[2]~head_lut_combout\);

\inst|rightlight[1]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[1]~data_lut_combout\ = \inst|rightlight[2]~latch_combout\ $ (!\inst|Mux1~1_combout\ & (\tright~input_o\ # !\tleft~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \tright~input_o\,
	datac => \tleft~input_o\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst|rightlight[1]~data_lut_combout\);

\inst|rightlight[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|rightlight[1]~data_lut_combout\,
	clrn => \inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\,
	ena => \inst|rightlight~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rightlight[1]~_emulated_q\);

\inst|rightlight[1]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[1]~head_lut_combout\ = !\inst|rightlight[2]~12_combout\ & (\inst|rightlight[2]~1_combout\ # \inst|rightlight[2]~latch_combout\ $ \inst|rightlight[1]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \inst|rightlight[1]~_emulated_q\,
	datac => \inst|rightlight[2]~12_combout\,
	datad => \inst|rightlight[2]~1_combout\,
	combout => \inst|rightlight[1]~head_lut_combout\);

\inst|Mux1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Mux1~2_combout\ = !\inst|rlight\(1) & \inst|rlight\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|rlight\(1),
	datad => \inst|rlight\(0),
	combout => \inst|Mux1~2_combout\);

\inst|rightlight[0]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[0]~data_lut_combout\ = \inst|rightlight[2]~latch_combout\ $ (\inst|Mux1~2_combout\ & (\tright~input_o\ # !\tleft~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \tright~input_o\,
	datac => \tleft~input_o\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|rightlight[0]~data_lut_combout\);

\inst|rightlight[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|rightlight[0]~data_lut_combout\,
	clrn => \inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\,
	ena => \inst|rightlight~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rightlight[0]~_emulated_q\);

\inst|rightlight[0]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|rightlight[0]~head_lut_combout\ = !\inst|rightlight[2]~12_combout\ & (\inst|rightlight[2]~1_combout\ # \inst|rightlight[2]~latch_combout\ $ \inst|rightlight[0]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \inst|rightlight[2]~12_combout\,
	datac => \inst|rightlight[0]~_emulated_q\,
	datad => \inst|rightlight[2]~1_combout\,
	combout => \inst|rightlight[0]~head_lut_combout\);

\inst|leftlight[2]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|leftlight[2]~data_lut_combout\ = \inst|rightlight[2]~latch_combout\ $ (!\tright~input_o\ & \tleft~input_o\ & \inst|Mux1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \tright~input_o\,
	datac => \tleft~input_o\,
	datad => \inst|Mux1~2_combout\,
	combout => \inst|leftlight[2]~data_lut_combout\);

\inst|leftlight[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|leftlight[2]~data_lut_combout\,
	clrn => \inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\,
	ena => \inst|rightlight~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|leftlight[2]~_emulated_q\);

\inst|leftlight[2]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|leftlight[2]~head_lut_combout\ = !\inst|rightlight[2]~12_combout\ & (\inst|rightlight[2]~1_combout\ # \inst|rightlight[2]~latch_combout\ $ \inst|leftlight[2]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \inst|rightlight[2]~12_combout\,
	datac => \inst|rightlight[2]~1_combout\,
	datad => \inst|leftlight[2]~_emulated_q\,
	combout => \inst|leftlight[2]~head_lut_combout\);

\inst|leftlight[1]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|leftlight[1]~data_lut_combout\ = \inst|rightlight[2]~latch_combout\ $ (!\tright~input_o\ & \tleft~input_o\ & !\inst|Mux1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \tright~input_o\,
	datac => \tleft~input_o\,
	datad => \inst|Mux1~1_combout\,
	combout => \inst|leftlight[1]~data_lut_combout\);

\inst|leftlight[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|leftlight[1]~data_lut_combout\,
	clrn => \inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\,
	ena => \inst|rightlight~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|leftlight[1]~_emulated_q\);

\inst|leftlight[1]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|leftlight[1]~head_lut_combout\ = !\inst|rightlight[2]~12_combout\ & (\inst|rightlight[2]~1_combout\ # \inst|leftlight[1]~_emulated_q\ $ \inst|rightlight[2]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|leftlight[1]~_emulated_q\,
	datab => \inst|rightlight[2]~12_combout\,
	datac => \inst|rightlight[2]~1_combout\,
	datad => \inst|rightlight[2]~latch_combout\,
	combout => \inst|leftlight[1]~head_lut_combout\);

\inst|leftlight[0]~data_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|leftlight[0]~data_lut_combout\ = \inst|rightlight[2]~latch_combout\ $ (\tleft~input_o\ & !\tright~input_o\ & !\inst|Mux1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tleft~input_o\,
	datab => \tright~input_o\,
	datac => \inst|Mux1~0_combout\,
	datad => \inst|rightlight[2]~latch_combout\,
	combout => \inst|leftlight[0]~data_lut_combout\);

\inst|leftlight[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|leftlight[0]~data_lut_combout\,
	clrn => \inst|ALT_INV_rightlight[2]~clear_lutclkctrl_outclk\,
	ena => \inst|rightlight~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|leftlight[0]~_emulated_q\);

\inst|leftlight[0]~head_lut\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|leftlight[0]~head_lut_combout\ = !\inst|rightlight[2]~12_combout\ & (\inst|rightlight[2]~1_combout\ # \inst|rightlight[2]~latch_combout\ $ \inst|leftlight[0]~_emulated_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rightlight[2]~latch_combout\,
	datab => \inst|rightlight[2]~12_combout\,
	datac => \inst|leftlight[0]~_emulated_q\,
	datad => \inst|rightlight[2]~1_combout\,
	combout => \inst|leftlight[0]~head_lut_combout\);

ww_A2 <= \A2~output_o\;

ww_A1 <= \A1~output_o\;

ww_A0 <= \A0~output_o\;

ww_B2 <= \B2~output_o\;

ww_B1 <= \B1~output_o\;

ww_B0 <= \B0~output_o\;
END structure;


