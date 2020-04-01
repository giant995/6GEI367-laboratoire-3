-- Copyright (C) 2016  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 16.1.0 Build 196 10/24/2016 SJ Lite Edition"

-- DATE "03/30/2020 20:05:31"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	part3 IS
    PORT (
	KEY : IN std_logic_vector(0 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	LEDR : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END part3;

-- Design Ports Information
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF part3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \U1|Q~0_combout\ : std_logic;
SIGNAL \U1|Q~q\ : std_logic;
SIGNAL \U2|Q~0_combout\ : std_logic;
SIGNAL \U2|Q~q\ : std_logic;
SIGNAL \U3|reg_IR|Q[13]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Selector5~1_combout\ : std_logic;
SIGNAL \U3|reg_W|Q~q\ : std_logic;
SIGNAL \U3|reg_IR|Q[14]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Tstep_Q.T3~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Selector5~0_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~1_sumout\ : std_logic;
SIGNAL \U3|decX|Mux0~2_combout\ : std_logic;
SIGNAL \U3|Ain~0_combout\ : std_logic;
SIGNAL \U3|Mux19~0_combout\ : std_logic;
SIGNAL \U3|Add0~54_cout\ : std_logic;
SIGNAL \U3|Add0~2\ : std_logic;
SIGNAL \U3|Add0~22\ : std_logic;
SIGNAL \U3|Add0~25_sumout\ : std_logic;
SIGNAL \U3|Gin~0_combout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \U6|Q[3]~feeder_combout\ : std_logic;
SIGNAL \U3|Add0~26\ : std_logic;
SIGNAL \U3|Add0~30\ : std_logic;
SIGNAL \U3|Add0~33_sumout\ : std_logic;
SIGNAL \U3|Upc|Add0~22\ : std_logic;
SIGNAL \U3|Upc|Add0~25_sumout\ : std_logic;
SIGNAL \U3|Upc|Count[1]~0_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~26\ : std_logic;
SIGNAL \U3|Upc|Add0~29_sumout\ : std_logic;
SIGNAL \U3|Upc|Add0~30\ : std_logic;
SIGNAL \U3|Upc|Add0~33_sumout\ : std_logic;
SIGNAL \U3|reg_5|Q[4]~feeder_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~3_combout\ : std_logic;
SIGNAL \U3|Mux43~2_combout\ : std_logic;
SIGNAL \U3|Mux43~4_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \U3|Upc|Add0~34\ : std_logic;
SIGNAL \U3|Upc|Add0~37_sumout\ : std_logic;
SIGNAL \U3|Upc|Add0~38\ : std_logic;
SIGNAL \U3|Upc|Add0~41_sumout\ : std_logic;
SIGNAL \U3|reg_4|Q[6]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_IR|Q[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|decX|Mux0~0_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~1_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~4_combout\ : std_logic;
SIGNAL \U3|Mux41~0_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[6]~feeder_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~6_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~9_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[6]~feeder_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~8_combout\ : std_logic;
SIGNAL \U3|Mux41~1_combout\ : std_logic;
SIGNAL \U3|Add0~34\ : std_logic;
SIGNAL \U3|Add0~38\ : std_logic;
SIGNAL \U3|Add0~41_sumout\ : std_logic;
SIGNAL \U3|reg_1|Q[7]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux40~1_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~42\ : std_logic;
SIGNAL \U3|Upc|Add0~45_sumout\ : std_logic;
SIGNAL \U3|Mux40~0_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U3|DOUTin~0_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[2]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[4]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[4]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[5]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[6]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[8]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[8]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux39~0_combout\ : std_logic;
SIGNAL \U3|reg_4|Q[8]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_5|Q[8]~feeder_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~46\ : std_logic;
SIGNAL \U3|Upc|Add0~49_sumout\ : std_logic;
SIGNAL \U3|Mux39~1_combout\ : std_logic;
SIGNAL \U3|Add0~42\ : std_logic;
SIGNAL \U3|Add0~46\ : std_logic;
SIGNAL \U3|Add0~50\ : std_logic;
SIGNAL \U3|Add0~66\ : std_logic;
SIGNAL \U3|Add0~61_sumout\ : std_logic;
SIGNAL \U3|Mux37~3_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~50\ : std_logic;
SIGNAL \U3|Upc|Add0~61_sumout\ : std_logic;
SIGNAL \U3|Upc|Add0~62\ : std_logic;
SIGNAL \U3|Upc|Add0~57_sumout\ : std_logic;
SIGNAL \U3|reg_5|Q[10]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux37~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \U3|Mux37~2_combout\ : std_logic;
SIGNAL \U3|Mux37~0_combout\ : std_logic;
SIGNAL \U3|Mux37~4_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[10]~feeder_combout\ : std_logic;
SIGNAL \U3|Add0~62\ : std_logic;
SIGNAL \U3|Add0~57_sumout\ : std_logic;
SIGNAL \U3|Mux36~3_combout\ : std_logic;
SIGNAL \U3|reg_4|Q[11]~feeder_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~58\ : std_logic;
SIGNAL \U3|Upc|Add0~53_sumout\ : std_logic;
SIGNAL \U3|Mux36~1_combout\ : std_logic;
SIGNAL \U3|Mux36~2_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[11]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux36~0_combout\ : std_logic;
SIGNAL \U3|Mux36~4_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[13]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[15]~feeder_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \U6|Q[1]~feeder_combout\ : std_logic;
SIGNAL \DIN[1]~1_combout\ : std_logic;
SIGNAL \U3|Mux38~2_combout\ : std_logic;
SIGNAL \U3|Add0~65_sumout\ : std_logic;
SIGNAL \U3|Mux38~3_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[9]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[9]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux38~0_combout\ : std_logic;
SIGNAL \U3|reg_4|Q[9]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux38~1_combout\ : std_logic;
SIGNAL \U3|Mux38~4_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[9]~feeder_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \U6|Q[0]~feeder_combout\ : std_logic;
SIGNAL \DIN[0]~0_combout\ : std_logic;
SIGNAL \U3|Add0~49_sumout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \U6|Q[8]~feeder_combout\ : std_logic;
SIGNAL \DIN[8]~8_combout\ : std_logic;
SIGNAL \U3|Mux39~2_combout\ : std_logic;
SIGNAL \U3|Mux39~3_combout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \U6|Q[7]~feeder_combout\ : std_logic;
SIGNAL \DIN[7]~7_combout\ : std_logic;
SIGNAL \U3|Add0~45_sumout\ : std_logic;
SIGNAL \U3|Mux40~2_combout\ : std_logic;
SIGNAL \U3|Mux40~3_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[7]~feeder_combout\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \U6|Q[6]~feeder_combout\ : std_logic;
SIGNAL \DIN[6]~6_combout\ : std_logic;
SIGNAL \U3|Mux41~2_combout\ : std_logic;
SIGNAL \U3|Mux41~3_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[6]~feeder_combout\ : std_logic;
SIGNAL \DIN[5]~5_combout\ : std_logic;
SIGNAL \U3|reg_4|Q[5]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[5]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[5]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux42~0_combout\ : std_logic;
SIGNAL \U3|Mux42~3_combout\ : std_logic;
SIGNAL \U3|Add0~37_sumout\ : std_logic;
SIGNAL \U3|Mux42~2_combout\ : std_logic;
SIGNAL \U3|Mux42~4_combout\ : std_logic;
SIGNAL \U3|Mux42~1_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[5]~feeder_combout\ : std_logic;
SIGNAL \DIN[4]~4_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[4]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[4]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux43~0_combout\ : std_logic;
SIGNAL \U3|Mux43~3_combout\ : std_logic;
SIGNAL \U3|Mux43~1_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[4]~feeder_combout\ : std_logic;
SIGNAL \DIN[3]~3_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux44~0_combout\ : std_logic;
SIGNAL \U3|Mux44~3_combout\ : std_logic;
SIGNAL \U3|Add0~29_sumout\ : std_logic;
SIGNAL \U3|Mux44~2_combout\ : std_logic;
SIGNAL \U3|Mux44~4_combout\ : std_logic;
SIGNAL \U3|Mux44~1_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[3]~feeder_combout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \DIN[2]~2_combout\ : std_logic;
SIGNAL \U3|reg_1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[2]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux45~0_combout\ : std_logic;
SIGNAL \U3|Mux45~2_combout\ : std_logic;
SIGNAL \U3|Mux45~3_combout\ : std_logic;
SIGNAL \U3|Mux45~1_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[2]~feeder_combout\ : std_logic;
SIGNAL \DIN[10]~14_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~5_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~2\ : std_logic;
SIGNAL \U3|Upc|Add0~21_sumout\ : std_logic;
SIGNAL \U3|Mux46~2_combout\ : std_logic;
SIGNAL \U3|Mux46~3_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux46~0_combout\ : std_logic;
SIGNAL \U3|Mux46~4_combout\ : std_logic;
SIGNAL \U3|Add0~21_sumout\ : std_logic;
SIGNAL \U3|Mux46~1_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[1]~feeder_combout\ : std_logic;
SIGNAL \DIN[11]~15_combout\ : std_logic;
SIGNAL \U3|decX|Mux0~7_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[12]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[12]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux35~1_combout\ : std_logic;
SIGNAL \U3|reg_4|Q[12]~feeder_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~54\ : std_logic;
SIGNAL \U3|Upc|Add0~5_sumout\ : std_logic;
SIGNAL \U3|Mux35~0_combout\ : std_logic;
SIGNAL \U3|Add0~58\ : std_logic;
SIGNAL \U3|Add0~5_sumout\ : std_logic;
SIGNAL \U3|Mux35~3_combout\ : std_logic;
SIGNAL \U3|Mux35~2_combout\ : std_logic;
SIGNAL \U3|Mux35~4_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[12]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[12]~DUPLICATE_q\ : std_logic;
SIGNAL \W_mem~combout\ : std_logic;
SIGNAL \DIN[9]~13_combout\ : std_logic;
SIGNAL \U3|reg_IR|Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Selector2~0_combout\ : std_logic;
SIGNAL \U3|Tstep_Q.T5~q\ : std_logic;
SIGNAL \U3|Selector4~0_combout\ : std_logic;
SIGNAL \U3|Mux33~0_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~6\ : std_logic;
SIGNAL \U3|Upc|Add0~9_sumout\ : std_logic;
SIGNAL \U3|Upc|Add0~10\ : std_logic;
SIGNAL \U3|Upc|Add0~13_sumout\ : std_logic;
SIGNAL \U3|Mux33~2_combout\ : std_logic;
SIGNAL \U3|Add0~6\ : std_logic;
SIGNAL \U3|Add0~10\ : std_logic;
SIGNAL \U3|Add0~13_sumout\ : std_logic;
SIGNAL \U3|Mux33~1_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[14]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[14]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux33~3_combout\ : std_logic;
SIGNAL \U3|Mux33~4_combout\ : std_logic;
SIGNAL \DIN[13]~10_combout\ : std_logic;
SIGNAL \DIN[12]~12_combout\ : std_logic;
SIGNAL \U3|Tstep_Q.T0~q\ : std_logic;
SIGNAL \U3|Selector2~1_combout\ : std_logic;
SIGNAL \U3|Selector2~2_combout\ : std_logic;
SIGNAL \U3|reg_4|Q[15]~feeder_combout\ : std_logic;
SIGNAL \U3|Upc|Add0~14\ : std_logic;
SIGNAL \U3|Upc|Add0~17_sumout\ : std_logic;
SIGNAL \U3|Mux32~2_combout\ : std_logic;
SIGNAL \U3|reg_1|Q[15]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux32~3_combout\ : std_logic;
SIGNAL \U3|Mux32~0_combout\ : std_logic;
SIGNAL \U3|Add0~14\ : std_logic;
SIGNAL \U3|Add0~17_sumout\ : std_logic;
SIGNAL \U3|Mux32~1_combout\ : std_logic;
SIGNAL \U3|Mux32~4_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[15]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_ADDR|Q[15]~DUPLICATE_q\ : std_logic;
SIGNAL \DIN[15]~11_combout\ : std_logic;
SIGNAL \U3|reg_IR|Q[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Selector0~0_combout\ : std_logic;
SIGNAL \U3|Tstep_Q.T0~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Tstep_D.T1~0_combout\ : std_logic;
SIGNAL \U3|Tstep_Q.T1~q\ : std_logic;
SIGNAL \U3|Tstep_Q.T2~q\ : std_logic;
SIGNAL \U3|Tstep_Q.T3~q\ : std_logic;
SIGNAL \U3|reg_IR|Q[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Selector1~0_combout\ : std_logic;
SIGNAL \U3|reg_2|Q[13]~feeder_combout\ : std_logic;
SIGNAL \U3|reg_0|Q[13]~feeder_combout\ : std_logic;
SIGNAL \U3|Mux34~3_combout\ : std_logic;
SIGNAL \U3|Mux34~0_combout\ : std_logic;
SIGNAL \U3|Add0~9_sumout\ : std_logic;
SIGNAL \U3|Mux34~1_combout\ : std_logic;
SIGNAL \U3|Mux34~2_combout\ : std_logic;
SIGNAL \U3|Mux34~4_combout\ : std_logic;
SIGNAL \DIN[14]~9_combout\ : std_logic;
SIGNAL \U3|Tstep_D.T4~0_combout\ : std_logic;
SIGNAL \U3|Tstep_Q.T4~q\ : std_logic;
SIGNAL \U3|Tstep_Q.T5~DUPLICATE_q\ : std_logic;
SIGNAL \U3|Selector3~0_combout\ : std_logic;
SIGNAL \U3|Mux47~0_combout\ : std_logic;
SIGNAL \U3|Mux47~3_combout\ : std_logic;
SIGNAL \U3|Mux47~2_combout\ : std_logic;
SIGNAL \U3|Mux47~4_combout\ : std_logic;
SIGNAL \U3|Add0~1_sumout\ : std_logic;
SIGNAL \U3|Mux47~1_combout\ : std_logic;
SIGNAL \U3|reg_DOUT|Q[0]~feeder_combout\ : std_logic;
SIGNAL \W_LED~combout\ : std_logic;
SIGNAL \U5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \U5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \U3|Upc|Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U5|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U3|reg_DOUT|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_5|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_ADDR|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_4|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_6|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_IR|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_0|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_1|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_2|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_3|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_G|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U6|Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U3|reg_A|Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U4|altsyncram_component|auto_generated|ALT_INV_q_a\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|Upc|ALT_INV_Count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_W|ALT_INV_Q~q\ : std_logic;
SIGNAL \U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_IR|ALT_INV_Q[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_Q.T0~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_IR|ALT_INV_Q[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_IR|ALT_INV_Q[14]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_Q.T5~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \U3|ALT_INV_Mux42~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux42~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux42~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux43~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux43~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux43~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux44~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux44~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux44~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux46~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux46~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux46~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux47~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux47~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux47~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux45~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux45~2_combout\ : std_logic;
SIGNAL \U3|reg_A|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|ALT_INV_Mux36~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux36~3_combout\ : std_logic;
SIGNAL \U3|reg_G|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|ALT_INV_Mux36~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux36~1_combout\ : std_logic;
SIGNAL \U3|reg_6|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_5|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_4|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|ALT_INV_Mux36~0_combout\ : std_logic;
SIGNAL \U3|reg_3|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_2|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_1|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|reg_0|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|ALT_INV_Mux37~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux37~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux37~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux37~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux37~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux38~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux38~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux38~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux38~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux38~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux19~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_D.T1~0_combout\ : std_logic;
SIGNAL \U3|decX|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \U3|decX|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux39~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux39~2_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[8]~8_combout\ : std_logic;
SIGNAL \U6|ALT_INV_Q\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \U3|reg_IR|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \U3|ALT_INV_Mux39~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux39~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux40~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux40~2_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[7]~7_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux40~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux40~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux41~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux41~2_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[6]~6_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux41~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux41~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux42~1_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[5]~5_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux42~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux43~1_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[4]~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux43~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux44~1_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[3]~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux44~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux45~1_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[2]~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux45~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux46~1_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[1]~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux46~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux32~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux32~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux32~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux32~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux32~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux33~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux33~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux33~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux33~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux33~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux34~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux34~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux34~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux34~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux34~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux35~4_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux35~3_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux35~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux35~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux35~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux47~1_combout\ : std_logic;
SIGNAL \ALT_INV_DIN[0]~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Mux47~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_Q.T4~q\ : std_logic;
SIGNAL \U3|ALT_INV_Selector2~2_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Selector3~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Selector4~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Selector2~1_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_Q.T0~q\ : std_logic;
SIGNAL \U3|ALT_INV_Selector2~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_Q.T3~q\ : std_logic;
SIGNAL \U3|ALT_INV_Tstep_Q.T5~q\ : std_logic;
SIGNAL \U1|ALT_INV_Q~q\ : std_logic;
SIGNAL \U3|reg_DOUT|ALT_INV_Q\ : std_logic_vector(3 DOWNTO 1);
SIGNAL \U3|reg_ADDR|ALT_INV_Q\ : std_logic_vector(15 DOWNTO 12);
SIGNAL \U2|ALT_INV_Q~q\ : std_logic;
SIGNAL \U3|ALT_INV_Selector1~0_combout\ : std_logic;

BEGIN

ww_KEY <= KEY;
ww_SW <= SW;
ww_CLOCK_50 <= CLOCK_50;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & \U3|reg_DOUT|Q\(15) & \U3|reg_DOUT|Q\(14) & \U3|reg_DOUT|Q\(13) & \U3|reg_DOUT|Q\(12) & \U3|reg_DOUT|Q\(11) & \U3|reg_DOUT|Q\(10) & 
\U3|reg_DOUT|Q\(9) & \U3|reg_DOUT|Q\(8) & \U3|reg_DOUT|Q\(7) & \U3|reg_DOUT|Q\(6) & \U3|reg_DOUT|Q[5]~DUPLICATE_q\ & \U3|reg_DOUT|Q[4]~DUPLICATE_q\ & \U3|reg_DOUT|Q\(3) & \U3|reg_DOUT|Q[2]~DUPLICATE_q\ & \U3|reg_DOUT|Q\(1) & 
\U3|reg_DOUT|Q\(0));

\U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\U3|reg_ADDR|Q\(7) & \U3|reg_ADDR|Q\(6) & \U3|reg_ADDR|Q\(5) & \U3|reg_ADDR|Q\(4) & \U3|reg_ADDR|Q\(3) & \U3|reg_ADDR|Q\(2) & \U3|reg_ADDR|Q\(1) & \U3|reg_ADDR|Q\(0));

\U4|altsyncram_component|auto_generated|q_a\(0) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\U4|altsyncram_component|auto_generated|q_a\(1) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\U4|altsyncram_component|auto_generated|q_a\(2) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\U4|altsyncram_component|auto_generated|q_a\(3) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\U4|altsyncram_component|auto_generated|q_a\(4) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\U4|altsyncram_component|auto_generated|q_a\(5) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\U4|altsyncram_component|auto_generated|q_a\(6) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\U4|altsyncram_component|auto_generated|q_a\(7) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);
\U4|altsyncram_component|auto_generated|q_a\(8) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(8);
\U4|altsyncram_component|auto_generated|q_a\(9) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(9);
\U4|altsyncram_component|auto_generated|q_a\(10) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(10);
\U4|altsyncram_component|auto_generated|q_a\(11) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(11);
\U4|altsyncram_component|auto_generated|q_a\(12) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(12);
\U4|altsyncram_component|auto_generated|q_a\(13) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(13);
\U4|altsyncram_component|auto_generated|q_a\(14) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(14);
\U4|altsyncram_component|auto_generated|q_a\(15) <= \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(15);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(5) <= NOT \U4|altsyncram_component|auto_generated|q_a\(5);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(6) <= NOT \U4|altsyncram_component|auto_generated|q_a\(6);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(7) <= NOT \U4|altsyncram_component|auto_generated|q_a\(7);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(8) <= NOT \U4|altsyncram_component|auto_generated|q_a\(8);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(9) <= NOT \U4|altsyncram_component|auto_generated|q_a\(9);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(10) <= NOT \U4|altsyncram_component|auto_generated|q_a\(10);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(11) <= NOT \U4|altsyncram_component|auto_generated|q_a\(11);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(12) <= NOT \U4|altsyncram_component|auto_generated|q_a\(12);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(13) <= NOT \U4|altsyncram_component|auto_generated|q_a\(13);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(14) <= NOT \U4|altsyncram_component|auto_generated|q_a\(14);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(15) <= NOT \U4|altsyncram_component|auto_generated|q_a\(15);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(0) <= NOT \U4|altsyncram_component|auto_generated|q_a\(0);
\U3|Upc|ALT_INV_Count\(0) <= NOT \U3|Upc|Count\(0);
\U3|reg_W|ALT_INV_Q~q\ <= NOT \U3|reg_W|Q~q\;
\U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\ <= NOT \U3|reg_IR|Q[10]~DUPLICATE_q\;
\U3|reg_IR|ALT_INV_Q[0]~DUPLICATE_q\ <= NOT \U3|reg_IR|Q[0]~DUPLICATE_q\;
\U3|ALT_INV_Tstep_Q.T0~DUPLICATE_q\ <= NOT \U3|Tstep_Q.T0~DUPLICATE_q\;
\U3|reg_IR|ALT_INV_Q[12]~DUPLICATE_q\ <= NOT \U3|reg_IR|Q[12]~DUPLICATE_q\;
\U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\ <= NOT \U3|reg_IR|Q[15]~DUPLICATE_q\;
\U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\ <= NOT \U3|reg_IR|Q[13]~DUPLICATE_q\;
\U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\ <= NOT \U3|Tstep_Q.T3~DUPLICATE_q\;
\U3|reg_IR|ALT_INV_Q[14]~DUPLICATE_q\ <= NOT \U3|reg_IR|Q[14]~DUPLICATE_q\;
\U3|ALT_INV_Tstep_Q.T5~DUPLICATE_q\ <= NOT \U3|Tstep_Q.T5~DUPLICATE_q\;
\U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\ <= NOT \U3|reg_ADDR|Q[15]~DUPLICATE_q\;
\U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\ <= NOT \U3|reg_ADDR|Q[12]~DUPLICATE_q\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\U3|ALT_INV_Mux42~4_combout\ <= NOT \U3|Mux42~4_combout\;
\U3|ALT_INV_Mux42~3_combout\ <= NOT \U3|Mux42~3_combout\;
\U3|ALT_INV_Mux42~2_combout\ <= NOT \U3|Mux42~2_combout\;
\U3|ALT_INV_Mux43~4_combout\ <= NOT \U3|Mux43~4_combout\;
\U3|ALT_INV_Mux43~3_combout\ <= NOT \U3|Mux43~3_combout\;
\U3|ALT_INV_Mux43~2_combout\ <= NOT \U3|Mux43~2_combout\;
\U3|ALT_INV_Mux44~4_combout\ <= NOT \U3|Mux44~4_combout\;
\U3|ALT_INV_Mux44~3_combout\ <= NOT \U3|Mux44~3_combout\;
\U3|ALT_INV_Mux44~2_combout\ <= NOT \U3|Mux44~2_combout\;
\U3|ALT_INV_Mux46~4_combout\ <= NOT \U3|Mux46~4_combout\;
\U3|ALT_INV_Mux46~3_combout\ <= NOT \U3|Mux46~3_combout\;
\U3|ALT_INV_Mux46~2_combout\ <= NOT \U3|Mux46~2_combout\;
\U3|ALT_INV_Mux47~4_combout\ <= NOT \U3|Mux47~4_combout\;
\U3|ALT_INV_Mux47~3_combout\ <= NOT \U3|Mux47~3_combout\;
\U3|ALT_INV_Mux47~2_combout\ <= NOT \U3|Mux47~2_combout\;
\U3|ALT_INV_Mux45~3_combout\ <= NOT \U3|Mux45~3_combout\;
\U3|ALT_INV_Mux45~2_combout\ <= NOT \U3|Mux45~2_combout\;
\U3|reg_A|ALT_INV_Q\(9) <= NOT \U3|reg_A|Q\(9);
\U3|reg_A|ALT_INV_Q\(10) <= NOT \U3|reg_A|Q\(10);
\U3|reg_A|ALT_INV_Q\(11) <= NOT \U3|reg_A|Q\(11);
\U3|ALT_INV_Mux36~4_combout\ <= NOT \U3|Mux36~4_combout\;
\U3|ALT_INV_Mux36~3_combout\ <= NOT \U3|Mux36~3_combout\;
\U3|reg_G|ALT_INV_Q\(11) <= NOT \U3|reg_G|Q\(11);
\U3|ALT_INV_Mux36~2_combout\ <= NOT \U3|Mux36~2_combout\;
\U3|ALT_INV_Mux36~1_combout\ <= NOT \U3|Mux36~1_combout\;
\U3|reg_6|ALT_INV_Q\(11) <= NOT \U3|reg_6|Q\(11);
\U3|reg_5|ALT_INV_Q\(11) <= NOT \U3|reg_5|Q\(11);
\U3|reg_4|ALT_INV_Q\(11) <= NOT \U3|reg_4|Q\(11);
\U3|ALT_INV_Mux36~0_combout\ <= NOT \U3|Mux36~0_combout\;
\U3|reg_3|ALT_INV_Q\(11) <= NOT \U3|reg_3|Q\(11);
\U3|reg_2|ALT_INV_Q\(11) <= NOT \U3|reg_2|Q\(11);
\U3|reg_1|ALT_INV_Q\(11) <= NOT \U3|reg_1|Q\(11);
\U3|reg_0|ALT_INV_Q\(11) <= NOT \U3|reg_0|Q\(11);
\U3|ALT_INV_Mux37~4_combout\ <= NOT \U3|Mux37~4_combout\;
\U3|ALT_INV_Mux37~3_combout\ <= NOT \U3|Mux37~3_combout\;
\U3|reg_G|ALT_INV_Q\(10) <= NOT \U3|reg_G|Q\(10);
\U3|ALT_INV_Mux37~2_combout\ <= NOT \U3|Mux37~2_combout\;
\U3|ALT_INV_Mux37~1_combout\ <= NOT \U3|Mux37~1_combout\;
\U3|reg_6|ALT_INV_Q\(10) <= NOT \U3|reg_6|Q\(10);
\U3|reg_5|ALT_INV_Q\(10) <= NOT \U3|reg_5|Q\(10);
\U3|reg_4|ALT_INV_Q\(10) <= NOT \U3|reg_4|Q\(10);
\U3|ALT_INV_Mux37~0_combout\ <= NOT \U3|Mux37~0_combout\;
\U3|reg_3|ALT_INV_Q\(10) <= NOT \U3|reg_3|Q\(10);
\U3|reg_2|ALT_INV_Q\(10) <= NOT \U3|reg_2|Q\(10);
\U3|reg_1|ALT_INV_Q\(10) <= NOT \U3|reg_1|Q\(10);
\U3|reg_0|ALT_INV_Q\(10) <= NOT \U3|reg_0|Q\(10);
\U3|ALT_INV_Mux38~4_combout\ <= NOT \U3|Mux38~4_combout\;
\U3|ALT_INV_Mux38~3_combout\ <= NOT \U3|Mux38~3_combout\;
\U3|reg_G|ALT_INV_Q\(9) <= NOT \U3|reg_G|Q\(9);
\U3|ALT_INV_Mux38~2_combout\ <= NOT \U3|Mux38~2_combout\;
\U3|ALT_INV_Mux38~1_combout\ <= NOT \U3|Mux38~1_combout\;
\U3|reg_6|ALT_INV_Q\(9) <= NOT \U3|reg_6|Q\(9);
\U3|reg_5|ALT_INV_Q\(9) <= NOT \U3|reg_5|Q\(9);
\U3|reg_4|ALT_INV_Q\(9) <= NOT \U3|reg_4|Q\(9);
\U3|ALT_INV_Mux38~0_combout\ <= NOT \U3|Mux38~0_combout\;
\U3|reg_3|ALT_INV_Q\(9) <= NOT \U3|reg_3|Q\(9);
\U3|reg_2|ALT_INV_Q\(9) <= NOT \U3|reg_2|Q\(9);
\U3|reg_1|ALT_INV_Q\(9) <= NOT \U3|reg_1|Q\(9);
\U3|reg_0|ALT_INV_Q\(9) <= NOT \U3|reg_0|Q\(9);
\U3|reg_A|ALT_INV_Q\(8) <= NOT \U3|reg_A|Q\(8);
\U3|reg_A|ALT_INV_Q\(7) <= NOT \U3|reg_A|Q\(7);
\U3|reg_A|ALT_INV_Q\(6) <= NOT \U3|reg_A|Q\(6);
\U3|reg_A|ALT_INV_Q\(5) <= NOT \U3|reg_A|Q\(5);
\U3|reg_A|ALT_INV_Q\(4) <= NOT \U3|reg_A|Q\(4);
\U3|reg_A|ALT_INV_Q\(3) <= NOT \U3|reg_A|Q\(3);
\U3|reg_A|ALT_INV_Q\(2) <= NOT \U3|reg_A|Q\(2);
\U3|reg_A|ALT_INV_Q\(1) <= NOT \U3|reg_A|Q\(1);
\U3|reg_A|ALT_INV_Q\(15) <= NOT \U3|reg_A|Q\(15);
\U3|reg_A|ALT_INV_Q\(14) <= NOT \U3|reg_A|Q\(14);
\U3|reg_A|ALT_INV_Q\(13) <= NOT \U3|reg_A|Q\(13);
\U3|reg_A|ALT_INV_Q\(12) <= NOT \U3|reg_A|Q\(12);
\U3|reg_A|ALT_INV_Q\(0) <= NOT \U3|reg_A|Q\(0);
\U3|ALT_INV_Mux19~0_combout\ <= NOT \U3|Mux19~0_combout\;
\U3|ALT_INV_Tstep_D.T1~0_combout\ <= NOT \U3|Tstep_D.T1~0_combout\;
\U3|decX|ALT_INV_Mux0~2_combout\ <= NOT \U3|decX|Mux0~2_combout\;
\U3|decX|ALT_INV_Mux0~0_combout\ <= NOT \U3|decX|Mux0~0_combout\;
\U3|ALT_INV_Mux39~3_combout\ <= NOT \U3|Mux39~3_combout\;
\U3|ALT_INV_Mux39~2_combout\ <= NOT \U3|Mux39~2_combout\;
\ALT_INV_DIN[8]~8_combout\ <= NOT \DIN[8]~8_combout\;
\U6|ALT_INV_Q\(8) <= NOT \U6|Q\(8);
\U3|reg_IR|ALT_INV_Q\(8) <= NOT \U3|reg_IR|Q\(8);
\U3|reg_G|ALT_INV_Q\(8) <= NOT \U3|reg_G|Q\(8);
\U3|ALT_INV_Mux39~1_combout\ <= NOT \U3|Mux39~1_combout\;
\U3|reg_6|ALT_INV_Q\(8) <= NOT \U3|reg_6|Q\(8);
\U3|reg_5|ALT_INV_Q\(8) <= NOT \U3|reg_5|Q\(8);
\U3|reg_4|ALT_INV_Q\(8) <= NOT \U3|reg_4|Q\(8);
\U3|ALT_INV_Mux39~0_combout\ <= NOT \U3|Mux39~0_combout\;
\U3|reg_3|ALT_INV_Q\(8) <= NOT \U3|reg_3|Q\(8);
\U3|reg_2|ALT_INV_Q\(8) <= NOT \U3|reg_2|Q\(8);
\U3|reg_1|ALT_INV_Q\(8) <= NOT \U3|reg_1|Q\(8);
\U3|reg_0|ALT_INV_Q\(8) <= NOT \U3|reg_0|Q\(8);
\U3|ALT_INV_Mux40~3_combout\ <= NOT \U3|Mux40~3_combout\;
\U3|ALT_INV_Mux40~2_combout\ <= NOT \U3|Mux40~2_combout\;
\ALT_INV_DIN[7]~7_combout\ <= NOT \DIN[7]~7_combout\;
\U6|ALT_INV_Q\(7) <= NOT \U6|Q\(7);
\U3|reg_G|ALT_INV_Q\(7) <= NOT \U3|reg_G|Q\(7);
\U3|ALT_INV_Mux40~1_combout\ <= NOT \U3|Mux40~1_combout\;
\U3|reg_3|ALT_INV_Q\(7) <= NOT \U3|reg_3|Q\(7);
\U3|reg_2|ALT_INV_Q\(7) <= NOT \U3|reg_2|Q\(7);
\U3|reg_1|ALT_INV_Q\(7) <= NOT \U3|reg_1|Q\(7);
\U3|reg_0|ALT_INV_Q\(7) <= NOT \U3|reg_0|Q\(7);
\U3|ALT_INV_Mux40~0_combout\ <= NOT \U3|Mux40~0_combout\;
\U3|reg_6|ALT_INV_Q\(7) <= NOT \U3|reg_6|Q\(7);
\U3|reg_5|ALT_INV_Q\(7) <= NOT \U3|reg_5|Q\(7);
\U3|reg_4|ALT_INV_Q\(7) <= NOT \U3|reg_4|Q\(7);
\U3|ALT_INV_Mux41~3_combout\ <= NOT \U3|Mux41~3_combout\;
\U3|ALT_INV_Mux41~2_combout\ <= NOT \U3|Mux41~2_combout\;
\ALT_INV_DIN[6]~6_combout\ <= NOT \DIN[6]~6_combout\;
\U6|ALT_INV_Q\(6) <= NOT \U6|Q\(6);
\U3|reg_G|ALT_INV_Q\(6) <= NOT \U3|reg_G|Q\(6);
\U3|ALT_INV_Mux41~1_combout\ <= NOT \U3|Mux41~1_combout\;
\U3|reg_3|ALT_INV_Q\(6) <= NOT \U3|reg_3|Q\(6);
\U3|reg_2|ALT_INV_Q\(6) <= NOT \U3|reg_2|Q\(6);
\U3|reg_1|ALT_INV_Q\(6) <= NOT \U3|reg_1|Q\(6);
\U3|reg_0|ALT_INV_Q\(6) <= NOT \U3|reg_0|Q\(6);
\U3|ALT_INV_Mux41~0_combout\ <= NOT \U3|Mux41~0_combout\;
\U3|reg_6|ALT_INV_Q\(6) <= NOT \U3|reg_6|Q\(6);
\U3|reg_5|ALT_INV_Q\(6) <= NOT \U3|reg_5|Q\(6);
\U3|reg_4|ALT_INV_Q\(6) <= NOT \U3|reg_4|Q\(6);
\U3|ALT_INV_Mux42~1_combout\ <= NOT \U3|Mux42~1_combout\;
\ALT_INV_DIN[5]~5_combout\ <= NOT \DIN[5]~5_combout\;
\U6|ALT_INV_Q\(5) <= NOT \U6|Q\(5);
\U3|reg_G|ALT_INV_Q\(5) <= NOT \U3|reg_G|Q\(5);
\U3|ALT_INV_Mux42~0_combout\ <= NOT \U3|Mux42~0_combout\;
\U3|reg_3|ALT_INV_Q\(5) <= NOT \U3|reg_3|Q\(5);
\U3|reg_2|ALT_INV_Q\(5) <= NOT \U3|reg_2|Q\(5);
\U3|reg_1|ALT_INV_Q\(5) <= NOT \U3|reg_1|Q\(5);
\U3|reg_0|ALT_INV_Q\(5) <= NOT \U3|reg_0|Q\(5);
\U3|reg_6|ALT_INV_Q\(5) <= NOT \U3|reg_6|Q\(5);
\U3|reg_5|ALT_INV_Q\(5) <= NOT \U3|reg_5|Q\(5);
\U3|reg_4|ALT_INV_Q\(5) <= NOT \U3|reg_4|Q\(5);
\U3|ALT_INV_Mux43~1_combout\ <= NOT \U3|Mux43~1_combout\;
\ALT_INV_DIN[4]~4_combout\ <= NOT \DIN[4]~4_combout\;
\U6|ALT_INV_Q\(4) <= NOT \U6|Q\(4);
\U3|reg_G|ALT_INV_Q\(4) <= NOT \U3|reg_G|Q\(4);
\U3|ALT_INV_Mux43~0_combout\ <= NOT \U3|Mux43~0_combout\;
\U3|reg_3|ALT_INV_Q\(4) <= NOT \U3|reg_3|Q\(4);
\U3|reg_2|ALT_INV_Q\(4) <= NOT \U3|reg_2|Q\(4);
\U3|reg_1|ALT_INV_Q\(4) <= NOT \U3|reg_1|Q\(4);
\U3|reg_0|ALT_INV_Q\(4) <= NOT \U3|reg_0|Q\(4);
\U3|reg_6|ALT_INV_Q\(4) <= NOT \U3|reg_6|Q\(4);
\U3|reg_5|ALT_INV_Q\(4) <= NOT \U3|reg_5|Q\(4);
\U3|reg_4|ALT_INV_Q\(4) <= NOT \U3|reg_4|Q\(4);
\U3|ALT_INV_Mux44~1_combout\ <= NOT \U3|Mux44~1_combout\;
\ALT_INV_DIN[3]~3_combout\ <= NOT \DIN[3]~3_combout\;
\U6|ALT_INV_Q\(3) <= NOT \U6|Q\(3);
\U3|reg_G|ALT_INV_Q\(3) <= NOT \U3|reg_G|Q\(3);
\U3|reg_IR|ALT_INV_Q\(3) <= NOT \U3|reg_IR|Q\(3);
\U3|ALT_INV_Mux44~0_combout\ <= NOT \U3|Mux44~0_combout\;
\U3|reg_3|ALT_INV_Q\(3) <= NOT \U3|reg_3|Q\(3);
\U3|reg_2|ALT_INV_Q\(3) <= NOT \U3|reg_2|Q\(3);
\U3|reg_1|ALT_INV_Q\(3) <= NOT \U3|reg_1|Q\(3);
\U3|reg_0|ALT_INV_Q\(3) <= NOT \U3|reg_0|Q\(3);
\U3|reg_6|ALT_INV_Q\(3) <= NOT \U3|reg_6|Q\(3);
\U3|reg_5|ALT_INV_Q\(3) <= NOT \U3|reg_5|Q\(3);
\U3|reg_4|ALT_INV_Q\(3) <= NOT \U3|reg_4|Q\(3);
\U3|ALT_INV_Mux45~1_combout\ <= NOT \U3|Mux45~1_combout\;
\ALT_INV_DIN[2]~2_combout\ <= NOT \DIN[2]~2_combout\;
\U6|ALT_INV_Q\(2) <= NOT \U6|Q\(2);
\U3|reg_G|ALT_INV_Q\(2) <= NOT \U3|reg_G|Q\(2);
\U3|ALT_INV_Mux45~0_combout\ <= NOT \U3|Mux45~0_combout\;
\U3|reg_3|ALT_INV_Q\(2) <= NOT \U3|reg_3|Q\(2);
\U3|reg_2|ALT_INV_Q\(2) <= NOT \U3|reg_2|Q\(2);
\U3|reg_1|ALT_INV_Q\(2) <= NOT \U3|reg_1|Q\(2);
\U3|reg_0|ALT_INV_Q\(2) <= NOT \U3|reg_0|Q\(2);
\U3|reg_6|ALT_INV_Q\(2) <= NOT \U3|reg_6|Q\(2);
\U3|reg_5|ALT_INV_Q\(2) <= NOT \U3|reg_5|Q\(2);
\U3|reg_4|ALT_INV_Q\(2) <= NOT \U3|reg_4|Q\(2);
\U3|ALT_INV_Mux46~1_combout\ <= NOT \U3|Mux46~1_combout\;
\ALT_INV_DIN[1]~1_combout\ <= NOT \DIN[1]~1_combout\;
\U6|ALT_INV_Q\(1) <= NOT \U6|Q\(1);
\U3|reg_G|ALT_INV_Q\(1) <= NOT \U3|reg_G|Q\(1);
\U3|ALT_INV_Mux46~0_combout\ <= NOT \U3|Mux46~0_combout\;
\U3|reg_3|ALT_INV_Q\(1) <= NOT \U3|reg_3|Q\(1);
\U3|reg_2|ALT_INV_Q\(1) <= NOT \U3|reg_2|Q\(1);
\U3|reg_1|ALT_INV_Q\(1) <= NOT \U3|reg_1|Q\(1);
\U3|reg_0|ALT_INV_Q\(1) <= NOT \U3|reg_0|Q\(1);
\U3|reg_6|ALT_INV_Q\(1) <= NOT \U3|reg_6|Q\(1);
\U3|reg_5|ALT_INV_Q\(1) <= NOT \U3|reg_5|Q\(1);
\U3|reg_4|ALT_INV_Q\(1) <= NOT \U3|reg_4|Q\(1);
\U3|ALT_INV_Mux32~4_combout\ <= NOT \U3|Mux32~4_combout\;
\U3|ALT_INV_Mux32~3_combout\ <= NOT \U3|Mux32~3_combout\;
\U3|reg_3|ALT_INV_Q\(15) <= NOT \U3|reg_3|Q\(15);
\U3|reg_2|ALT_INV_Q\(15) <= NOT \U3|reg_2|Q\(15);
\U3|reg_1|ALT_INV_Q\(15) <= NOT \U3|reg_1|Q\(15);
\U3|reg_0|ALT_INV_Q\(15) <= NOT \U3|reg_0|Q\(15);
\U3|ALT_INV_Mux32~2_combout\ <= NOT \U3|Mux32~2_combout\;
\U3|reg_6|ALT_INV_Q\(15) <= NOT \U3|reg_6|Q\(15);
\U3|reg_5|ALT_INV_Q\(15) <= NOT \U3|reg_5|Q\(15);
\U3|reg_4|ALT_INV_Q\(15) <= NOT \U3|reg_4|Q\(15);
\U3|ALT_INV_Mux32~1_combout\ <= NOT \U3|Mux32~1_combout\;
\U3|reg_G|ALT_INV_Q\(15) <= NOT \U3|reg_G|Q\(15);
\U3|ALT_INV_Mux32~0_combout\ <= NOT \U3|Mux32~0_combout\;
\U3|reg_IR|ALT_INV_Q\(7) <= NOT \U3|reg_IR|Q\(7);
\U3|ALT_INV_Mux33~4_combout\ <= NOT \U3|Mux33~4_combout\;
\U3|ALT_INV_Mux33~3_combout\ <= NOT \U3|Mux33~3_combout\;
\U3|reg_3|ALT_INV_Q\(14) <= NOT \U3|reg_3|Q\(14);
\U3|reg_2|ALT_INV_Q\(14) <= NOT \U3|reg_2|Q\(14);
\U3|reg_1|ALT_INV_Q\(14) <= NOT \U3|reg_1|Q\(14);
\U3|reg_0|ALT_INV_Q\(14) <= NOT \U3|reg_0|Q\(14);
\U3|ALT_INV_Mux33~2_combout\ <= NOT \U3|Mux33~2_combout\;
\U3|reg_6|ALT_INV_Q\(14) <= NOT \U3|reg_6|Q\(14);
\U3|reg_5|ALT_INV_Q\(14) <= NOT \U3|reg_5|Q\(14);
\U3|reg_4|ALT_INV_Q\(14) <= NOT \U3|reg_4|Q\(14);
\U3|ALT_INV_Mux33~1_combout\ <= NOT \U3|Mux33~1_combout\;
\U3|reg_G|ALT_INV_Q\(14) <= NOT \U3|reg_G|Q\(14);
\U3|ALT_INV_Mux33~0_combout\ <= NOT \U3|Mux33~0_combout\;
\U3|reg_IR|ALT_INV_Q\(6) <= NOT \U3|reg_IR|Q\(6);
\U3|ALT_INV_Mux34~4_combout\ <= NOT \U3|Mux34~4_combout\;
\U3|ALT_INV_Mux34~3_combout\ <= NOT \U3|Mux34~3_combout\;
\U3|reg_3|ALT_INV_Q\(13) <= NOT \U3|reg_3|Q\(13);
\U3|reg_2|ALT_INV_Q\(13) <= NOT \U3|reg_2|Q\(13);
\U3|reg_1|ALT_INV_Q\(13) <= NOT \U3|reg_1|Q\(13);
\U3|reg_0|ALT_INV_Q\(13) <= NOT \U3|reg_0|Q\(13);
\U3|ALT_INV_Mux34~2_combout\ <= NOT \U3|Mux34~2_combout\;
\U3|reg_6|ALT_INV_Q\(13) <= NOT \U3|reg_6|Q\(13);
\U3|reg_5|ALT_INV_Q\(13) <= NOT \U3|reg_5|Q\(13);
\U3|reg_4|ALT_INV_Q\(13) <= NOT \U3|reg_4|Q\(13);
\U3|ALT_INV_Mux34~1_combout\ <= NOT \U3|Mux34~1_combout\;
\U3|reg_G|ALT_INV_Q\(13) <= NOT \U3|reg_G|Q\(13);
\U3|ALT_INV_Mux34~0_combout\ <= NOT \U3|Mux34~0_combout\;
\U3|reg_IR|ALT_INV_Q\(5) <= NOT \U3|reg_IR|Q\(5);
\U3|ALT_INV_Mux35~4_combout\ <= NOT \U3|Mux35~4_combout\;
\U3|ALT_INV_Mux35~3_combout\ <= NOT \U3|Mux35~3_combout\;
\U3|reg_IR|ALT_INV_Q\(4) <= NOT \U3|reg_IR|Q\(4);
\U3|reg_G|ALT_INV_Q\(12) <= NOT \U3|reg_G|Q\(12);
\U3|ALT_INV_Mux35~2_combout\ <= NOT \U3|Mux35~2_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\U3|ALT_INV_Mux35~1_combout\ <= NOT \U3|Mux35~1_combout\;
\U3|reg_3|ALT_INV_Q\(12) <= NOT \U3|reg_3|Q\(12);
\U3|reg_2|ALT_INV_Q\(12) <= NOT \U3|reg_2|Q\(12);
\U3|reg_1|ALT_INV_Q\(12) <= NOT \U3|reg_1|Q\(12);
\U3|reg_0|ALT_INV_Q\(12) <= NOT \U3|reg_0|Q\(12);
\U3|ALT_INV_Mux35~0_combout\ <= NOT \U3|Mux35~0_combout\;
\U3|reg_6|ALT_INV_Q\(12) <= NOT \U3|reg_6|Q\(12);
\U3|reg_5|ALT_INV_Q\(12) <= NOT \U3|reg_5|Q\(12);
\U3|reg_4|ALT_INV_Q\(12) <= NOT \U3|reg_4|Q\(12);
\U3|ALT_INV_Mux47~1_combout\ <= NOT \U3|Mux47~1_combout\;
\ALT_INV_DIN[0]~0_combout\ <= NOT \DIN[0]~0_combout\;
\U6|ALT_INV_Q\(0) <= NOT \U6|Q\(0);
\U3|reg_G|ALT_INV_Q\(0) <= NOT \U3|reg_G|Q\(0);
\U3|ALT_INV_Mux47~0_combout\ <= NOT \U3|Mux47~0_combout\;
\U3|reg_3|ALT_INV_Q\(0) <= NOT \U3|reg_3|Q\(0);
\U3|reg_2|ALT_INV_Q\(0) <= NOT \U3|reg_2|Q\(0);
\U3|reg_1|ALT_INV_Q\(0) <= NOT \U3|reg_1|Q\(0);
\U3|reg_0|ALT_INV_Q\(0) <= NOT \U3|reg_0|Q\(0);
\U3|ALT_INV_Tstep_Q.T4~q\ <= NOT \U3|Tstep_Q.T4~q\;
\U3|ALT_INV_Selector2~2_combout\ <= NOT \U3|Selector2~2_combout\;
\U3|reg_IR|ALT_INV_Q\(11) <= NOT \U3|reg_IR|Q\(11);
\U3|reg_IR|ALT_INV_Q\(2) <= NOT \U3|reg_IR|Q\(2);
\U3|ALT_INV_Selector3~0_combout\ <= NOT \U3|Selector3~0_combout\;
\U3|reg_IR|ALT_INV_Q\(10) <= NOT \U3|reg_IR|Q\(10);
\U3|reg_IR|ALT_INV_Q\(1) <= NOT \U3|reg_IR|Q\(1);
\U3|ALT_INV_Selector4~0_combout\ <= NOT \U3|Selector4~0_combout\;
\U3|reg_IR|ALT_INV_Q\(9) <= NOT \U3|reg_IR|Q\(9);
\U3|reg_IR|ALT_INV_Q\(0) <= NOT \U3|reg_IR|Q\(0);
\U3|ALT_INV_Selector2~1_combout\ <= NOT \U3|Selector2~1_combout\;
\U3|ALT_INV_Tstep_Q.T0~q\ <= NOT \U3|Tstep_Q.T0~q\;
\U3|reg_IR|ALT_INV_Q\(12) <= NOT \U3|reg_IR|Q\(12);
\U3|ALT_INV_Selector2~0_combout\ <= NOT \U3|Selector2~0_combout\;
\U3|reg_IR|ALT_INV_Q\(15) <= NOT \U3|reg_IR|Q\(15);
\U3|reg_IR|ALT_INV_Q\(13) <= NOT \U3|reg_IR|Q\(13);
\U3|ALT_INV_Tstep_Q.T3~q\ <= NOT \U3|Tstep_Q.T3~q\;
\U3|reg_IR|ALT_INV_Q\(14) <= NOT \U3|reg_IR|Q\(14);
\U3|ALT_INV_Tstep_Q.T5~q\ <= NOT \U3|Tstep_Q.T5~q\;
\U3|reg_6|ALT_INV_Q\(0) <= NOT \U3|reg_6|Q\(0);
\U3|reg_5|ALT_INV_Q\(0) <= NOT \U3|reg_5|Q\(0);
\U3|reg_4|ALT_INV_Q\(0) <= NOT \U3|reg_4|Q\(0);
\U1|ALT_INV_Q~q\ <= NOT \U1|Q~q\;
\U3|reg_DOUT|ALT_INV_Q\(3) <= NOT \U3|reg_DOUT|Q\(3);
\U3|reg_DOUT|ALT_INV_Q\(1) <= NOT \U3|reg_DOUT|Q\(1);
\U3|reg_ADDR|ALT_INV_Q\(15) <= NOT \U3|reg_ADDR|Q\(15);
\U3|reg_ADDR|ALT_INV_Q\(14) <= NOT \U3|reg_ADDR|Q\(14);
\U3|reg_ADDR|ALT_INV_Q\(13) <= NOT \U3|reg_ADDR|Q\(13);
\U3|reg_ADDR|ALT_INV_Q\(12) <= NOT \U3|reg_ADDR|Q\(12);
\U2|ALT_INV_Q~q\ <= NOT \U2|Q~q\;
\U3|ALT_INV_Selector1~0_combout\ <= NOT \U3|Selector1~0_combout\;
\U3|Upc|ALT_INV_Count\(11) <= NOT \U3|Upc|Count\(11);
\U3|Upc|ALT_INV_Count\(10) <= NOT \U3|Upc|Count\(10);
\U3|Upc|ALT_INV_Count\(9) <= NOT \U3|Upc|Count\(9);
\U3|Upc|ALT_INV_Count\(8) <= NOT \U3|Upc|Count\(8);
\U3|Upc|ALT_INV_Count\(7) <= NOT \U3|Upc|Count\(7);
\U3|Upc|ALT_INV_Count\(6) <= NOT \U3|Upc|Count\(6);
\U3|Upc|ALT_INV_Count\(5) <= NOT \U3|Upc|Count\(5);
\U3|Upc|ALT_INV_Count\(4) <= NOT \U3|Upc|Count\(4);
\U3|Upc|ALT_INV_Count\(3) <= NOT \U3|Upc|Count\(3);
\U3|Upc|ALT_INV_Count\(2) <= NOT \U3|Upc|Count\(2);
\U3|Upc|ALT_INV_Count\(1) <= NOT \U3|Upc|Count\(1);
\U3|Upc|ALT_INV_Count\(15) <= NOT \U3|Upc|Count\(15);
\U3|Upc|ALT_INV_Count\(14) <= NOT \U3|Upc|Count\(14);
\U3|Upc|ALT_INV_Count\(13) <= NOT \U3|Upc|Count\(13);
\U3|Upc|ALT_INV_Count\(12) <= NOT \U3|Upc|Count\(12);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(1) <= NOT \U4|altsyncram_component|auto_generated|q_a\(1);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(2) <= NOT \U4|altsyncram_component|auto_generated|q_a\(2);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(3) <= NOT \U4|altsyncram_component|auto_generated|q_a\(3);
\U4|altsyncram_component|auto_generated|ALT_INV_q_a\(4) <= NOT \U4|altsyncram_component|auto_generated|q_a\(4);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Q\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U2|Q~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G6
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X33_Y4_N51
\U1|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Q~0_combout\ = (\KEY[0]~input_o\ & \SW[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \ALT_INV_SW[9]~input_o\,
	combout => \U1|Q~0_combout\);

-- Location: FF_X33_Y4_N53
\U1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U1|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|Q~q\);

-- Location: LABCELL_X33_Y4_N48
\U2|Q~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Q~0_combout\ = (\KEY[0]~input_o\ & \U1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_KEY[0]~input_o\,
	datac => \U1|ALT_INV_Q~q\,
	combout => \U2|Q~0_combout\);

-- Location: FF_X33_Y4_N50
\U2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U2|Q~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|Q~q\);

-- Location: FF_X28_Y5_N1
\U3|reg_IR|Q[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[13]~10_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q[13]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y3_N15
\U3|Selector5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector5~1_combout\ = ( \U3|reg_IR|Q[13]~DUPLICATE_q\ & ( \U3|Tstep_Q.T4~q\ & ( (!\U3|reg_IR|Q\(14) & \U3|reg_IR|Q[15]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(14),
	datad => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datae => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_Tstep_Q.T4~q\,
	combout => \U3|Selector5~1_combout\);

-- Location: FF_X29_Y3_N17
\U3|reg_W|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Selector5~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_W|Q~q\);

-- Location: FF_X28_Y5_N17
\U3|reg_IR|Q[14]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[14]~9_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q[14]~DUPLICATE_q\);

-- Location: FF_X28_Y5_N38
\U3|Tstep_Q.T3~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Tstep_Q.T2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T3~DUPLICATE_q\);

-- Location: LABCELL_X30_Y5_N12
\U3|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector5~0_combout\ = ( \U3|reg_IR|Q[13]~DUPLICATE_q\ & ( \U3|reg_IR|Q[15]~DUPLICATE_q\ & ( (!\U3|Tstep_Q.T0~DUPLICATE_q\) # ((!\U3|reg_IR|Q[14]~DUPLICATE_q\ & ((\U3|Tstep_Q.T4~q\) # (\U3|Tstep_Q.T3~DUPLICATE_q\)))) ) ) ) # ( 
-- !\U3|reg_IR|Q[13]~DUPLICATE_q\ & ( \U3|reg_IR|Q[15]~DUPLICATE_q\ & ( (!\U3|Tstep_Q.T0~DUPLICATE_q\) # ((!\U3|reg_IR|Q[14]~DUPLICATE_q\ & \U3|Tstep_Q.T3~DUPLICATE_q\)) ) ) ) # ( \U3|reg_IR|Q[13]~DUPLICATE_q\ & ( !\U3|reg_IR|Q[15]~DUPLICATE_q\ & ( 
-- !\U3|Tstep_Q.T0~DUPLICATE_q\ ) ) ) # ( !\U3|reg_IR|Q[13]~DUPLICATE_q\ & ( !\U3|reg_IR|Q[15]~DUPLICATE_q\ & ( !\U3|Tstep_Q.T0~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101110101011101010111011101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Tstep_Q.T0~DUPLICATE_q\,
	datab => \U3|reg_IR|ALT_INV_Q[14]~DUPLICATE_q\,
	datac => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	datad => \U3|ALT_INV_Tstep_Q.T4~q\,
	datae => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	dataf => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	combout => \U3|Selector5~0_combout\);

-- Location: FF_X27_Y7_N44
\U3|reg_ADDR|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[15]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(15));

-- Location: FF_X28_Y6_N56
\U3|reg_ADDR|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(0));

-- Location: MLABCELL_X28_Y4_N0
\U3|Upc|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~1_sumout\ = SUM(( \U3|Upc|Count\(0) ) + ( VCC ) + ( !VCC ))
-- \U3|Upc|Add0~2\ = CARRY(( \U3|Upc|Count\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(0),
	cin => GND,
	sumout => \U3|Upc|Add0~1_sumout\,
	cout => \U3|Upc|Add0~2\);

-- Location: LABCELL_X30_Y6_N45
\U3|decX|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~2_combout\ = ( \U3|reg_IR|Q[13]~DUPLICATE_q\ & ( \U3|reg_IR|Q\(14) & ( (\U3|reg_IR|Q\(9) & (\U3|Tstep_Q.T5~DUPLICATE_q\ & !\U3|reg_IR|Q[15]~DUPLICATE_q\)) ) ) ) # ( !\U3|reg_IR|Q[13]~DUPLICATE_q\ & ( \U3|reg_IR|Q\(14) & ( (\U3|reg_IR|Q\(9) & 
-- \U3|Tstep_Q.T5~DUPLICATE_q\) ) ) ) # ( \U3|reg_IR|Q[13]~DUPLICATE_q\ & ( !\U3|reg_IR|Q\(14) & ( (\U3|Tstep_Q.T3~DUPLICATE_q\ & (\U3|reg_IR|Q\(9) & !\U3|reg_IR|Q[15]~DUPLICATE_q\)) ) ) ) # ( !\U3|reg_IR|Q[13]~DUPLICATE_q\ & ( !\U3|reg_IR|Q\(14) & ( 
-- (\U3|reg_IR|Q\(9) & ((!\U3|reg_IR|Q[15]~DUPLICATE_q\ & (\U3|Tstep_Q.T3~DUPLICATE_q\)) # (\U3|reg_IR|Q[15]~DUPLICATE_q\ & ((\U3|Tstep_Q.T5~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100000011000100010000000000000011000000110000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	datab => \U3|reg_IR|ALT_INV_Q\(9),
	datac => \U3|ALT_INV_Tstep_Q.T5~DUPLICATE_q\,
	datad => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datae => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	dataf => \U3|reg_IR|ALT_INV_Q\(14),
	combout => \U3|decX|Mux0~2_combout\);

-- Location: FF_X27_Y7_N47
\U3|reg_ADDR|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[12]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(12));

-- Location: LABCELL_X30_Y6_N57
\U3|Ain~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Ain~0_combout\ = ( \U3|reg_IR|Q[15]~DUPLICATE_q\ & ( \U3|reg_IR|Q\(14) & ( (!\U3|reg_IR|Q[13]~DUPLICATE_q\ & \U3|Tstep_Q.T3~DUPLICATE_q\) ) ) ) # ( !\U3|reg_IR|Q[15]~DUPLICATE_q\ & ( \U3|reg_IR|Q\(14) & ( \U3|Tstep_Q.T3~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	datad => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	datae => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	dataf => \U3|reg_IR|ALT_INV_Q\(14),
	combout => \U3|Ain~0_combout\);

-- Location: FF_X29_Y4_N1
\U3|reg_A|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux45~1_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(2));

-- Location: MLABCELL_X28_Y6_N57
\U3|Mux19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux19~0_combout\ = (!\U3|reg_IR|Q[15]~DUPLICATE_q\ & (\U3|reg_IR|Q\(14) & \U3|reg_IR|Q[13]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000010001000000000001000100000000000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datab => \U3|reg_IR|ALT_INV_Q\(14),
	datad => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	combout => \U3|Mux19~0_combout\);

-- Location: FF_X29_Y5_N37
\U3|reg_A|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux46~1_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(1));

-- Location: FF_X29_Y5_N1
\U3|reg_A|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux47~1_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(0));

-- Location: MLABCELL_X28_Y6_N0
\U3|Add0~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~54_cout\ = CARRY(( (\U3|Tstep_Q.T4~q\ & \U3|Mux19~0_combout\) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datad => \U3|ALT_INV_Mux19~0_combout\,
	cin => GND,
	cout => \U3|Add0~54_cout\);

-- Location: MLABCELL_X28_Y6_N3
\U3|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~1_sumout\ = SUM(( !\U3|Mux47~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(0) ) + ( \U3|Add0~54_cout\ ))
-- \U3|Add0~2\ = CARRY(( !\U3|Mux47~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(0) ) + ( \U3|Add0~54_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux47~1_combout\,
	datad => \U3|ALT_INV_Mux19~0_combout\,
	dataf => \U3|reg_A|ALT_INV_Q\(0),
	cin => \U3|Add0~54_cout\,
	sumout => \U3|Add0~1_sumout\,
	cout => \U3|Add0~2\);

-- Location: MLABCELL_X28_Y6_N6
\U3|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~21_sumout\ = SUM(( !\U3|Mux46~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(1) ) + ( \U3|Add0~2\ ))
-- \U3|Add0~22\ = CARRY(( !\U3|Mux46~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(1) ) + ( \U3|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux46~1_combout\,
	datad => \U3|ALT_INV_Mux19~0_combout\,
	dataf => \U3|reg_A|ALT_INV_Q\(1),
	cin => \U3|Add0~2\,
	sumout => \U3|Add0~21_sumout\,
	cout => \U3|Add0~22\);

-- Location: MLABCELL_X28_Y6_N9
\U3|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~25_sumout\ = SUM(( !\U3|Mux45~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(2) ) + ( \U3|Add0~22\ ))
-- \U3|Add0~26\ = CARRY(( !\U3|Mux45~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(2) ) + ( \U3|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux45~1_combout\,
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|reg_A|ALT_INV_Q\(2),
	datad => \U3|ALT_INV_Mux19~0_combout\,
	cin => \U3|Add0~22\,
	sumout => \U3|Add0~25_sumout\,
	cout => \U3|Add0~26\);

-- Location: MLABCELL_X28_Y6_N54
\U3|Gin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Gin~0_combout\ = ( \U3|Tstep_Q.T4~q\ & ( (!\U3|reg_IR|Q[15]~DUPLICATE_q\ & \U3|reg_IR|Q\(14)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datab => \U3|reg_IR|ALT_INV_Q\(14),
	dataf => \U3|ALT_INV_Tstep_Q.T4~q\,
	combout => \U3|Gin~0_combout\);

-- Location: FF_X28_Y6_N11
\U3|reg_G|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~25_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(2));

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: LABCELL_X24_Y4_N24
\U6|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|Q[3]~feeder_combout\ = ( \SW[3]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[3]~input_o\,
	combout => \U6|Q[3]~feeder_combout\);

-- Location: FF_X24_Y4_N25
\U6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U6|Q[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(3));

-- Location: FF_X29_Y6_N49
\U3|reg_A|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux43~1_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(4));

-- Location: FF_X29_Y6_N31
\U3|reg_A|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux44~1_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(3));

-- Location: MLABCELL_X28_Y6_N12
\U3|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~29_sumout\ = SUM(( !\U3|Mux44~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(3) ) + ( \U3|Add0~26\ ))
-- \U3|Add0~30\ = CARRY(( !\U3|Mux44~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(3) ) + ( \U3|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux44~1_combout\,
	datad => \U3|ALT_INV_Mux19~0_combout\,
	dataf => \U3|reg_A|ALT_INV_Q\(3),
	cin => \U3|Add0~26\,
	sumout => \U3|Add0~29_sumout\,
	cout => \U3|Add0~30\);

-- Location: MLABCELL_X28_Y6_N15
\U3|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~33_sumout\ = SUM(( \U3|reg_A|Q\(4) ) + ( !\U3|Mux43~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~30\ ))
-- \U3|Add0~34\ = CARRY(( \U3|reg_A|Q\(4) ) + ( !\U3|Mux43~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux43~1_combout\,
	datad => \U3|reg_A|ALT_INV_Q\(4),
	dataf => \U3|ALT_INV_Mux19~0_combout\,
	cin => \U3|Add0~30\,
	sumout => \U3|Add0~33_sumout\,
	cout => \U3|Add0~34\);

-- Location: FF_X28_Y6_N16
\U3|reg_G|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~33_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(4));

-- Location: MLABCELL_X28_Y4_N3
\U3|Upc|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~21_sumout\ = SUM(( \U3|Upc|Count\(1) ) + ( GND ) + ( \U3|Upc|Add0~2\ ))
-- \U3|Upc|Add0~22\ = CARRY(( \U3|Upc|Count\(1) ) + ( GND ) + ( \U3|Upc|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(1),
	cin => \U3|Upc|Add0~2\,
	sumout => \U3|Upc|Add0~21_sumout\,
	cout => \U3|Upc|Add0~22\);

-- Location: MLABCELL_X28_Y4_N6
\U3|Upc|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~25_sumout\ = SUM(( \U3|Upc|Count\(2) ) + ( GND ) + ( \U3|Upc|Add0~22\ ))
-- \U3|Upc|Add0~26\ = CARRY(( \U3|Upc|Count\(2) ) + ( GND ) + ( \U3|Upc|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|Upc|ALT_INV_Count\(2),
	cin => \U3|Upc|Add0~22\,
	sumout => \U3|Upc|Add0~25_sumout\,
	cout => \U3|Upc|Add0~26\);

-- Location: LABCELL_X29_Y4_N9
\U3|Upc|Count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Count[1]~0_combout\ = ( \U3|decX|Mux0~2_combout\ & ( \U3|Tstep_D.T1~0_combout\ ) ) # ( !\U3|decX|Mux0~2_combout\ & ( \U3|Tstep_D.T1~0_combout\ ) ) # ( \U3|decX|Mux0~2_combout\ & ( !\U3|Tstep_D.T1~0_combout\ & ( (!\KEY[0]~input_o\) # 
-- ((\U3|reg_IR|Q\(11) & \U3|reg_IR|Q\(10))) ) ) ) # ( !\U3|decX|Mux0~2_combout\ & ( !\U3|Tstep_D.T1~0_combout\ & ( !\KEY[0]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111001111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|reg_IR|ALT_INV_Q\(11),
	datac => \ALT_INV_KEY[0]~input_o\,
	datad => \U3|reg_IR|ALT_INV_Q\(10),
	datae => \U3|decX|ALT_INV_Mux0~2_combout\,
	dataf => \U3|ALT_INV_Tstep_D.T1~0_combout\,
	combout => \U3|Upc|Count[1]~0_combout\);

-- Location: FF_X28_Y4_N8
\U3|Upc|Count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~25_sumout\,
	asdata => \U3|Mux45~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(2));

-- Location: MLABCELL_X28_Y4_N9
\U3|Upc|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~29_sumout\ = SUM(( \U3|Upc|Count\(3) ) + ( GND ) + ( \U3|Upc|Add0~26\ ))
-- \U3|Upc|Add0~30\ = CARRY(( \U3|Upc|Count\(3) ) + ( GND ) + ( \U3|Upc|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(3),
	cin => \U3|Upc|Add0~26\,
	sumout => \U3|Upc|Add0~29_sumout\,
	cout => \U3|Upc|Add0~30\);

-- Location: FF_X28_Y4_N11
\U3|Upc|Count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~29_sumout\,
	asdata => \U3|Mux44~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(3));

-- Location: MLABCELL_X28_Y4_N12
\U3|Upc|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~33_sumout\ = SUM(( \U3|Upc|Count\(4) ) + ( GND ) + ( \U3|Upc|Add0~30\ ))
-- \U3|Upc|Add0~34\ = CARRY(( \U3|Upc|Count\(4) ) + ( GND ) + ( \U3|Upc|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|Upc|ALT_INV_Count\(4),
	cin => \U3|Upc|Add0~30\,
	sumout => \U3|Upc|Add0~33_sumout\,
	cout => \U3|Upc|Add0~34\);

-- Location: FF_X28_Y4_N14
\U3|Upc|Count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~33_sumout\,
	asdata => \U3|Mux43~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(4));

-- Location: MLABCELL_X25_Y6_N6
\U3|reg_5|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_5|Q[4]~feeder_combout\ = ( \U3|Mux43~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux43~1_combout\,
	combout => \U3|reg_5|Q[4]~feeder_combout\);

-- Location: LABCELL_X29_Y4_N36
\U3|decX|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~3_combout\ = ( \U3|decX|Mux0~2_combout\ & ( (!\U3|reg_IR|Q\(10) & \U3|reg_IR|Q\(11)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000100010001000000000000000000010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(10),
	datab => \U3|reg_IR|ALT_INV_Q\(11),
	datae => \U3|decX|ALT_INV_Mux0~2_combout\,
	combout => \U3|decX|Mux0~3_combout\);

-- Location: FF_X25_Y6_N7
\U3|reg_5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_5|Q[4]~feeder_combout\,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(4));

-- Location: LABCELL_X29_Y6_N39
\U3|Mux43~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux43~2_combout\ = ( \U3|Selector3~0_combout\ & ( \U3|Selector4~0_combout\ & ( (!\U3|reg_5|Q\(4)) # (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Selector3~0_combout\ & ( \U3|Selector4~0_combout\ & ( (!\U3|Upc|Count\(4) & !\U3|Selector1~0_combout\) ) ) ) 
-- # ( !\U3|Selector3~0_combout\ & ( !\U3|Selector4~0_combout\ & ( \U3|Selector1~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000010101010000000001100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(4),
	datab => \U3|reg_5|ALT_INV_Q\(4),
	datad => \U3|ALT_INV_Selector1~0_combout\,
	datae => \U3|ALT_INV_Selector3~0_combout\,
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux43~2_combout\);

-- Location: LABCELL_X29_Y6_N57
\U3|Mux43~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux43~4_combout\ = ( \U3|reg_G|Q\(4) & ( \U3|Mux43~2_combout\ & ( (\U3|Selector2~2_combout\) # (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|reg_G|Q\(4) & ( \U3|Mux43~2_combout\ & ( (\U3|Selector2~2_combout\) # (\U3|Selector1~0_combout\) ) ) ) # ( 
-- !\U3|reg_G|Q\(4) & ( !\U3|Mux43~2_combout\ & ( (\U3|Selector1~0_combout\ & !\U3|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000000000000000000001010101111111110101010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \U3|ALT_INV_Selector2~2_combout\,
	datae => \U3|reg_G|ALT_INV_Q\(4),
	dataf => \U3|ALT_INV_Mux43~2_combout\,
	combout => \U3|Mux43~4_combout\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X25_Y2_N16
\U6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(4));

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X25_Y6_N53
\U6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(5));

-- Location: MLABCELL_X28_Y4_N15
\U3|Upc|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~37_sumout\ = SUM(( \U3|Upc|Count\(5) ) + ( GND ) + ( \U3|Upc|Add0~34\ ))
-- \U3|Upc|Add0~38\ = CARRY(( \U3|Upc|Count\(5) ) + ( GND ) + ( \U3|Upc|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(5),
	cin => \U3|Upc|Add0~34\,
	sumout => \U3|Upc|Add0~37_sumout\,
	cout => \U3|Upc|Add0~38\);

-- Location: FF_X28_Y4_N17
\U3|Upc|Count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~37_sumout\,
	asdata => \U3|Mux42~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(5));

-- Location: MLABCELL_X28_Y4_N18
\U3|Upc|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~41_sumout\ = SUM(( \U3|Upc|Count\(6) ) + ( GND ) + ( \U3|Upc|Add0~38\ ))
-- \U3|Upc|Add0~42\ = CARRY(( \U3|Upc|Count\(6) ) + ( GND ) + ( \U3|Upc|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(6),
	cin => \U3|Upc|Add0~38\,
	sumout => \U3|Upc|Add0~41_sumout\,
	cout => \U3|Upc|Add0~42\);

-- Location: FF_X28_Y4_N20
\U3|Upc|Count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~41_sumout\,
	asdata => \U3|Mux41~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(6));

-- Location: LABCELL_X30_Y5_N39
\U3|reg_4|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_4|Q[6]~feeder_combout\ = ( \U3|Mux41~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux41~3_combout\,
	combout => \U3|reg_4|Q[6]~feeder_combout\);

-- Location: FF_X28_Y5_N13
\U3|reg_IR|Q[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[10]~14_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q[10]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y6_N51
\U3|decX|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~0_combout\ = ( \U3|reg_IR|Q[13]~DUPLICATE_q\ & ( \U3|reg_IR|Q\(14) & ( (!\U3|reg_IR|Q\(9) & (\U3|Tstep_Q.T5~DUPLICATE_q\ & !\U3|reg_IR|Q[15]~DUPLICATE_q\)) ) ) ) # ( !\U3|reg_IR|Q[13]~DUPLICATE_q\ & ( \U3|reg_IR|Q\(14) & ( (!\U3|reg_IR|Q\(9) 
-- & \U3|Tstep_Q.T5~DUPLICATE_q\) ) ) ) # ( \U3|reg_IR|Q[13]~DUPLICATE_q\ & ( !\U3|reg_IR|Q\(14) & ( (\U3|Tstep_Q.T3~DUPLICATE_q\ & (!\U3|reg_IR|Q\(9) & !\U3|reg_IR|Q[15]~DUPLICATE_q\)) ) ) ) # ( !\U3|reg_IR|Q[13]~DUPLICATE_q\ & ( !\U3|reg_IR|Q\(14) & ( 
-- (!\U3|reg_IR|Q\(9) & ((!\U3|reg_IR|Q[15]~DUPLICATE_q\ & (\U3|Tstep_Q.T3~DUPLICATE_q\)) # (\U3|reg_IR|Q[15]~DUPLICATE_q\ & ((\U3|Tstep_Q.T5~DUPLICATE_q\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001100010001000000000000001100000011000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	datab => \U3|reg_IR|ALT_INV_Q\(9),
	datac => \U3|ALT_INV_Tstep_Q.T5~DUPLICATE_q\,
	datad => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datae => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	dataf => \U3|reg_IR|ALT_INV_Q\(14),
	combout => \U3|decX|Mux0~0_combout\);

-- Location: LABCELL_X29_Y6_N18
\U3|decX|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~1_combout\ = ( !\U3|reg_IR|Q[10]~DUPLICATE_q\ & ( \U3|decX|Mux0~0_combout\ & ( \U3|reg_IR|Q\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|reg_IR|ALT_INV_Q\(11),
	datae => \U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\,
	dataf => \U3|decX|ALT_INV_Mux0~0_combout\,
	combout => \U3|decX|Mux0~1_combout\);

-- Location: FF_X30_Y5_N41
\U3|reg_4|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_4|Q[6]~feeder_combout\,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(6));

-- Location: FF_X27_Y4_N59
\U3|reg_5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux41~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(6));

-- Location: LABCELL_X29_Y6_N0
\U3|decX|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~4_combout\ = ( \U3|reg_IR|Q[10]~DUPLICATE_q\ & ( \U3|decX|Mux0~0_combout\ & ( \U3|reg_IR|Q\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|reg_IR|ALT_INV_Q\(11),
	datae => \U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\,
	dataf => \U3|decX|ALT_INV_Mux0~0_combout\,
	combout => \U3|decX|Mux0~4_combout\);

-- Location: FF_X30_Y5_N20
\U3|reg_6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux41~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(6));

-- Location: LABCELL_X30_Y5_N18
\U3|Mux41~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux41~0_combout\ = ( \U3|reg_6|Q\(6) & ( \U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|reg_4|Q\(6))) # (\U3|Selector4~0_combout\ & ((\U3|reg_5|Q\(6)))) ) ) ) # ( !\U3|reg_6|Q\(6) & ( \U3|Selector3~0_combout\ & ( 
-- (!\U3|Selector4~0_combout\ & (\U3|reg_4|Q\(6))) # (\U3|Selector4~0_combout\ & ((\U3|reg_5|Q\(6)))) ) ) ) # ( \U3|reg_6|Q\(6) & ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\) # (\U3|Upc|Count\(6)) ) ) ) # ( !\U3|reg_6|Q\(6) & ( 
-- !\U3|Selector3~0_combout\ & ( (\U3|Upc|Count\(6) & \U3|Selector4~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(6),
	datab => \U3|reg_4|ALT_INV_Q\(6),
	datac => \U3|reg_5|ALT_INV_Q\(6),
	datad => \U3|ALT_INV_Selector4~0_combout\,
	datae => \U3|reg_6|ALT_INV_Q\(6),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux41~0_combout\);

-- Location: LABCELL_X31_Y5_N24
\U3|reg_0|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[6]~feeder_combout\ = ( \U3|Mux41~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux41~3_combout\,
	combout => \U3|reg_0|Q[6]~feeder_combout\);

-- Location: LABCELL_X30_Y6_N12
\U3|decX|Mux0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~6_combout\ = (!\U3|reg_IR|Q\(11) & (!\U3|reg_IR|Q[10]~DUPLICATE_q\ & \U3|decX|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(11),
	datab => \U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\,
	datac => \U3|decX|ALT_INV_Mux0~0_combout\,
	combout => \U3|decX|Mux0~6_combout\);

-- Location: FF_X31_Y5_N25
\U3|reg_0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[6]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(6));

-- Location: FF_X30_Y5_N16
\U3|reg_1|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux41~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(6));

-- Location: LABCELL_X30_Y6_N15
\U3|decX|Mux0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~9_combout\ = ( \U3|reg_IR|Q[10]~DUPLICATE_q\ & ( (!\U3|reg_IR|Q\(11) & \U3|decX|Mux0~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(11),
	datad => \U3|decX|ALT_INV_Mux0~2_combout\,
	dataf => \U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\,
	combout => \U3|decX|Mux0~9_combout\);

-- Location: FF_X27_Y5_N56
\U3|reg_3|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux41~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(6));

-- Location: LABCELL_X31_Y5_N33
\U3|reg_2|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[6]~feeder_combout\ = ( \U3|Mux41~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux41~3_combout\,
	combout => \U3|reg_2|Q[6]~feeder_combout\);

-- Location: LABCELL_X30_Y6_N6
\U3|decX|Mux0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~8_combout\ = (\U3|decX|Mux0~0_combout\ & (\U3|reg_IR|Q[10]~DUPLICATE_q\ & !\U3|reg_IR|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|decX|ALT_INV_Mux0~0_combout\,
	datab => \U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\,
	datac => \U3|reg_IR|ALT_INV_Q\(11),
	combout => \U3|decX|Mux0~8_combout\);

-- Location: FF_X31_Y5_N34
\U3|reg_2|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[6]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(6));

-- Location: LABCELL_X27_Y5_N54
\U3|Mux41~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux41~1_combout\ = ( \U3|reg_3|Q\(6) & ( \U3|reg_2|Q\(6) & ( (!\U3|Selector3~0_combout\) # ((!\U3|Selector4~0_combout\ & (\U3|reg_0|Q\(6))) # (\U3|Selector4~0_combout\ & ((\U3|reg_1|Q\(6))))) ) ) ) # ( !\U3|reg_3|Q\(6) & ( \U3|reg_2|Q\(6) & ( 
-- (!\U3|Selector3~0_combout\ & (((!\U3|Selector4~0_combout\)))) # (\U3|Selector3~0_combout\ & ((!\U3|Selector4~0_combout\ & (\U3|reg_0|Q\(6))) # (\U3|Selector4~0_combout\ & ((\U3|reg_1|Q\(6)))))) ) ) ) # ( \U3|reg_3|Q\(6) & ( !\U3|reg_2|Q\(6) & ( 
-- (!\U3|Selector3~0_combout\ & (((\U3|Selector4~0_combout\)))) # (\U3|Selector3~0_combout\ & ((!\U3|Selector4~0_combout\ & (\U3|reg_0|Q\(6))) # (\U3|Selector4~0_combout\ & ((\U3|reg_1|Q\(6)))))) ) ) ) # ( !\U3|reg_3|Q\(6) & ( !\U3|reg_2|Q\(6) & ( 
-- (\U3|Selector3~0_combout\ & ((!\U3|Selector4~0_combout\ & (\U3|reg_0|Q\(6))) # (\U3|Selector4~0_combout\ & ((\U3|reg_1|Q\(6)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010011000111000001111111010000110100111101110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_0|ALT_INV_Q\(6),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \U3|reg_1|ALT_INV_Q\(6),
	datae => \U3|reg_3|ALT_INV_Q\(6),
	dataf => \U3|reg_2|ALT_INV_Q\(6),
	combout => \U3|Mux41~1_combout\);

-- Location: FF_X27_Y5_N34
\U3|reg_A|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux41~3_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(6));

-- Location: FF_X27_Y6_N8
\U3|reg_A|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux42~1_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(5));

-- Location: MLABCELL_X28_Y6_N18
\U3|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~37_sumout\ = SUM(( !\U3|Mux42~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(5) ) + ( \U3|Add0~34\ ))
-- \U3|Add0~38\ = CARRY(( !\U3|Mux42~1_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(5) ) + ( \U3|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_A|ALT_INV_Q\(5),
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux42~1_combout\,
	datad => \U3|ALT_INV_Mux19~0_combout\,
	cin => \U3|Add0~34\,
	sumout => \U3|Add0~37_sumout\,
	cout => \U3|Add0~38\);

-- Location: MLABCELL_X28_Y6_N21
\U3|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~41_sumout\ = SUM(( \U3|reg_A|Q\(6) ) + ( !\U3|Mux41~3_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~38\ ))
-- \U3|Add0~42\ = CARRY(( \U3|reg_A|Q\(6) ) + ( !\U3|Mux41~3_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux41~3_combout\,
	datad => \U3|reg_A|ALT_INV_Q\(6),
	dataf => \U3|ALT_INV_Mux19~0_combout\,
	cin => \U3|Add0~38\,
	sumout => \U3|Add0~41_sumout\,
	cout => \U3|Add0~42\);

-- Location: FF_X28_Y6_N22
\U3|reg_G|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~41_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(6));

-- Location: LABCELL_X27_Y4_N51
\U3|reg_1|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_1|Q[7]~feeder_combout\ = ( \U3|Mux40~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux40~3_combout\,
	combout => \U3|reg_1|Q[7]~feeder_combout\);

-- Location: FF_X27_Y4_N52
\U3|reg_1|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_1|Q[7]~feeder_combout\,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(7));

-- Location: FF_X30_Y4_N22
\U3|reg_2|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux40~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(7));

-- Location: FF_X30_Y4_N16
\U3|reg_0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux40~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(7));

-- Location: FF_X28_Y4_N56
\U3|reg_3|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux40~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(7));

-- Location: MLABCELL_X28_Y4_N54
\U3|Mux40~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux40~1_combout\ = ( \U3|reg_3|Q\(7) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_1|Q\(7)) ) ) ) # ( !\U3|reg_3|Q\(7) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_1|Q\(7) & \U3|Selector3~0_combout\) ) ) ) # ( \U3|reg_3|Q\(7) & 
-- ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(7))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(7)))) ) ) ) # ( !\U3|reg_3|Q\(7) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(7))) # 
-- (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_1|ALT_INV_Q\(7),
	datab => \U3|reg_2|ALT_INV_Q\(7),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_0|ALT_INV_Q\(7),
	datae => \U3|reg_3|ALT_INV_Q\(7),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux40~1_combout\);

-- Location: MLABCELL_X28_Y4_N21
\U3|Upc|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~45_sumout\ = SUM(( \U3|Upc|Count\(7) ) + ( GND ) + ( \U3|Upc|Add0~42\ ))
-- \U3|Upc|Add0~46\ = CARRY(( \U3|Upc|Count\(7) ) + ( GND ) + ( \U3|Upc|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(7),
	cin => \U3|Upc|Add0~42\,
	sumout => \U3|Upc|Add0~45_sumout\,
	cout => \U3|Upc|Add0~46\);

-- Location: FF_X28_Y4_N23
\U3|Upc|Count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~45_sumout\,
	asdata => \U3|Mux40~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(7));

-- Location: FF_X28_Y7_N53
\U3|reg_4|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux40~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(7));

-- Location: FF_X28_Y7_N28
\U3|reg_5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux40~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(7));

-- Location: FF_X28_Y7_N20
\U3|reg_6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux40~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(7));

-- Location: MLABCELL_X28_Y7_N18
\U3|Mux40~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux40~0_combout\ = ( \U3|reg_6|Q\(7) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(7))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(7)))) ) ) ) # ( !\U3|reg_6|Q\(7) & ( \U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(7))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(7)))) ) ) ) # ( \U3|reg_6|Q\(7) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_4|Q\(7)) ) ) ) # ( !\U3|reg_6|Q\(7) & ( 
-- !\U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\ & \U3|reg_4|Q\(7)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(7),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_4|ALT_INV_Q\(7),
	datad => \U3|reg_5|ALT_INV_Q\(7),
	datae => \U3|reg_6|ALT_INV_Q\(7),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux40~0_combout\);

-- Location: LABCELL_X33_Y5_N15
\U3|reg_DOUT|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[1]~feeder_combout\ = ( \U3|Mux46~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux46~1_combout\,
	combout => \U3|reg_DOUT|Q[1]~feeder_combout\);

-- Location: LABCELL_X30_Y6_N27
\U3|DOUTin~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|DOUTin~0_combout\ = ( \U3|Tstep_Q.T5~DUPLICATE_q\ & ( !\U3|reg_IR|Q\(14) & ( (\U3|reg_IR|Q[15]~DUPLICATE_q\ & !\U3|reg_IR|Q[13]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datac => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	datae => \U3|ALT_INV_Tstep_Q.T5~DUPLICATE_q\,
	dataf => \U3|reg_IR|ALT_INV_Q\(14),
	combout => \U3|DOUTin~0_combout\);

-- Location: FF_X33_Y5_N16
\U3|reg_DOUT|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[1]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(1));

-- Location: LABCELL_X30_Y6_N36
\U3|reg_DOUT|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[2]~feeder_combout\ = ( \U3|Mux45~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux45~1_combout\,
	combout => \U3|reg_DOUT|Q[2]~feeder_combout\);

-- Location: FF_X30_Y6_N37
\U3|reg_DOUT|Q[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[2]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q[2]~DUPLICATE_q\);

-- Location: FF_X29_Y6_N14
\U3|reg_DOUT|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux44~1_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(3));

-- Location: LABCELL_X30_Y6_N21
\U3|reg_DOUT|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[4]~feeder_combout\ = ( \U3|Mux43~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux43~1_combout\,
	combout => \U3|reg_DOUT|Q[4]~feeder_combout\);

-- Location: FF_X30_Y6_N22
\U3|reg_DOUT|Q[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[4]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q[4]~DUPLICATE_q\);

-- Location: FF_X30_Y6_N19
\U3|reg_DOUT|Q[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux42~1_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q[5]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y6_N39
\U3|reg_DOUT|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[6]~feeder_combout\ = ( \U3|Mux41~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux41~3_combout\,
	combout => \U3|reg_DOUT|Q[6]~feeder_combout\);

-- Location: FF_X30_Y6_N40
\U3|reg_DOUT|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[6]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(6));

-- Location: FF_X30_Y6_N17
\U3|reg_DOUT|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux40~3_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(7));

-- Location: LABCELL_X31_Y5_N30
\U3|reg_2|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[8]~feeder_combout\ = ( \U3|Mux39~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux39~3_combout\,
	combout => \U3|reg_2|Q[8]~feeder_combout\);

-- Location: FF_X31_Y5_N31
\U3|reg_2|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[8]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(8));

-- Location: FF_X29_Y5_N49
\U3|reg_1|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux39~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(8));

-- Location: FF_X27_Y5_N2
\U3|reg_3|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux39~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(8));

-- Location: LABCELL_X31_Y5_N0
\U3|reg_0|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[8]~feeder_combout\ = ( \U3|Mux39~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux39~3_combout\,
	combout => \U3|reg_0|Q[8]~feeder_combout\);

-- Location: FF_X31_Y5_N1
\U3|reg_0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[8]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(8));

-- Location: LABCELL_X27_Y5_N0
\U3|Mux39~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux39~0_combout\ = ( \U3|reg_3|Q\(8) & ( \U3|reg_0|Q\(8) & ( (!\U3|Selector4~0_combout\ & (((\U3|reg_2|Q\(8))) # (\U3|Selector3~0_combout\))) # (\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\) # ((\U3|reg_1|Q\(8))))) ) ) ) # ( !\U3|reg_3|Q\(8) 
-- & ( \U3|reg_0|Q\(8) & ( (!\U3|Selector4~0_combout\ & (((\U3|reg_2|Q\(8))) # (\U3|Selector3~0_combout\))) # (\U3|Selector4~0_combout\ & (\U3|Selector3~0_combout\ & ((\U3|reg_1|Q\(8))))) ) ) ) # ( \U3|reg_3|Q\(8) & ( !\U3|reg_0|Q\(8) & ( 
-- (!\U3|Selector4~0_combout\ & (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(8)))) # (\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\) # ((\U3|reg_1|Q\(8))))) ) ) ) # ( !\U3|reg_3|Q\(8) & ( !\U3|reg_0|Q\(8) & ( (!\U3|Selector4~0_combout\ & 
-- (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(8)))) # (\U3|Selector4~0_combout\ & (\U3|Selector3~0_combout\ & ((\U3|reg_1|Q\(8))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001010011000101110100101010001110110110111001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_2|ALT_INV_Q\(8),
	datad => \U3|reg_1|ALT_INV_Q\(8),
	datae => \U3|reg_3|ALT_INV_Q\(8),
	dataf => \U3|reg_0|ALT_INV_Q\(8),
	combout => \U3|Mux39~0_combout\);

-- Location: MLABCELL_X28_Y7_N0
\U3|reg_4|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_4|Q[8]~feeder_combout\ = ( \U3|Mux39~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux39~3_combout\,
	combout => \U3|reg_4|Q[8]~feeder_combout\);

-- Location: FF_X28_Y7_N2
\U3|reg_4|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_4|Q[8]~feeder_combout\,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(8));

-- Location: MLABCELL_X28_Y7_N39
\U3|reg_5|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_5|Q[8]~feeder_combout\ = ( \U3|Mux39~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux39~3_combout\,
	combout => \U3|reg_5|Q[8]~feeder_combout\);

-- Location: FF_X28_Y7_N41
\U3|reg_5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_5|Q[8]~feeder_combout\,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(8));

-- Location: MLABCELL_X28_Y4_N24
\U3|Upc|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~49_sumout\ = SUM(( \U3|Upc|Count\(8) ) + ( GND ) + ( \U3|Upc|Add0~46\ ))
-- \U3|Upc|Add0~50\ = CARRY(( \U3|Upc|Count\(8) ) + ( GND ) + ( \U3|Upc|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(8),
	cin => \U3|Upc|Add0~46\,
	sumout => \U3|Upc|Add0~49_sumout\,
	cout => \U3|Upc|Add0~50\);

-- Location: FF_X28_Y4_N26
\U3|Upc|Count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~49_sumout\,
	asdata => \U3|Mux39~3_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(8));

-- Location: FF_X28_Y7_N14
\U3|reg_6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux39~3_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(8));

-- Location: MLABCELL_X28_Y7_N12
\U3|Mux39~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux39~1_combout\ = ( \U3|reg_6|Q\(8) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|Upc|Count\(8)))) # (\U3|Selector3~0_combout\ & (\U3|reg_5|Q\(8))) ) ) ) # ( !\U3|reg_6|Q\(8) & ( \U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector3~0_combout\ & ((\U3|Upc|Count\(8)))) # (\U3|Selector3~0_combout\ & (\U3|reg_5|Q\(8))) ) ) ) # ( \U3|reg_6|Q\(8) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_4|Q\(8)) ) ) ) # ( !\U3|reg_6|Q\(8) & ( 
-- !\U3|Selector4~0_combout\ & ( (\U3|reg_4|Q\(8) & \U3|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_4|ALT_INV_Q\(8),
	datab => \U3|reg_5|ALT_INV_Q\(8),
	datac => \U3|Upc|ALT_INV_Count\(8),
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \U3|reg_6|ALT_INV_Q\(8),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux39~1_combout\);

-- Location: FF_X29_Y4_N19
\U3|reg_A|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux37~4_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(10));

-- Location: FF_X29_Y7_N7
\U3|reg_A|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux38~4_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(9));

-- Location: FF_X27_Y5_N32
\U3|reg_A|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux39~3_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(8));

-- Location: FF_X27_Y5_N20
\U3|reg_A|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux40~3_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(7));

-- Location: MLABCELL_X28_Y6_N24
\U3|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~45_sumout\ = SUM(( !\U3|Mux40~3_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(7) ) + ( \U3|Add0~42\ ))
-- \U3|Add0~46\ = CARRY(( !\U3|Mux40~3_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(7) ) + ( \U3|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux40~3_combout\,
	datad => \U3|ALT_INV_Mux19~0_combout\,
	dataf => \U3|reg_A|ALT_INV_Q\(7),
	cin => \U3|Add0~42\,
	sumout => \U3|Add0~45_sumout\,
	cout => \U3|Add0~46\);

-- Location: MLABCELL_X28_Y6_N27
\U3|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~49_sumout\ = SUM(( !\U3|Mux39~3_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(8) ) + ( \U3|Add0~46\ ))
-- \U3|Add0~50\ = CARRY(( !\U3|Mux39~3_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|reg_A|Q\(8) ) + ( \U3|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000111100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_A|ALT_INV_Q\(8),
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux39~3_combout\,
	datad => \U3|ALT_INV_Mux19~0_combout\,
	cin => \U3|Add0~46\,
	sumout => \U3|Add0~49_sumout\,
	cout => \U3|Add0~50\);

-- Location: MLABCELL_X28_Y6_N30
\U3|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~65_sumout\ = SUM(( \U3|reg_A|Q\(9) ) + ( !\U3|Mux38~4_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~50\ ))
-- \U3|Add0~66\ = CARRY(( \U3|reg_A|Q\(9) ) + ( !\U3|Mux38~4_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux38~4_combout\,
	datad => \U3|reg_A|ALT_INV_Q\(9),
	dataf => \U3|ALT_INV_Mux19~0_combout\,
	cin => \U3|Add0~50\,
	sumout => \U3|Add0~65_sumout\,
	cout => \U3|Add0~66\);

-- Location: MLABCELL_X28_Y6_N33
\U3|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~61_sumout\ = SUM(( \U3|reg_A|Q\(10) ) + ( !\U3|Mux37~4_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~66\ ))
-- \U3|Add0~62\ = CARRY(( \U3|reg_A|Q\(10) ) + ( !\U3|Mux37~4_combout\ $ (((!\U3|Tstep_Q.T4~q\) # (!\U3|Mux19~0_combout\))) ) + ( \U3|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001100001100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux37~4_combout\,
	datad => \U3|reg_A|ALT_INV_Q\(10),
	dataf => \U3|ALT_INV_Mux19~0_combout\,
	cin => \U3|Add0~66\,
	sumout => \U3|Add0~61_sumout\,
	cout => \U3|Add0~62\);

-- Location: FF_X28_Y6_N34
\U3|reg_G|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~61_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(10));

-- Location: LABCELL_X29_Y4_N33
\U3|Mux37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux37~3_combout\ = ( \U3|Selector3~0_combout\ & ( (\U3|reg_G|Q\(10) & !\U3|Selector4~0_combout\) ) ) # ( !\U3|Selector3~0_combout\ & ( (\U3|reg_IR|Q\(2) & !\U3|Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_G|ALT_INV_Q\(10),
	datac => \U3|reg_IR|ALT_INV_Q\(2),
	datad => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux37~3_combout\);

-- Location: MLABCELL_X28_Y4_N27
\U3|Upc|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~61_sumout\ = SUM(( \U3|Upc|Count\(9) ) + ( GND ) + ( \U3|Upc|Add0~50\ ))
-- \U3|Upc|Add0~62\ = CARRY(( \U3|Upc|Count\(9) ) + ( GND ) + ( \U3|Upc|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(9),
	cin => \U3|Upc|Add0~50\,
	sumout => \U3|Upc|Add0~61_sumout\,
	cout => \U3|Upc|Add0~62\);

-- Location: FF_X28_Y4_N29
\U3|Upc|Count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~61_sumout\,
	asdata => \U3|Mux38~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(9));

-- Location: MLABCELL_X28_Y4_N30
\U3|Upc|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~57_sumout\ = SUM(( \U3|Upc|Count\(10) ) + ( GND ) + ( \U3|Upc|Add0~62\ ))
-- \U3|Upc|Add0~58\ = CARRY(( \U3|Upc|Count\(10) ) + ( GND ) + ( \U3|Upc|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|Upc|ALT_INV_Count\(10),
	cin => \U3|Upc|Add0~62\,
	sumout => \U3|Upc|Add0~57_sumout\,
	cout => \U3|Upc|Add0~58\);

-- Location: FF_X28_Y4_N32
\U3|Upc|Count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~57_sumout\,
	asdata => \U3|Mux37~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(10));

-- Location: FF_X30_Y5_N1
\U3|reg_4|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux37~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(10));

-- Location: LABCELL_X27_Y4_N12
\U3|reg_5|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_5|Q[10]~feeder_combout\ = ( \U3|Mux37~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux37~4_combout\,
	combout => \U3|reg_5|Q[10]~feeder_combout\);

-- Location: FF_X27_Y4_N13
\U3|reg_5|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_5|Q[10]~feeder_combout\,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(10));

-- Location: FF_X29_Y4_N44
\U3|reg_6|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux37~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(10));

-- Location: LABCELL_X29_Y4_N42
\U3|Mux37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux37~1_combout\ = ( \U3|reg_6|Q\(10) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(10))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(10)))) ) ) ) # ( !\U3|reg_6|Q\(10) & ( \U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(10))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(10)))) ) ) ) # ( \U3|reg_6|Q\(10) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_4|Q\(10)) ) ) ) # ( !\U3|reg_6|Q\(10) & ( 
-- !\U3|Selector4~0_combout\ & ( (\U3|reg_4|Q\(10) & \U3|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(10),
	datab => \U3|reg_4|ALT_INV_Q\(10),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_5|ALT_INV_Q\(10),
	datae => \U3|reg_6|ALT_INV_Q\(10),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux37~1_combout\);

-- Location: LABCELL_X27_Y7_N18
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & ( !\U3|reg_ADDR|Q\(15) & ( (!\U3|reg_ADDR|Q\(14) & !\U3|reg_ADDR|Q\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datad => \U3|reg_ADDR|ALT_INV_Q\(13),
	datae => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	dataf => \U3|reg_ADDR|ALT_INV_Q\(15),
	combout => \Equal0~0_combout\);

-- Location: MLABCELL_X28_Y5_N30
\U3|Mux37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux37~2_combout\ = ( \U3|Selector4~0_combout\ & ( \U4|altsyncram_component|auto_generated|q_a\(10) & ( (!\U3|Selector3~0_combout\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \U3|Mux37~2_combout\);

-- Location: FF_X30_Y4_N28
\U3|reg_2|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux37~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(10));

-- Location: FF_X30_Y4_N46
\U3|reg_1|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux37~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(10));

-- Location: FF_X30_Y4_N5
\U3|reg_0|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux37~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(10));

-- Location: FF_X29_Y4_N26
\U3|reg_3|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux37~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(10));

-- Location: LABCELL_X29_Y4_N24
\U3|Mux37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux37~0_combout\ = ( \U3|reg_3|Q\(10) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_1|Q\(10)) ) ) ) # ( !\U3|reg_3|Q\(10) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_1|Q\(10) & \U3|Selector3~0_combout\) ) ) ) # ( 
-- \U3|reg_3|Q\(10) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(10))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(10)))) ) ) ) # ( !\U3|reg_3|Q\(10) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & 
-- (\U3|reg_2|Q\(10))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(10)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_2|ALT_INV_Q\(10),
	datab => \U3|reg_1|ALT_INV_Q\(10),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_0|ALT_INV_Q\(10),
	datae => \U3|reg_3|ALT_INV_Q\(10),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux37~0_combout\);

-- Location: LABCELL_X29_Y4_N18
\U3|Mux37~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux37~4_combout\ = ( \U3|Mux37~2_combout\ & ( \U3|Mux37~0_combout\ & ( (!\U3|Selector2~2_combout\) # ((\U3|Mux37~1_combout\) # (\U3|Selector1~0_combout\)) ) ) ) # ( !\U3|Mux37~2_combout\ & ( \U3|Mux37~0_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- ((!\U3|Selector2~2_combout\) # ((\U3|Mux37~1_combout\)))) # (\U3|Selector1~0_combout\ & (((\U3|Mux37~3_combout\)))) ) ) ) # ( \U3|Mux37~2_combout\ & ( !\U3|Mux37~0_combout\ & ( ((\U3|Selector2~2_combout\ & \U3|Mux37~1_combout\)) # 
-- (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux37~2_combout\ & ( !\U3|Mux37~0_combout\ & ( (!\U3|Selector1~0_combout\ & (\U3|Selector2~2_combout\ & ((\U3|Mux37~1_combout\)))) # (\U3|Selector1~0_combout\ & (((\U3|Mux37~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101000111001100110111011110001011110011111011101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|ALT_INV_Mux37~3_combout\,
	datad => \U3|ALT_INV_Mux37~1_combout\,
	datae => \U3|ALT_INV_Mux37~2_combout\,
	dataf => \U3|ALT_INV_Mux37~0_combout\,
	combout => \U3|Mux37~4_combout\);

-- Location: MLABCELL_X25_Y5_N33
\U3|reg_DOUT|Q[10]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[10]~feeder_combout\ = ( \U3|Mux37~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux37~4_combout\,
	combout => \U3|reg_DOUT|Q[10]~feeder_combout\);

-- Location: FF_X25_Y5_N34
\U3|reg_DOUT|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[10]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(10));

-- Location: FF_X29_Y6_N43
\U3|reg_A|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux36~4_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(11));

-- Location: MLABCELL_X28_Y6_N36
\U3|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~57_sumout\ = SUM(( !\U3|Mux36~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(11) ) + ( \U3|Add0~62\ ))
-- \U3|Add0~58\ = CARRY(( !\U3|Mux36~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(11) ) + ( \U3|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux19~0_combout\,
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|reg_A|ALT_INV_Q\(11),
	datad => \U3|ALT_INV_Mux36~4_combout\,
	cin => \U3|Add0~62\,
	sumout => \U3|Add0~57_sumout\,
	cout => \U3|Add0~58\);

-- Location: FF_X28_Y6_N37
\U3|reg_G|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~57_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(11));

-- Location: LABCELL_X29_Y6_N12
\U3|Mux36~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux36~3_combout\ = ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_IR|Q\(3))) # (\U3|Selector3~0_combout\ & ((\U3|reg_G|Q\(11)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100001111000000000000000000110011000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|reg_IR|ALT_INV_Q\(3),
	datac => \U3|reg_G|ALT_INV_Q\(11),
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux36~3_combout\);

-- Location: MLABCELL_X28_Y7_N54
\U3|reg_4|Q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_4|Q[11]~feeder_combout\ = ( \U3|Mux36~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux36~4_combout\,
	combout => \U3|reg_4|Q[11]~feeder_combout\);

-- Location: FF_X28_Y7_N56
\U3|reg_4|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_4|Q[11]~feeder_combout\,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(11));

-- Location: MLABCELL_X28_Y4_N33
\U3|Upc|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~53_sumout\ = SUM(( \U3|Upc|Count\(11) ) + ( GND ) + ( \U3|Upc|Add0~58\ ))
-- \U3|Upc|Add0~54\ = CARRY(( \U3|Upc|Count\(11) ) + ( GND ) + ( \U3|Upc|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(11),
	cin => \U3|Upc|Add0~58\,
	sumout => \U3|Upc|Add0~53_sumout\,
	cout => \U3|Upc|Add0~54\);

-- Location: FF_X28_Y4_N35
\U3|Upc|Count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~53_sumout\,
	asdata => \U3|Mux36~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(11));

-- Location: FF_X28_Y7_N44
\U3|reg_6|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux36~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(11));

-- Location: FF_X28_Y7_N8
\U3|reg_5|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux36~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(11));

-- Location: MLABCELL_X28_Y7_N42
\U3|Mux36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux36~1_combout\ = ( \U3|reg_6|Q\(11) & ( \U3|reg_5|Q\(11) & ( (!\U3|Selector3~0_combout\ & (((!\U3|Selector4~0_combout\) # (\U3|Upc|Count\(11))))) # (\U3|Selector3~0_combout\ & (((\U3|Selector4~0_combout\)) # (\U3|reg_4|Q\(11)))) ) ) ) # ( 
-- !\U3|reg_6|Q\(11) & ( \U3|reg_5|Q\(11) & ( (!\U3|Selector3~0_combout\ & (((\U3|Selector4~0_combout\ & \U3|Upc|Count\(11))))) # (\U3|Selector3~0_combout\ & (((\U3|Selector4~0_combout\)) # (\U3|reg_4|Q\(11)))) ) ) ) # ( \U3|reg_6|Q\(11) & ( 
-- !\U3|reg_5|Q\(11) & ( (!\U3|Selector3~0_combout\ & (((!\U3|Selector4~0_combout\) # (\U3|Upc|Count\(11))))) # (\U3|Selector3~0_combout\ & (\U3|reg_4|Q\(11) & (!\U3|Selector4~0_combout\))) ) ) ) # ( !\U3|reg_6|Q\(11) & ( !\U3|reg_5|Q\(11) & ( 
-- (!\U3|Selector3~0_combout\ & (((\U3|Selector4~0_combout\ & \U3|Upc|Count\(11))))) # (\U3|Selector3~0_combout\ & (\U3|reg_4|Q\(11) & (!\U3|Selector4~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000011100110100001101110000010011000111111101001111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_4|ALT_INV_Q\(11),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \U3|Upc|ALT_INV_Count\(11),
	datae => \U3|reg_6|ALT_INV_Q\(11),
	dataf => \U3|reg_5|ALT_INV_Q\(11),
	combout => \U3|Mux36~1_combout\);

-- Location: LABCELL_X27_Y5_N12
\U3|Mux36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux36~2_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(11) & ( (\U3|Selector4~0_combout\ & (!\U3|Selector3~0_combout\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \U3|Mux36~2_combout\);

-- Location: LABCELL_X30_Y4_N36
\U3|reg_2|Q[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[11]~feeder_combout\ = ( \U3|Mux36~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux36~4_combout\,
	combout => \U3|reg_2|Q[11]~feeder_combout\);

-- Location: FF_X30_Y4_N38
\U3|reg_2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[11]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(11));

-- Location: FF_X31_Y6_N31
\U3|reg_0|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux36~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(11));

-- Location: FF_X31_Y6_N14
\U3|reg_1|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux36~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(11));

-- Location: FF_X30_Y6_N32
\U3|reg_3|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux36~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(11));

-- Location: LABCELL_X30_Y6_N30
\U3|Mux36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux36~0_combout\ = ( \U3|reg_3|Q\(11) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_1|Q\(11)) ) ) ) # ( !\U3|reg_3|Q\(11) & ( \U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\ & \U3|reg_1|Q\(11)) ) ) ) # ( 
-- \U3|reg_3|Q\(11) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(11))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(11)))) ) ) ) # ( !\U3|reg_3|Q\(11) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & 
-- (\U3|reg_2|Q\(11))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011100000000001100111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_2|ALT_INV_Q\(11),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_0|ALT_INV_Q\(11),
	datad => \U3|reg_1|ALT_INV_Q\(11),
	datae => \U3|reg_3|ALT_INV_Q\(11),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux36~0_combout\);

-- Location: LABCELL_X29_Y6_N42
\U3|Mux36~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux36~4_combout\ = ( \U3|Mux36~2_combout\ & ( \U3|Mux36~0_combout\ & ( (!\U3|Selector2~2_combout\) # ((\U3|Mux36~1_combout\) # (\U3|Selector1~0_combout\)) ) ) ) # ( !\U3|Mux36~2_combout\ & ( \U3|Mux36~0_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- ((!\U3|Selector2~2_combout\) # ((\U3|Mux36~1_combout\)))) # (\U3|Selector1~0_combout\ & (((\U3|Mux36~3_combout\)))) ) ) ) # ( \U3|Mux36~2_combout\ & ( !\U3|Mux36~0_combout\ & ( ((\U3|Selector2~2_combout\ & \U3|Mux36~1_combout\)) # 
-- (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux36~2_combout\ & ( !\U3|Mux36~0_combout\ & ( (!\U3|Selector1~0_combout\ & (\U3|Selector2~2_combout\ & ((\U3|Mux36~1_combout\)))) # (\U3|Selector1~0_combout\ & (((\U3|Mux36~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011000011110101111110100011111100111010111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Mux36~3_combout\,
	datac => \U3|ALT_INV_Selector1~0_combout\,
	datad => \U3|ALT_INV_Mux36~1_combout\,
	datae => \U3|ALT_INV_Mux36~2_combout\,
	dataf => \U3|ALT_INV_Mux36~0_combout\,
	combout => \U3|Mux36~4_combout\);

-- Location: FF_X29_Y6_N16
\U3|reg_DOUT|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux36~4_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(11));

-- Location: FF_X25_Y5_N25
\U3|reg_DOUT|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux35~4_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(12));

-- Location: MLABCELL_X25_Y5_N18
\U3|reg_DOUT|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[13]~feeder_combout\ = ( \U3|Mux34~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux34~4_combout\,
	combout => \U3|reg_DOUT|Q[13]~feeder_combout\);

-- Location: FF_X25_Y5_N20
\U3|reg_DOUT|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[13]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(13));

-- Location: FF_X25_Y5_N17
\U3|reg_DOUT|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux33~4_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(14));

-- Location: MLABCELL_X25_Y5_N42
\U3|reg_DOUT|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[15]~feeder_combout\ = ( \U3|Mux32~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux32~4_combout\,
	combout => \U3|reg_DOUT|Q[15]~feeder_combout\);

-- Location: FF_X25_Y5_N43
\U3|reg_DOUT|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[15]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(15));

-- Location: M10K_X26_Y5_N0
\U4|altsyncram_component|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => "0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => "000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001E020A003080040383003610",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "inst_mem.mif",
	init_file_layout => "port_a",
	logical_ram_name => "inst_mem:U4|altsyncram:altsyncram_component|altsyncram_pf24:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 16,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_width => 8,
	port_b_data_width => 20,
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \W_mem~combout\,
	portare => VCC,
	clk0 => \CLOCK_50~inputCLKENA0_outclk\,
	portadatain => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \U4|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LABCELL_X24_Y5_N15
\U6|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|Q[1]~feeder_combout\ = ( \SW[1]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[1]~input_o\,
	combout => \U6|Q[1]~feeder_combout\);

-- Location: FF_X24_Y5_N17
\U6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U6|Q[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(1));

-- Location: MLABCELL_X28_Y5_N42
\DIN[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[1]~1_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(1) & ( \U6|Q\(1) ) ) # ( !\U4|altsyncram_component|auto_generated|q_a\(1) & ( \U6|Q\(1) & ( (((\U3|reg_ADDR|Q\(12)) # (\U3|reg_ADDR|Q[15]~DUPLICATE_q\)) # (\U3|reg_ADDR|Q\(14))) # 
-- (\U3|reg_ADDR|Q\(13)) ) ) ) # ( \U4|altsyncram_component|auto_generated|q_a\(1) & ( !\U6|Q\(1) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q\(14) & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & !\U3|reg_ADDR|Q\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datac => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datad => \U3|reg_ADDR|ALT_INV_Q\(12),
	datae => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(1),
	dataf => \U6|ALT_INV_Q\(1),
	combout => \DIN[1]~1_combout\);

-- Location: FF_X28_Y5_N44
\U3|reg_IR|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[1]~1_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(1));

-- Location: LABCELL_X29_Y5_N27
\U3|Mux38~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux38~2_combout\ = ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & \U3|reg_IR|Q\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \U3|reg_IR|ALT_INV_Q\(1),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux38~2_combout\);

-- Location: FF_X28_Y6_N31
\U3|reg_G|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~65_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(9));

-- Location: LABCELL_X29_Y7_N42
\U3|Mux38~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux38~3_combout\ = ( \U3|Selector4~0_combout\ & ( \U4|altsyncram_component|auto_generated|q_a\(9) & ( (\Equal0~0_combout\ & !\U3|Selector3~0_combout\) ) ) ) # ( !\U3|Selector4~0_combout\ & ( \U4|altsyncram_component|auto_generated|q_a\(9) & ( 
-- (\U3|reg_G|Q\(9) & \U3|Selector3~0_combout\) ) ) ) # ( !\U3|Selector4~0_combout\ & ( !\U4|altsyncram_component|auto_generated|q_a\(9) & ( (\U3|reg_G|Q\(9) & \U3|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000000000000000000001100110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|reg_G|ALT_INV_Q\(9),
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	combout => \U3|Mux38~3_combout\);

-- Location: FF_X28_Y5_N20
\U3|reg_3|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux38~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(9));

-- Location: LABCELL_X31_Y5_N21
\U3|reg_0|Q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[9]~feeder_combout\ = ( \U3|Mux38~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux38~4_combout\,
	combout => \U3|reg_0|Q[9]~feeder_combout\);

-- Location: FF_X31_Y5_N22
\U3|reg_0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[9]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(9));

-- Location: LABCELL_X30_Y4_N18
\U3|reg_2|Q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[9]~feeder_combout\ = ( \U3|Mux38~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux38~4_combout\,
	combout => \U3|reg_2|Q[9]~feeder_combout\);

-- Location: FF_X30_Y4_N19
\U3|reg_2|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[9]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(9));

-- Location: FF_X29_Y5_N23
\U3|reg_1|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux38~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(9));

-- Location: MLABCELL_X28_Y5_N27
\U3|Mux38~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux38~0_combout\ = ( \U3|reg_1|Q\(9) & ( \U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\) # (\U3|reg_3|Q\(9)) ) ) ) # ( !\U3|reg_1|Q\(9) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_3|Q\(9) & !\U3|Selector3~0_combout\) ) ) ) # ( \U3|reg_1|Q\(9) & 
-- ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|reg_2|Q\(9)))) # (\U3|Selector3~0_combout\ & (\U3|reg_0|Q\(9))) ) ) ) # ( !\U3|reg_1|Q\(9) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|reg_2|Q\(9)))) # 
-- (\U3|Selector3~0_combout\ & (\U3|reg_0|Q\(9))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011000000111111001101010000010100000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_3|ALT_INV_Q\(9),
	datab => \U3|reg_0|ALT_INV_Q\(9),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_2|ALT_INV_Q\(9),
	datae => \U3|reg_1|ALT_INV_Q\(9),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux38~0_combout\);

-- Location: LABCELL_X30_Y7_N51
\U3|reg_4|Q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_4|Q[9]~feeder_combout\ = ( \U3|Mux38~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux38~4_combout\,
	combout => \U3|reg_4|Q[9]~feeder_combout\);

-- Location: FF_X30_Y7_N52
\U3|reg_4|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_4|Q[9]~feeder_combout\,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(9));

-- Location: FF_X29_Y7_N43
\U3|reg_5|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux38~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(9));

-- Location: FF_X29_Y7_N50
\U3|reg_6|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux38~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(9));

-- Location: LABCELL_X29_Y7_N48
\U3|Mux38~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux38~1_combout\ = ( \U3|reg_6|Q\(9) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(9))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(9)))) ) ) ) # ( !\U3|reg_6|Q\(9) & ( \U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(9))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(9)))) ) ) ) # ( \U3|reg_6|Q\(9) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_4|Q\(9)) ) ) ) # ( !\U3|reg_6|Q\(9) & ( 
-- !\U3|Selector4~0_combout\ & ( (\U3|reg_4|Q\(9) & \U3|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111100111111001101010000010111110101000001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(9),
	datab => \U3|reg_4|ALT_INV_Q\(9),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_5|ALT_INV_Q\(9),
	datae => \U3|reg_6|ALT_INV_Q\(9),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux38~1_combout\);

-- Location: LABCELL_X29_Y7_N6
\U3|Mux38~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux38~4_combout\ = ( \U3|Mux38~0_combout\ & ( \U3|Mux38~1_combout\ & ( ((!\U3|Selector1~0_combout\) # (\U3|Mux38~3_combout\)) # (\U3|Mux38~2_combout\) ) ) ) # ( !\U3|Mux38~0_combout\ & ( \U3|Mux38~1_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- (((\U3|Selector2~2_combout\)))) # (\U3|Selector1~0_combout\ & (((\U3|Mux38~3_combout\)) # (\U3|Mux38~2_combout\))) ) ) ) # ( \U3|Mux38~0_combout\ & ( !\U3|Mux38~1_combout\ & ( (!\U3|Selector1~0_combout\ & (((!\U3|Selector2~2_combout\)))) # 
-- (\U3|Selector1~0_combout\ & (((\U3|Mux38~3_combout\)) # (\U3|Mux38~2_combout\))) ) ) ) # ( !\U3|Mux38~0_combout\ & ( !\U3|Mux38~1_combout\ & ( (\U3|Selector1~0_combout\ & ((\U3|Mux38~3_combout\) # (\U3|Mux38~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110011110100011111001100011101001111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux38~2_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|ALT_INV_Selector2~2_combout\,
	datad => \U3|ALT_INV_Mux38~3_combout\,
	datae => \U3|ALT_INV_Mux38~0_combout\,
	dataf => \U3|ALT_INV_Mux38~1_combout\,
	combout => \U3|Mux38~4_combout\);

-- Location: MLABCELL_X25_Y5_N51
\U3|reg_DOUT|Q[9]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[9]~feeder_combout\ = ( \U3|Mux38~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux38~4_combout\,
	combout => \U3|reg_DOUT|Q[9]~feeder_combout\);

-- Location: FF_X25_Y5_N52
\U3|reg_DOUT|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[9]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(9));

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X24_Y3_N39
\U6|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|Q[0]~feeder_combout\ = ( \SW[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[0]~input_o\,
	combout => \U6|Q[0]~feeder_combout\);

-- Location: FF_X24_Y3_N40
\U6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U6|Q[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(0));

-- Location: LABCELL_X27_Y5_N36
\DIN[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[0]~0_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(0) & ( \U6|Q\(0) ) ) # ( !\U4|altsyncram_component|auto_generated|q_a\(0) & ( \U6|Q\(0) & ( (((\U3|reg_ADDR|Q[15]~DUPLICATE_q\) # (\U3|reg_ADDR|Q\(14))) # 
-- (\U3|reg_ADDR|Q[12]~DUPLICATE_q\)) # (\U3|reg_ADDR|Q\(13)) ) ) ) # ( \U4|altsyncram_component|auto_generated|q_a\(0) & ( !\U6|Q\(0) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & (!\U3|reg_ADDR|Q\(14) & !\U3|reg_ADDR|Q[15]~DUPLICATE_q\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datac => \U3|reg_ADDR|ALT_INV_Q\(14),
	datad => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datae => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(0),
	dataf => \U6|ALT_INV_Q\(0),
	combout => \DIN[0]~0_combout\);

-- Location: FF_X27_Y5_N53
\U3|reg_IR|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DIN[0]~0_combout\,
	sload => VCC,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(0));

-- Location: FF_X28_Y6_N29
\U3|reg_G|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~49_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(8));

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: MLABCELL_X8_Y1_N36
\U6|Q[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|Q[8]~feeder_combout\ = ( \SW[8]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[8]~input_o\,
	combout => \U6|Q[8]~feeder_combout\);

-- Location: FF_X8_Y1_N37
\U6|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U6|Q[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(8));

-- Location: LABCELL_X27_Y5_N6
\DIN[8]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[8]~8_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(8) & ( \U6|Q\(8) ) ) # ( !\U4|altsyncram_component|auto_generated|q_a\(8) & ( \U6|Q\(8) & ( (((\U3|reg_ADDR|Q[12]~DUPLICATE_q\) # (\U3|reg_ADDR|Q\(13))) # 
-- (\U3|reg_ADDR|Q[15]~DUPLICATE_q\)) # (\U3|reg_ADDR|Q\(14)) ) ) ) # ( \U4|altsyncram_component|auto_generated|q_a\(8) & ( !\U6|Q\(8) & ( (!\U3|reg_ADDR|Q\(14) & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & (!\U3|reg_ADDR|Q\(13) & !\U3|reg_ADDR|Q[12]~DUPLICATE_q\))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(14),
	datab => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datac => \U3|reg_ADDR|ALT_INV_Q\(13),
	datad => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datae => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(8),
	dataf => \U6|ALT_INV_Q\(8),
	combout => \DIN[8]~8_combout\);

-- Location: FF_X27_Y5_N7
\U3|reg_IR|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[8]~8_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(8));

-- Location: LABCELL_X27_Y5_N24
\U3|Mux39~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux39~2_combout\ = ( \U3|reg_IR|Q\(8) & ( \DIN[8]~8_combout\ & ( ((!\U3|Selector3~0_combout\ & (\U3|reg_IR|Q\(0))) # (\U3|Selector3~0_combout\ & ((\U3|reg_G|Q\(8))))) # (\U3|Selector4~0_combout\) ) ) ) # ( !\U3|reg_IR|Q\(8) & ( \DIN[8]~8_combout\ & ( 
-- (!\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\ & (\U3|reg_IR|Q\(0))) # (\U3|Selector3~0_combout\ & ((\U3|reg_G|Q\(8)))))) # (\U3|Selector4~0_combout\ & (!\U3|Selector3~0_combout\)) ) ) ) # ( \U3|reg_IR|Q\(8) & ( !\DIN[8]~8_combout\ & ( 
-- (!\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\ & (\U3|reg_IR|Q\(0))) # (\U3|Selector3~0_combout\ & ((\U3|reg_G|Q\(8)))))) # (\U3|Selector4~0_combout\ & (\U3|Selector3~0_combout\)) ) ) ) # ( !\U3|reg_IR|Q\(8) & ( !\DIN[8]~8_combout\ & ( 
-- (!\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\ & (\U3|reg_IR|Q\(0))) # (\U3|Selector3~0_combout\ & ((\U3|reg_G|Q\(8)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000101010000110010011101101001100011011100101110101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_IR|ALT_INV_Q\(0),
	datad => \U3|reg_G|ALT_INV_Q\(8),
	datae => \U3|reg_IR|ALT_INV_Q\(8),
	dataf => \ALT_INV_DIN[8]~8_combout\,
	combout => \U3|Mux39~2_combout\);

-- Location: LABCELL_X27_Y5_N30
\U3|Mux39~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux39~3_combout\ = ( \U3|Mux39~2_combout\ & ( (!\U3|Selector2~2_combout\ & (((\U3|Mux39~0_combout\)) # (\U3|Selector1~0_combout\))) # (\U3|Selector2~2_combout\ & (!\U3|Selector1~0_combout\ & ((\U3|Mux39~1_combout\)))) ) ) # ( !\U3|Mux39~2_combout\ & ( 
-- (!\U3|Selector1~0_combout\ & ((!\U3|Selector2~2_combout\ & (\U3|Mux39~0_combout\)) # (\U3|Selector2~2_combout\ & ((\U3|Mux39~1_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100001001100000010000100110000101010011011100010101001101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|ALT_INV_Mux39~0_combout\,
	datad => \U3|ALT_INV_Mux39~1_combout\,
	dataf => \U3|ALT_INV_Mux39~2_combout\,
	combout => \U3|Mux39~3_combout\);

-- Location: FF_X27_Y7_N37
\U3|reg_DOUT|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux39~3_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(8));

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: LABCELL_X10_Y2_N12
\U6|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|Q[7]~feeder_combout\ = ( \SW[7]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[7]~input_o\,
	combout => \U6|Q[7]~feeder_combout\);

-- Location: FF_X10_Y2_N13
\U6|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U6|Q[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(7));

-- Location: LABCELL_X27_Y5_N39
\DIN[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[7]~7_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(7) & ( \U6|Q\(7) ) ) # ( !\U4|altsyncram_component|auto_generated|q_a\(7) & ( \U6|Q\(7) & ( (((\U3|reg_ADDR|Q\(14)) # (\U3|reg_ADDR|Q[15]~DUPLICATE_q\)) # 
-- (\U3|reg_ADDR|Q[12]~DUPLICATE_q\)) # (\U3|reg_ADDR|Q\(13)) ) ) ) # ( \U4|altsyncram_component|auto_generated|q_a\(7) & ( !\U6|Q\(7) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & !\U3|reg_ADDR|Q\(14)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datac => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datad => \U3|reg_ADDR|ALT_INV_Q\(14),
	datae => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(7),
	dataf => \U6|ALT_INV_Q\(7),
	combout => \DIN[7]~7_combout\);

-- Location: FF_X27_Y5_N41
\U3|reg_IR|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[7]~7_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(7));

-- Location: FF_X28_Y6_N26
\U3|reg_G|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~45_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(7));

-- Location: LABCELL_X27_Y5_N15
\U3|Mux40~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux40~2_combout\ = ( \DIN[7]~7_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|Selector3~0_combout\ & ((\U3|reg_G|Q\(7))))) # (\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\) # ((\U3|reg_IR|Q\(7))))) ) ) # ( !\DIN[7]~7_combout\ & ( 
-- (\U3|Selector3~0_combout\ & ((!\U3|Selector4~0_combout\ & ((\U3|reg_G|Q\(7)))) # (\U3|Selector4~0_combout\ & (\U3|reg_IR|Q\(7))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001101000101011001110100010101100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_IR|ALT_INV_Q\(7),
	datad => \U3|reg_G|ALT_INV_Q\(7),
	dataf => \ALT_INV_DIN[7]~7_combout\,
	combout => \U3|Mux40~2_combout\);

-- Location: LABCELL_X27_Y5_N18
\U3|Mux40~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux40~3_combout\ = ( \U3|Mux40~0_combout\ & ( \U3|Mux40~2_combout\ & ( ((\U3|Mux40~1_combout\) # (\U3|Selector1~0_combout\)) # (\U3|Selector2~2_combout\) ) ) ) # ( !\U3|Mux40~0_combout\ & ( \U3|Mux40~2_combout\ & ( ((!\U3|Selector2~2_combout\ & 
-- \U3|Mux40~1_combout\)) # (\U3|Selector1~0_combout\) ) ) ) # ( \U3|Mux40~0_combout\ & ( !\U3|Mux40~2_combout\ & ( (!\U3|Selector1~0_combout\ & ((\U3|Mux40~1_combout\) # (\U3|Selector2~2_combout\))) ) ) ) # ( !\U3|Mux40~0_combout\ & ( !\U3|Mux40~2_combout\ 
-- & ( (!\U3|Selector2~2_combout\ & (!\U3|Selector1~0_combout\ & \U3|Mux40~1_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000010011000100110000111011001110110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|ALT_INV_Mux40~1_combout\,
	datae => \U3|ALT_INV_Mux40~0_combout\,
	dataf => \U3|ALT_INV_Mux40~2_combout\,
	combout => \U3|Mux40~3_combout\);

-- Location: MLABCELL_X25_Y5_N6
\U3|reg_ADDR|Q[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[7]~feeder_combout\ = ( \U3|Mux40~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux40~3_combout\,
	combout => \U3|reg_ADDR|Q[7]~feeder_combout\);

-- Location: FF_X25_Y5_N7
\U3|reg_ADDR|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[7]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(7));

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X22_Y3_N21
\U6|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U6|Q[6]~feeder_combout\ = ( \SW[6]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_SW[6]~input_o\,
	combout => \U6|Q[6]~feeder_combout\);

-- Location: FF_X22_Y3_N22
\U6|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U6|Q[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(6));

-- Location: LABCELL_X27_Y5_N9
\DIN[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[6]~6_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(6) & ( \U6|Q\(6) ) ) # ( !\U4|altsyncram_component|auto_generated|q_a\(6) & ( \U6|Q\(6) & ( (((\U3|reg_ADDR|Q\(13)) # (\U3|reg_ADDR|Q[12]~DUPLICATE_q\)) # 
-- (\U3|reg_ADDR|Q[15]~DUPLICATE_q\)) # (\U3|reg_ADDR|Q\(14)) ) ) ) # ( \U4|altsyncram_component|auto_generated|q_a\(6) & ( !\U6|Q\(6) & ( (!\U3|reg_ADDR|Q\(14) & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & (!\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & !\U3|reg_ADDR|Q\(13)))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(14),
	datab => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datac => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datad => \U3|reg_ADDR|ALT_INV_Q\(13),
	datae => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(6),
	dataf => \U6|ALT_INV_Q\(6),
	combout => \DIN[6]~6_combout\);

-- Location: FF_X27_Y5_N11
\U3|reg_IR|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[6]~6_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(6));

-- Location: LABCELL_X27_Y5_N42
\U3|Mux41~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux41~2_combout\ = ( \U3|reg_IR|Q\(6) & ( \DIN[6]~6_combout\ & ( ((\U3|reg_G|Q\(6) & \U3|Selector3~0_combout\)) # (\U3|Selector4~0_combout\) ) ) ) # ( !\U3|reg_IR|Q\(6) & ( \DIN[6]~6_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|reg_G|Q\(6) & 
-- \U3|Selector3~0_combout\)) # (\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\))) ) ) ) # ( \U3|reg_IR|Q\(6) & ( !\DIN[6]~6_combout\ & ( (\U3|Selector3~0_combout\ & ((\U3|reg_G|Q\(6)) # (\U3|Selector4~0_combout\))) ) ) ) # ( !\U3|reg_IR|Q\(6) & ( 
-- !\DIN[6]~6_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|reg_G|Q\(6) & \U3|Selector3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100010000000000111011101010101001000100101010101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|reg_G|ALT_INV_Q\(6),
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \U3|reg_IR|ALT_INV_Q\(6),
	dataf => \ALT_INV_DIN[6]~6_combout\,
	combout => \U3|Mux41~2_combout\);

-- Location: LABCELL_X27_Y5_N33
\U3|Mux41~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux41~3_combout\ = ( \U3|Mux41~2_combout\ & ( ((!\U3|Selector2~2_combout\ & ((\U3|Mux41~1_combout\))) # (\U3|Selector2~2_combout\ & (\U3|Mux41~0_combout\))) # (\U3|Selector1~0_combout\) ) ) # ( !\U3|Mux41~2_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- ((!\U3|Selector2~2_combout\ & ((\U3|Mux41~1_combout\))) # (\U3|Selector2~2_combout\ & (\U3|Mux41~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000110111101111110011011110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|ALT_INV_Mux41~0_combout\,
	datad => \U3|ALT_INV_Mux41~1_combout\,
	dataf => \U3|ALT_INV_Mux41~2_combout\,
	combout => \U3|Mux41~3_combout\);

-- Location: MLABCELL_X25_Y5_N39
\U3|reg_ADDR|Q[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[6]~feeder_combout\ = ( \U3|Mux41~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux41~3_combout\,
	combout => \U3|reg_ADDR|Q[6]~feeder_combout\);

-- Location: FF_X25_Y5_N41
\U3|reg_ADDR|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[6]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(6));

-- Location: MLABCELL_X25_Y6_N3
\DIN[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[5]~5_combout\ = ( \U3|reg_ADDR|Q\(14) & ( \U4|altsyncram_component|auto_generated|q_a\(5) & ( \U6|Q\(5) ) ) ) # ( !\U3|reg_ADDR|Q\(14) & ( \U4|altsyncram_component|auto_generated|q_a\(5) & ( ((!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & 
-- (!\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & !\U3|reg_ADDR|Q\(13)))) # (\U6|Q\(5)) ) ) ) # ( \U3|reg_ADDR|Q\(14) & ( !\U4|altsyncram_component|auto_generated|q_a\(5) & ( \U6|Q\(5) ) ) ) # ( !\U3|reg_ADDR|Q\(14) & ( !\U4|altsyncram_component|auto_generated|q_a\(5) 
-- & ( (\U6|Q\(5) & (((\U3|reg_ADDR|Q\(13)) # (\U3|reg_ADDR|Q[12]~DUPLICATE_q\)) # (\U3|reg_ADDR|Q[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101010101010101010111010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U6|ALT_INV_Q\(5),
	datab => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datac => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datad => \U3|reg_ADDR|ALT_INV_Q\(13),
	datae => \U3|reg_ADDR|ALT_INV_Q\(14),
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(5),
	combout => \DIN[5]~5_combout\);

-- Location: FF_X25_Y6_N5
\U3|reg_IR|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[5]~5_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(5));

-- Location: LABCELL_X31_Y6_N9
\U3|reg_4|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_4|Q[5]~feeder_combout\ = ( \U3|Mux42~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux42~1_combout\,
	combout => \U3|reg_4|Q[5]~feeder_combout\);

-- Location: FF_X31_Y6_N10
\U3|reg_4|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_4|Q[5]~feeder_combout\,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(5));

-- Location: LABCELL_X31_Y6_N39
\U3|reg_0|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[5]~feeder_combout\ = ( \U3|Mux42~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux42~1_combout\,
	combout => \U3|reg_0|Q[5]~feeder_combout\);

-- Location: FF_X31_Y6_N40
\U3|reg_0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[5]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(5));

-- Location: FF_X30_Y6_N49
\U3|reg_3|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux42~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(5));

-- Location: LABCELL_X30_Y4_N39
\U3|reg_2|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[5]~feeder_combout\ = ( \U3|Mux42~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux42~1_combout\,
	combout => \U3|reg_2|Q[5]~feeder_combout\);

-- Location: FF_X30_Y4_N40
\U3|reg_2|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[5]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(5));

-- Location: FF_X27_Y6_N26
\U3|reg_1|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux42~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(5));

-- Location: LABCELL_X27_Y6_N24
\U3|Mux42~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux42~0_combout\ = ( \U3|reg_1|Q\(5) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_3|Q\(5)) # (\U3|Selector3~0_combout\) ) ) ) # ( !\U3|reg_1|Q\(5) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & \U3|reg_3|Q\(5)) ) ) ) # ( \U3|reg_1|Q\(5) & 
-- ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|reg_2|Q\(5)))) # (\U3|Selector3~0_combout\ & (\U3|reg_0|Q\(5))) ) ) ) # ( !\U3|reg_1|Q\(5) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|reg_2|Q\(5)))) # 
-- (\U3|Selector3~0_combout\ & (\U3|reg_0|Q\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000111011101000100011101110100001100000011000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_0|ALT_INV_Q\(5),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_3|ALT_INV_Q\(5),
	datad => \U3|reg_2|ALT_INV_Q\(5),
	datae => \U3|reg_1|ALT_INV_Q\(5),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux42~0_combout\);

-- Location: FF_X27_Y6_N32
\U3|reg_6|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux42~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(5));

-- Location: LABCELL_X27_Y6_N30
\U3|Mux42~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux42~3_combout\ = ( \U3|reg_6|Q\(5) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector2~2_combout\ & !\U3|Mux42~0_combout\) ) ) ) # ( !\U3|reg_6|Q\(5) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector2~2_combout\ & !\U3|Mux42~0_combout\) ) ) ) # ( 
-- \U3|reg_6|Q\(5) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector2~2_combout\ & (((!\U3|Mux42~0_combout\)))) # (\U3|Selector2~2_combout\ & (!\U3|reg_4|Q\(5) & ((\U3|Selector3~0_combout\)))) ) ) ) # ( !\U3|reg_6|Q\(5) & ( !\U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector2~2_combout\ & (((!\U3|Mux42~0_combout\)))) # (\U3|Selector2~2_combout\ & ((!\U3|reg_4|Q\(5)) # ((!\U3|Selector3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111100010110000001110001011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_4|ALT_INV_Q\(5),
	datab => \U3|ALT_INV_Selector2~2_combout\,
	datac => \U3|ALT_INV_Mux42~0_combout\,
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \U3|reg_6|ALT_INV_Q\(5),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux42~3_combout\);

-- Location: FF_X28_Y6_N19
\U3|reg_G|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~37_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(5));

-- Location: FF_X28_Y7_N38
\U3|reg_5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux42~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(5));

-- Location: MLABCELL_X28_Y7_N36
\U3|Mux42~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux42~2_combout\ = ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (!\U3|Upc|Count\(5) & (!\U3|Selector1~0_combout\))) # (\U3|Selector3~0_combout\ & (((!\U3|reg_5|Q\(5)) # (\U3|Selector1~0_combout\)))) ) ) # ( !\U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector3~0_combout\ & \U3|Selector1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110010110011100000111011001110000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(5),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|ALT_INV_Selector1~0_combout\,
	datad => \U3|reg_5|ALT_INV_Q\(5),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux42~2_combout\);

-- Location: MLABCELL_X28_Y7_N9
\U3|Mux42~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux42~4_combout\ = ( \U3|Mux42~2_combout\ & ( \U3|Selector4~0_combout\ & ( (\U3|Selector1~0_combout\) # (\U3|Selector2~2_combout\) ) ) ) # ( \U3|Mux42~2_combout\ & ( !\U3|Selector4~0_combout\ & ( (\U3|Selector1~0_combout\) # (\U3|Selector2~2_combout\) 
-- ) ) ) # ( !\U3|Mux42~2_combout\ & ( !\U3|Selector4~0_combout\ & ( (!\U3|reg_G|Q\(5) & \U3|Selector1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000011111111111100000000000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|reg_G|ALT_INV_Q\(5),
	datac => \U3|ALT_INV_Selector2~2_combout\,
	datad => \U3|ALT_INV_Selector1~0_combout\,
	datae => \U3|ALT_INV_Mux42~2_combout\,
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux42~4_combout\);

-- Location: LABCELL_X27_Y6_N6
\U3|Mux42~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux42~1_combout\ = ( \U3|Mux42~4_combout\ & ( \DIN[5]~5_combout\ & ( (\U3|Selector4~0_combout\ & (\U3|Selector1~0_combout\ & \U3|reg_IR|Q\(5))) ) ) ) # ( !\U3|Mux42~4_combout\ & ( \DIN[5]~5_combout\ & ( (!\U3|Mux42~3_combout\) # 
-- (\U3|Selector1~0_combout\) ) ) ) # ( \U3|Mux42~4_combout\ & ( !\DIN[5]~5_combout\ & ( (\U3|Selector4~0_combout\ & (\U3|Selector1~0_combout\ & \U3|reg_IR|Q\(5))) ) ) ) # ( !\U3|Mux42~4_combout\ & ( !\DIN[5]~5_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- ((!\U3|Mux42~3_combout\))) # (\U3|Selector1~0_combout\ & (!\U3|Selector4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111000100010000000010000000111111111001100110000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|reg_IR|ALT_INV_Q\(5),
	datad => \U3|ALT_INV_Mux42~3_combout\,
	datae => \U3|ALT_INV_Mux42~4_combout\,
	dataf => \ALT_INV_DIN[5]~5_combout\,
	combout => \U3|Mux42~1_combout\);

-- Location: LABCELL_X27_Y7_N51
\U3|reg_ADDR|Q[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[5]~feeder_combout\ = ( \U3|Mux42~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux42~1_combout\,
	combout => \U3|reg_ADDR|Q[5]~feeder_combout\);

-- Location: FF_X27_Y7_N52
\U3|reg_ADDR|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[5]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(5));

-- Location: LABCELL_X29_Y6_N9
\DIN[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[4]~4_combout\ = ( \U3|reg_ADDR|Q[12]~DUPLICATE_q\ & ( \U4|altsyncram_component|auto_generated|q_a\(4) & ( \U6|Q\(4) ) ) ) # ( !\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & ( \U4|altsyncram_component|auto_generated|q_a\(4) & ( ((!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ 
-- & (!\U3|reg_ADDR|Q\(14) & !\U3|reg_ADDR|Q\(13)))) # (\U6|Q\(4)) ) ) ) # ( \U3|reg_ADDR|Q[12]~DUPLICATE_q\ & ( !\U4|altsyncram_component|auto_generated|q_a\(4) & ( \U6|Q\(4) ) ) ) # ( !\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & ( 
-- !\U4|altsyncram_component|auto_generated|q_a\(4) & ( (\U6|Q\(4) & (((\U3|reg_ADDR|Q\(13)) # (\U3|reg_ADDR|Q\(14))) # (\U3|reg_ADDR|Q[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001110110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datab => \U6|ALT_INV_Q\(4),
	datac => \U3|reg_ADDR|ALT_INV_Q\(14),
	datad => \U3|reg_ADDR|ALT_INV_Q\(13),
	datae => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(4),
	combout => \DIN[4]~4_combout\);

-- Location: FF_X30_Y5_N28
\U3|reg_4|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux43~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(4));

-- Location: FF_X30_Y5_N8
\U3|reg_6|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux43~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(4));

-- Location: FF_X28_Y5_N8
\U3|reg_3|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux43~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(4));

-- Location: LABCELL_X31_Y5_N6
\U3|reg_2|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[4]~feeder_combout\ = ( \U3|Mux43~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux43~1_combout\,
	combout => \U3|reg_2|Q[4]~feeder_combout\);

-- Location: FF_X31_Y5_N8
\U3|reg_2|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[4]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(4));

-- Location: LABCELL_X31_Y5_N42
\U3|reg_0|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[4]~feeder_combout\ = ( \U3|Mux43~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux43~1_combout\,
	combout => \U3|reg_0|Q[4]~feeder_combout\);

-- Location: FF_X31_Y5_N44
\U3|reg_0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[4]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(4));

-- Location: FF_X30_Y5_N32
\U3|reg_1|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux43~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(4));

-- Location: LABCELL_X30_Y5_N30
\U3|Mux43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux43~0_combout\ = ( \U3|reg_1|Q\(4) & ( \U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\) # (\U3|reg_3|Q\(4)) ) ) ) # ( !\U3|reg_1|Q\(4) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_3|Q\(4) & !\U3|Selector3~0_combout\) ) ) ) # ( \U3|reg_1|Q\(4) & 
-- ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(4))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(4)))) ) ) ) # ( !\U3|reg_1|Q\(4) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(4))) # 
-- (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_3|ALT_INV_Q\(4),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_2|ALT_INV_Q\(4),
	datad => \U3|reg_0|ALT_INV_Q\(4),
	datae => \U3|reg_1|ALT_INV_Q\(4),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux43~0_combout\);

-- Location: LABCELL_X30_Y5_N6
\U3|Mux43~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux43~3_combout\ = ( \U3|reg_6|Q\(4) & ( \U3|Mux43~0_combout\ & ( (\U3|Selector2~2_combout\ & (!\U3|reg_4|Q\(4) & (\U3|Selector3~0_combout\ & !\U3|Selector4~0_combout\))) ) ) ) # ( !\U3|reg_6|Q\(4) & ( \U3|Mux43~0_combout\ & ( 
-- (\U3|Selector2~2_combout\ & (!\U3|Selector4~0_combout\ & ((!\U3|reg_4|Q\(4)) # (!\U3|Selector3~0_combout\)))) ) ) ) # ( \U3|reg_6|Q\(4) & ( !\U3|Mux43~0_combout\ & ( (!\U3|Selector2~2_combout\) # ((!\U3|reg_4|Q\(4) & (\U3|Selector3~0_combout\ & 
-- !\U3|Selector4~0_combout\))) ) ) ) # ( !\U3|reg_6|Q\(4) & ( !\U3|Mux43~0_combout\ & ( (!\U3|Selector2~2_combout\) # ((!\U3|Selector4~0_combout\ & ((!\U3|reg_4|Q\(4)) # (!\U3|Selector3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111010101010101011101010101001010100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|reg_4|ALT_INV_Q\(4),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|ALT_INV_Selector4~0_combout\,
	datae => \U3|reg_6|ALT_INV_Q\(4),
	dataf => \U3|ALT_INV_Mux43~0_combout\,
	combout => \U3|Mux43~3_combout\);

-- Location: FF_X29_Y6_N11
\U3|reg_IR|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[4]~4_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(4));

-- Location: LABCELL_X29_Y6_N48
\U3|Mux43~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux43~1_combout\ = ( \U3|Mux43~3_combout\ & ( \U3|reg_IR|Q\(4) & ( (\U3|Selector1~0_combout\ & ((!\U3|Mux43~4_combout\ & ((!\U3|Selector4~0_combout\) # (\DIN[4]~4_combout\))) # (\U3|Mux43~4_combout\ & (\U3|Selector4~0_combout\)))) ) ) ) # ( 
-- !\U3|Mux43~3_combout\ & ( \U3|reg_IR|Q\(4) & ( (!\U3|Selector1~0_combout\ & (!\U3|Mux43~4_combout\)) # (\U3|Selector1~0_combout\ & ((!\U3|Mux43~4_combout\ & ((!\U3|Selector4~0_combout\) # (\DIN[4]~4_combout\))) # (\U3|Mux43~4_combout\ & 
-- (\U3|Selector4~0_combout\)))) ) ) ) # ( \U3|Mux43~3_combout\ & ( !\U3|reg_IR|Q\(4) & ( (\U3|Selector1~0_combout\ & (!\U3|Mux43~4_combout\ & ((!\U3|Selector4~0_combout\) # (\DIN[4]~4_combout\)))) ) ) ) # ( !\U3|Mux43~3_combout\ & ( !\U3|reg_IR|Q\(4) & ( 
-- (!\U3|Mux43~4_combout\ & ((!\U3|Selector1~0_combout\) # ((!\U3|Selector4~0_combout\) # (\DIN[4]~4_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100100011001100010000000100010011001001110011010100000101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector1~0_combout\,
	datab => \U3|ALT_INV_Mux43~4_combout\,
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \ALT_INV_DIN[4]~4_combout\,
	datae => \U3|ALT_INV_Mux43~3_combout\,
	dataf => \U3|reg_IR|ALT_INV_Q\(4),
	combout => \U3|Mux43~1_combout\);

-- Location: MLABCELL_X25_Y5_N36
\U3|reg_ADDR|Q[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[4]~feeder_combout\ = ( \U3|Mux43~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux43~1_combout\,
	combout => \U3|reg_ADDR|Q[4]~feeder_combout\);

-- Location: FF_X25_Y5_N37
\U3|reg_ADDR|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[4]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(4));

-- Location: LABCELL_X29_Y6_N24
\DIN[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[3]~3_combout\ = ( \U3|reg_ADDR|Q\(13) & ( \U4|altsyncram_component|auto_generated|q_a\(3) & ( \U6|Q\(3) ) ) ) # ( !\U3|reg_ADDR|Q\(13) & ( \U4|altsyncram_component|auto_generated|q_a\(3) & ( ((!\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & (!\U3|reg_ADDR|Q\(14) 
-- & !\U3|reg_ADDR|Q[15]~DUPLICATE_q\))) # (\U6|Q\(3)) ) ) ) # ( \U3|reg_ADDR|Q\(13) & ( !\U4|altsyncram_component|auto_generated|q_a\(3) & ( \U6|Q\(3) ) ) ) # ( !\U3|reg_ADDR|Q\(13) & ( !\U4|altsyncram_component|auto_generated|q_a\(3) & ( (\U6|Q\(3) & 
-- (((\U3|reg_ADDR|Q[15]~DUPLICATE_q\) # (\U3|reg_ADDR|Q\(14))) # (\U3|reg_ADDR|Q[12]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001111111000000001111111110000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datac => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datad => \U6|ALT_INV_Q\(3),
	datae => \U3|reg_ADDR|ALT_INV_Q\(13),
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(3),
	combout => \DIN[3]~3_combout\);

-- Location: FF_X29_Y6_N26
\U3|reg_IR|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[3]~3_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(3));

-- Location: FF_X30_Y5_N5
\U3|reg_4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux44~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(3));

-- Location: FF_X30_Y5_N56
\U3|reg_6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux44~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(3));

-- Location: FF_X30_Y4_N52
\U3|reg_2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux44~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(3));

-- Location: FF_X28_Y5_N22
\U3|reg_3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux44~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(3));

-- Location: LABCELL_X31_Y5_N45
\U3|reg_0|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[3]~feeder_combout\ = ( \U3|Mux44~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux44~1_combout\,
	combout => \U3|reg_0|Q[3]~feeder_combout\);

-- Location: FF_X31_Y5_N47
\U3|reg_0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[3]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(3));

-- Location: FF_X30_Y5_N44
\U3|reg_1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux44~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(3));

-- Location: LABCELL_X30_Y5_N42
\U3|Mux44~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux44~0_combout\ = ( \U3|reg_1|Q\(3) & ( \U3|Selector3~0_combout\ & ( (\U3|Selector4~0_combout\) # (\U3|reg_0|Q\(3)) ) ) ) # ( !\U3|reg_1|Q\(3) & ( \U3|Selector3~0_combout\ & ( (\U3|reg_0|Q\(3) & !\U3|Selector4~0_combout\) ) ) ) # ( \U3|reg_1|Q\(3) & 
-- ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|reg_2|Q\(3))) # (\U3|Selector4~0_combout\ & ((\U3|reg_3|Q\(3)))) ) ) ) # ( !\U3|reg_1|Q\(3) & ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|reg_2|Q\(3))) # 
-- (\U3|Selector4~0_combout\ & ((\U3|reg_3|Q\(3)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_2|ALT_INV_Q\(3),
	datab => \U3|reg_3|ALT_INV_Q\(3),
	datac => \U3|reg_0|ALT_INV_Q\(3),
	datad => \U3|ALT_INV_Selector4~0_combout\,
	datae => \U3|reg_1|ALT_INV_Q\(3),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux44~0_combout\);

-- Location: LABCELL_X30_Y5_N54
\U3|Mux44~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux44~3_combout\ = ( \U3|reg_6|Q\(3) & ( \U3|Mux44~0_combout\ & ( (\U3|Selector2~2_combout\ & (!\U3|Selector4~0_combout\ & (!\U3|reg_4|Q\(3) & \U3|Selector3~0_combout\))) ) ) ) # ( !\U3|reg_6|Q\(3) & ( \U3|Mux44~0_combout\ & ( 
-- (\U3|Selector2~2_combout\ & (!\U3|Selector4~0_combout\ & ((!\U3|reg_4|Q\(3)) # (!\U3|Selector3~0_combout\)))) ) ) ) # ( \U3|reg_6|Q\(3) & ( !\U3|Mux44~0_combout\ & ( (!\U3|Selector2~2_combout\) # ((!\U3|Selector4~0_combout\ & (!\U3|reg_4|Q\(3) & 
-- \U3|Selector3~0_combout\))) ) ) ) # ( !\U3|reg_6|Q\(3) & ( !\U3|Mux44~0_combout\ & ( (!\U3|Selector2~2_combout\) # ((!\U3|Selector4~0_combout\ & ((!\U3|reg_4|Q\(3)) # (!\U3|Selector3~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111011101010101010101110101001000100010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Selector4~0_combout\,
	datac => \U3|reg_4|ALT_INV_Q\(3),
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \U3|reg_6|ALT_INV_Q\(3),
	dataf => \U3|ALT_INV_Mux44~0_combout\,
	combout => \U3|Mux44~3_combout\);

-- Location: FF_X28_Y6_N13
\U3|reg_G|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~29_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(3));

-- Location: FF_X29_Y7_N5
\U3|reg_5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux44~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(3));

-- Location: LABCELL_X29_Y7_N24
\U3|Mux44~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux44~2_combout\ = ( \U3|Selector1~0_combout\ & ( !\U3|Selector3~0_combout\ $ (\U3|Selector4~0_combout\) ) ) # ( !\U3|Selector1~0_combout\ & ( (\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\ & (!\U3|Upc|Count\(3))) # (\U3|Selector3~0_combout\ 
-- & ((!\U3|reg_5|Q\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010111000000000001011100011001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(3),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_5|ALT_INV_Q\(3),
	datad => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U3|ALT_INV_Selector1~0_combout\,
	combout => \U3|Mux44~2_combout\);

-- Location: LABCELL_X29_Y7_N3
\U3|Mux44~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux44~4_combout\ = ( \U3|Selector4~0_combout\ & ( \U3|Mux44~2_combout\ & ( (\U3|Selector1~0_combout\) # (\U3|Selector2~2_combout\) ) ) ) # ( !\U3|Selector4~0_combout\ & ( \U3|Mux44~2_combout\ & ( (\U3|Selector1~0_combout\) # (\U3|Selector2~2_combout\) 
-- ) ) ) # ( !\U3|Selector4~0_combout\ & ( !\U3|Mux44~2_combout\ & ( (\U3|Selector1~0_combout\ & !\U3|reg_G|Q\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000000000000001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datac => \U3|ALT_INV_Selector1~0_combout\,
	datad => \U3|reg_G|ALT_INV_Q\(3),
	datae => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U3|ALT_INV_Mux44~2_combout\,
	combout => \U3|Mux44~4_combout\);

-- Location: LABCELL_X29_Y6_N30
\U3|Mux44~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux44~1_combout\ = ( \U3|Mux44~4_combout\ & ( \DIN[3]~3_combout\ & ( (\U3|Selector1~0_combout\ & (\U3|Selector4~0_combout\ & \U3|reg_IR|Q\(3))) ) ) ) # ( !\U3|Mux44~4_combout\ & ( \DIN[3]~3_combout\ & ( (!\U3|Mux44~3_combout\) # 
-- (\U3|Selector1~0_combout\) ) ) ) # ( \U3|Mux44~4_combout\ & ( !\DIN[3]~3_combout\ & ( (\U3|Selector1~0_combout\ & (\U3|Selector4~0_combout\ & \U3|reg_IR|Q\(3))) ) ) ) # ( !\U3|Mux44~4_combout\ & ( !\DIN[3]~3_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- ((!\U3|Mux44~3_combout\))) # (\U3|Selector1~0_combout\ & (!\U3|Selector4~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110111001000100000000010000000111111111010101010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector1~0_combout\,
	datab => \U3|ALT_INV_Selector4~0_combout\,
	datac => \U3|reg_IR|ALT_INV_Q\(3),
	datad => \U3|ALT_INV_Mux44~3_combout\,
	datae => \U3|ALT_INV_Mux44~4_combout\,
	dataf => \ALT_INV_DIN[3]~3_combout\,
	combout => \U3|Mux44~1_combout\);

-- Location: LABCELL_X31_Y5_N36
\U3|reg_ADDR|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[3]~feeder_combout\ = ( \U3|Mux44~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux44~1_combout\,
	combout => \U3|reg_ADDR|Q[3]~feeder_combout\);

-- Location: FF_X31_Y5_N37
\U3|reg_ADDR|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[3]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(3));

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X22_Y3_N49
\U6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \SW[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U6|Q\(2));

-- Location: MLABCELL_X28_Y5_N45
\DIN[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[2]~2_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(2) & ( \U6|Q\(2) ) ) # ( !\U4|altsyncram_component|auto_generated|q_a\(2) & ( \U6|Q\(2) & ( (((\U3|reg_ADDR|Q[15]~DUPLICATE_q\) # (\U3|reg_ADDR|Q\(12))) # (\U3|reg_ADDR|Q\(14))) # 
-- (\U3|reg_ADDR|Q\(13)) ) ) ) # ( \U4|altsyncram_component|auto_generated|q_a\(2) & ( !\U6|Q\(2) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q\(14) & (!\U3|reg_ADDR|Q\(12) & !\U3|reg_ADDR|Q[15]~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000001111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datac => \U3|reg_ADDR|ALT_INV_Q\(12),
	datad => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datae => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(2),
	dataf => \U6|ALT_INV_Q\(2),
	combout => \DIN[2]~2_combout\);

-- Location: FF_X28_Y5_N47
\U3|reg_IR|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[2]~2_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(2));

-- Location: LABCELL_X27_Y4_N24
\U3|reg_1|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_1|Q[2]~feeder_combout\ = ( \U3|Mux45~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux45~1_combout\,
	combout => \U3|reg_1|Q[2]~feeder_combout\);

-- Location: FF_X27_Y4_N25
\U3|reg_1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_1|Q[2]~feeder_combout\,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(2));

-- Location: LABCELL_X30_Y4_N48
\U3|reg_2|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[2]~feeder_combout\ = \U3|Mux45~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_Mux45~1_combout\,
	combout => \U3|reg_2|Q[2]~feeder_combout\);

-- Location: FF_X30_Y4_N50
\U3|reg_2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[2]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(2));

-- Location: FF_X30_Y4_N34
\U3|reg_0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux45~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(2));

-- Location: FF_X29_Y4_N50
\U3|reg_3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux45~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(2));

-- Location: LABCELL_X29_Y4_N48
\U3|Mux45~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux45~0_combout\ = ( \U3|reg_3|Q\(2) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_1|Q\(2)) ) ) ) # ( !\U3|reg_3|Q\(2) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_1|Q\(2) & \U3|Selector3~0_combout\) ) ) ) # ( \U3|reg_3|Q\(2) & 
-- ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(2))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(2)))) ) ) ) # ( !\U3|reg_3|Q\(2) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(2))) # 
-- (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_1|ALT_INV_Q\(2),
	datab => \U3|reg_2|ALT_INV_Q\(2),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_0|ALT_INV_Q\(2),
	datae => \U3|reg_3|ALT_INV_Q\(2),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux45~0_combout\);

-- Location: FF_X30_Y5_N58
\U3|reg_6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux45~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(2));

-- Location: FF_X30_Y5_N38
\U3|reg_4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux45~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(2));

-- Location: FF_X29_Y5_N44
\U3|reg_5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux45~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(2));

-- Location: LABCELL_X29_Y5_N42
\U3|Mux45~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux45~2_combout\ = ( \U3|reg_5|Q\(2) & ( \U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\) # (\U3|Upc|Count\(2)) ) ) ) # ( !\U3|reg_5|Q\(2) & ( \U3|Selector4~0_combout\ & ( (\U3|Upc|Count\(2) & !\U3|Selector3~0_combout\) ) ) ) # ( 
-- \U3|reg_5|Q\(2) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_6|Q\(2))) # (\U3|Selector3~0_combout\ & ((\U3|reg_4|Q\(2)))) ) ) ) # ( !\U3|reg_5|Q\(2) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & 
-- (\U3|reg_6|Q\(2))) # (\U3|Selector3~0_combout\ & ((\U3|reg_4|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001011111010100000101111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_6|ALT_INV_Q\(2),
	datab => \U3|Upc|ALT_INV_Count\(2),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_4|ALT_INV_Q\(2),
	datae => \U3|reg_5|ALT_INV_Q\(2),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux45~2_combout\);

-- Location: LABCELL_X29_Y4_N12
\U3|Mux45~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux45~3_combout\ = ( \U3|Selector4~0_combout\ & ( \U3|Mux45~2_combout\ & ( (!\U3|Selector1~0_combout\ & (((\U3|Mux45~0_combout\) # (\U3|Selector2~2_combout\)))) # (\U3|Selector1~0_combout\ & (!\U3|Selector3~0_combout\)) ) ) ) # ( 
-- !\U3|Selector4~0_combout\ & ( \U3|Mux45~2_combout\ & ( (!\U3|Selector1~0_combout\ & (((\U3|Mux45~0_combout\) # (\U3|Selector2~2_combout\)))) # (\U3|Selector1~0_combout\ & (\U3|Selector3~0_combout\)) ) ) ) # ( \U3|Selector4~0_combout\ & ( 
-- !\U3|Mux45~2_combout\ & ( (!\U3|Selector1~0_combout\ & (((!\U3|Selector2~2_combout\ & \U3|Mux45~0_combout\)))) # (\U3|Selector1~0_combout\ & (!\U3|Selector3~0_combout\)) ) ) ) # ( !\U3|Selector4~0_combout\ & ( !\U3|Mux45~2_combout\ & ( 
-- (!\U3|Selector1~0_combout\ & (((!\U3|Selector2~2_combout\ & \U3|Mux45~0_combout\)))) # (\U3|Selector1~0_combout\ & (\U3|Selector3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110001010101000011001010101000111111010101010011111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector3~0_combout\,
	datab => \U3|ALT_INV_Selector2~2_combout\,
	datac => \U3|ALT_INV_Mux45~0_combout\,
	datad => \U3|ALT_INV_Selector1~0_combout\,
	datae => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U3|ALT_INV_Mux45~2_combout\,
	combout => \U3|Mux45~3_combout\);

-- Location: LABCELL_X29_Y4_N0
\U3|Mux45~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux45~1_combout\ = ( \U3|Selector4~0_combout\ & ( \DIN[2]~2_combout\ & ( ((\U3|Selector1~0_combout\ & \U3|reg_IR|Q\(2))) # (\U3|Mux45~3_combout\) ) ) ) # ( !\U3|Selector4~0_combout\ & ( \DIN[2]~2_combout\ & ( (\U3|Mux45~3_combout\ & 
-- ((!\U3|Selector1~0_combout\) # (\U3|reg_G|Q\(2)))) ) ) ) # ( \U3|Selector4~0_combout\ & ( !\DIN[2]~2_combout\ & ( (!\U3|Selector1~0_combout\ & ((\U3|Mux45~3_combout\))) # (\U3|Selector1~0_combout\ & (\U3|reg_IR|Q\(2) & !\U3|Mux45~3_combout\)) ) ) ) # ( 
-- !\U3|Selector4~0_combout\ & ( !\DIN[2]~2_combout\ & ( (\U3|Mux45~3_combout\ & ((!\U3|Selector1~0_combout\) # (\U3|reg_G|Q\(2)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011011101000000111100110000000000110111010000001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_G|ALT_INV_Q\(2),
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|reg_IR|ALT_INV_Q\(2),
	datad => \U3|ALT_INV_Mux45~3_combout\,
	datae => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \ALT_INV_DIN[2]~2_combout\,
	combout => \U3|Mux45~1_combout\);

-- Location: LABCELL_X27_Y4_N18
\U3|reg_ADDR|Q[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[2]~feeder_combout\ = ( \U3|Mux45~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux45~1_combout\,
	combout => \U3|reg_ADDR|Q[2]~feeder_combout\);

-- Location: FF_X27_Y4_N19
\U3|reg_ADDR|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[2]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(2));

-- Location: MLABCELL_X28_Y5_N12
\DIN[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[10]~14_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(10) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q\(14) & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & !\U3|reg_ADDR|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datac => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datad => \U3|reg_ADDR|ALT_INV_Q\(12),
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(10),
	combout => \DIN[10]~14_combout\);

-- Location: FF_X28_Y5_N14
\U3|reg_IR|Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[10]~14_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(10));

-- Location: LABCELL_X29_Y4_N30
\U3|decX|Mux0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~5_combout\ = (\U3|decX|Mux0~2_combout\ & (\U3|reg_IR|Q\(10) & \U3|reg_IR|Q\(11)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|decX|ALT_INV_Mux0~2_combout\,
	datac => \U3|reg_IR|ALT_INV_Q\(10),
	datad => \U3|reg_IR|ALT_INV_Q\(11),
	combout => \U3|decX|Mux0~5_combout\);

-- Location: FF_X28_Y4_N2
\U3|Upc|Count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~1_sumout\,
	asdata => \U3|Mux47~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(0));

-- Location: FF_X28_Y4_N5
\U3|Upc|Count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~21_sumout\,
	asdata => \U3|Mux46~1_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(1));

-- Location: FF_X29_Y5_N35
\U3|reg_5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux46~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(1));

-- Location: LABCELL_X29_Y5_N33
\U3|Mux46~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux46~2_combout\ = ( \U3|Selector3~0_combout\ & ( (\U3|Selector4~0_combout\ & ((!\U3|reg_5|Q\(1)) # (\U3|Selector1~0_combout\))) ) ) # ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|Selector1~0_combout\)) # (\U3|Selector4~0_combout\ 
-- & (!\U3|Selector1~0_combout\ & !\U3|Upc|Count\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|Upc|ALT_INV_Count\(1),
	datad => \U3|reg_5|ALT_INV_Q\(1),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux46~2_combout\);

-- Location: FF_X30_Y5_N23
\U3|reg_6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux46~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(1));

-- Location: FF_X30_Y5_N53
\U3|reg_4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux46~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(1));

-- Location: LABCELL_X30_Y5_N51
\U3|Mux46~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux46~3_combout\ = ( \U3|reg_4|Q\(1) & ( \U3|Selector3~0_combout\ & ( (!\U3|Selector1~0_combout\) # (\U3|reg_IR|Q\(1)) ) ) ) # ( !\U3|reg_4|Q\(1) & ( \U3|Selector3~0_combout\ & ( (\U3|reg_IR|Q\(1) & \U3|Selector1~0_combout\) ) ) ) # ( \U3|reg_4|Q\(1) 
-- & ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector1~0_combout\ & (\U3|reg_6|Q\(1))) # (\U3|Selector1~0_combout\ & ((\U3|reg_IR|Q\(1)))) ) ) ) # ( !\U3|reg_4|Q\(1) & ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector1~0_combout\ & (\U3|reg_6|Q\(1))) # 
-- (\U3|Selector1~0_combout\ & ((\U3|reg_IR|Q\(1)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001111010101010000111100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_6|ALT_INV_Q\(1),
	datac => \U3|reg_IR|ALT_INV_Q\(1),
	datad => \U3|ALT_INV_Selector1~0_combout\,
	datae => \U3|reg_4|ALT_INV_Q\(1),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux46~3_combout\);

-- Location: FF_X28_Y5_N10
\U3|reg_3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux46~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(1));

-- Location: FF_X29_Y5_N59
\U3|reg_1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux46~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(1));

-- Location: LABCELL_X31_Y5_N9
\U3|reg_2|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[1]~feeder_combout\ = ( \U3|Mux46~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux46~1_combout\,
	combout => \U3|reg_2|Q[1]~feeder_combout\);

-- Location: FF_X31_Y5_N10
\U3|reg_2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[1]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(1));

-- Location: LABCELL_X31_Y5_N48
\U3|reg_0|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[1]~feeder_combout\ = ( \U3|Mux46~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux46~1_combout\,
	combout => \U3|reg_0|Q[1]~feeder_combout\);

-- Location: FF_X31_Y5_N49
\U3|reg_0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[1]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(1));

-- Location: LABCELL_X29_Y5_N51
\U3|Mux46~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux46~0_combout\ = ( \U3|reg_0|Q\(1) & ( \U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\) # (\U3|reg_1|Q\(1)) ) ) ) # ( !\U3|reg_0|Q\(1) & ( \U3|Selector3~0_combout\ & ( (\U3|reg_1|Q\(1) & \U3|Selector4~0_combout\) ) ) ) # ( \U3|reg_0|Q\(1) & 
-- ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & ((\U3|reg_2|Q\(1)))) # (\U3|Selector4~0_combout\ & (\U3|reg_3|Q\(1))) ) ) ) # ( !\U3|reg_0|Q\(1) & ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & ((\U3|reg_2|Q\(1)))) # 
-- (\U3|Selector4~0_combout\ & (\U3|reg_3|Q\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_3|ALT_INV_Q\(1),
	datab => \U3|reg_1|ALT_INV_Q\(1),
	datac => \U3|reg_2|ALT_INV_Q\(1),
	datad => \U3|ALT_INV_Selector4~0_combout\,
	datae => \U3|reg_0|ALT_INV_Q\(1),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux46~0_combout\);

-- Location: LABCELL_X29_Y5_N12
\U3|Mux46~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux46~4_combout\ = ( \U3|Mux46~0_combout\ & ( \U3|Mux46~2_combout\ & ( (!\U3|Selector1~0_combout\ & (\U3|Selector2~2_combout\ & ((!\U3|Mux46~3_combout\) # (\U3|Selector4~0_combout\)))) # (\U3|Selector1~0_combout\ & (((!\U3|Mux46~3_combout\)))) ) ) ) # 
-- ( !\U3|Mux46~0_combout\ & ( \U3|Mux46~2_combout\ & ( (!\U3|Mux46~3_combout\) # ((!\U3|Selector1~0_combout\ & ((!\U3|Selector2~2_combout\) # (\U3|Selector4~0_combout\)))) ) ) ) # ( \U3|Mux46~0_combout\ & ( !\U3|Mux46~2_combout\ & ( 
-- (\U3|Selector2~2_combout\ & (!\U3|Selector4~0_combout\ & (!\U3|Mux46~3_combout\ & !\U3|Selector1~0_combout\))) ) ) ) # ( !\U3|Mux46~0_combout\ & ( !\U3|Mux46~2_combout\ & ( (!\U3|Selector1~0_combout\ & ((!\U3|Selector2~2_combout\) # 
-- ((!\U3|Selector4~0_combout\ & !\U3|Mux46~3_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101000000000010000000000000011111011111100000101000111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Selector4~0_combout\,
	datac => \U3|ALT_INV_Mux46~3_combout\,
	datad => \U3|ALT_INV_Selector1~0_combout\,
	datae => \U3|ALT_INV_Mux46~0_combout\,
	dataf => \U3|ALT_INV_Mux46~2_combout\,
	combout => \U3|Mux46~4_combout\);

-- Location: FF_X28_Y6_N7
\U3|reg_G|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~21_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(1));

-- Location: LABCELL_X29_Y5_N36
\U3|Mux46~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux46~1_combout\ = ( \DIN[1]~1_combout\ & ( \U3|Selector1~0_combout\ & ( (!\U3|Selector4~0_combout\ & (!\U3|Mux46~2_combout\ & ((\U3|reg_G|Q\(1))))) # (\U3|Selector4~0_combout\ & (((!\U3|Mux46~4_combout\)))) ) ) ) # ( !\DIN[1]~1_combout\ & ( 
-- \U3|Selector1~0_combout\ & ( (!\U3|Mux46~2_combout\ & (((!\U3|Selector4~0_combout\ & \U3|reg_G|Q\(1))))) # (\U3|Mux46~2_combout\ & (!\U3|Mux46~4_combout\ & (\U3|Selector4~0_combout\))) ) ) ) # ( \DIN[1]~1_combout\ & ( !\U3|Selector1~0_combout\ & ( 
-- !\U3|Mux46~4_combout\ ) ) ) # ( !\DIN[1]~1_combout\ & ( !\U3|Selector1~0_combout\ & ( !\U3|Mux46~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000100101001000000110010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux46~2_combout\,
	datab => \U3|ALT_INV_Mux46~4_combout\,
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \U3|reg_G|ALT_INV_Q\(1),
	datae => \ALT_INV_DIN[1]~1_combout\,
	dataf => \U3|ALT_INV_Selector1~0_combout\,
	combout => \U3|Mux46~1_combout\);

-- Location: LABCELL_X31_Y5_N54
\U3|reg_ADDR|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[1]~feeder_combout\ = ( \U3|Mux46~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux46~1_combout\,
	combout => \U3|reg_ADDR|Q[1]~feeder_combout\);

-- Location: FF_X31_Y5_N55
\U3|reg_ADDR|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[1]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(1));

-- Location: LABCELL_X27_Y5_N48
\DIN[11]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[11]~15_combout\ = ( !\U3|reg_ADDR|Q\(14) & ( \U4|altsyncram_component|auto_generated|q_a\(11) & ( (!\U3|reg_ADDR|Q[12]~DUPLICATE_q\ & (!\U3|reg_ADDR|Q\(13) & !\U3|reg_ADDR|Q[15]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datac => \U3|reg_ADDR|ALT_INV_Q\(13),
	datad => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datae => \U3|reg_ADDR|ALT_INV_Q\(14),
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(11),
	combout => \DIN[11]~15_combout\);

-- Location: FF_X27_Y5_N49
\U3|reg_IR|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[11]~15_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(11));

-- Location: LABCELL_X30_Y6_N0
\U3|decX|Mux0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|decX|Mux0~7_combout\ = ( \U3|decX|Mux0~2_combout\ & ( !\U3|reg_IR|Q[10]~DUPLICATE_q\ & ( !\U3|reg_IR|Q\(11) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|reg_IR|ALT_INV_Q\(11),
	datae => \U3|decX|ALT_INV_Mux0~2_combout\,
	dataf => \U3|reg_IR|ALT_INV_Q[10]~DUPLICATE_q\,
	combout => \U3|decX|Mux0~7_combout\);

-- Location: FF_X27_Y4_N32
\U3|reg_1|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux35~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(12));

-- Location: LABCELL_X30_Y4_N6
\U3|reg_2|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[12]~feeder_combout\ = ( \U3|Mux35~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux35~4_combout\,
	combout => \U3|reg_2|Q[12]~feeder_combout\);

-- Location: FF_X30_Y4_N7
\U3|reg_2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[12]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(12));

-- Location: LABCELL_X30_Y4_N12
\U3|reg_0|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[12]~feeder_combout\ = ( \U3|Mux35~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux35~4_combout\,
	combout => \U3|reg_0|Q[12]~feeder_combout\);

-- Location: FF_X30_Y4_N13
\U3|reg_0|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[12]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(12));

-- Location: FF_X28_Y4_N50
\U3|reg_3|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux35~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(12));

-- Location: MLABCELL_X28_Y4_N48
\U3|Mux35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux35~1_combout\ = ( \U3|reg_3|Q\(12) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_1|Q\(12)) ) ) ) # ( !\U3|reg_3|Q\(12) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_1|Q\(12) & \U3|Selector3~0_combout\) ) ) ) # ( 
-- \U3|reg_3|Q\(12) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(12))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(12)))) ) ) ) # ( !\U3|reg_3|Q\(12) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & 
-- (\U3|reg_2|Q\(12))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000111111001100000011111100000101000001011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_1|ALT_INV_Q\(12),
	datab => \U3|reg_2|ALT_INV_Q\(12),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_0|ALT_INV_Q\(12),
	datae => \U3|reg_3|ALT_INV_Q\(12),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux35~1_combout\);

-- Location: MLABCELL_X28_Y7_N48
\U3|reg_4|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_4|Q[12]~feeder_combout\ = ( \U3|Mux35~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux35~4_combout\,
	combout => \U3|reg_4|Q[12]~feeder_combout\);

-- Location: FF_X28_Y7_N49
\U3|reg_4|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_4|Q[12]~feeder_combout\,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(12));

-- Location: MLABCELL_X28_Y4_N36
\U3|Upc|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~5_sumout\ = SUM(( \U3|Upc|Count\(12) ) + ( GND ) + ( \U3|Upc|Add0~54\ ))
-- \U3|Upc|Add0~6\ = CARRY(( \U3|Upc|Count\(12) ) + ( GND ) + ( \U3|Upc|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(12),
	cin => \U3|Upc|Add0~54\,
	sumout => \U3|Upc|Add0~5_sumout\,
	cout => \U3|Upc|Add0~6\);

-- Location: FF_X28_Y4_N38
\U3|Upc|Count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~5_sumout\,
	asdata => \U3|Mux35~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(12));

-- Location: FF_X27_Y4_N41
\U3|reg_5|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux35~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(12));

-- Location: FF_X27_Y6_N38
\U3|reg_6|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux35~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(12));

-- Location: LABCELL_X27_Y6_N36
\U3|Mux35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux35~0_combout\ = ( \U3|reg_6|Q\(12) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(12))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(12)))) ) ) ) # ( !\U3|reg_6|Q\(12) & ( \U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector3~0_combout\ & (\U3|Upc|Count\(12))) # (\U3|Selector3~0_combout\ & ((\U3|reg_5|Q\(12)))) ) ) ) # ( \U3|reg_6|Q\(12) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_4|Q\(12)) ) ) ) # ( !\U3|reg_6|Q\(12) & ( 
-- !\U3|Selector4~0_combout\ & ( (\U3|reg_4|Q\(12) & \U3|Selector3~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101111111110101010100110011000011110011001100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_4|ALT_INV_Q\(12),
	datab => \U3|Upc|ALT_INV_Count\(12),
	datac => \U3|reg_5|ALT_INV_Q\(12),
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \U3|reg_6|ALT_INV_Q\(12),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux35~0_combout\);

-- Location: FF_X27_Y6_N49
\U3|reg_A|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux35~4_combout\,
	sload => VCC,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(12));

-- Location: MLABCELL_X28_Y6_N39
\U3|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~5_sumout\ = SUM(( !\U3|Mux35~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(12) ) + ( \U3|Add0~58\ ))
-- \U3|Add0~6\ = CARRY(( !\U3|Mux35~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(12) ) + ( \U3|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux19~0_combout\,
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|reg_A|ALT_INV_Q\(12),
	datad => \U3|ALT_INV_Mux35~4_combout\,
	cin => \U3|Add0~58\,
	sumout => \U3|Add0~5_sumout\,
	cout => \U3|Add0~6\);

-- Location: FF_X28_Y6_N41
\U3|reg_G|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~5_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(12));

-- Location: LABCELL_X27_Y6_N45
\U3|Mux35~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux35~3_combout\ = ( \U3|reg_IR|Q\(4) & ( (!\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\) # (\U3|reg_G|Q\(12)))) ) ) # ( !\U3|reg_IR|Q\(4) & ( (!\U3|Selector4~0_combout\ & (\U3|Selector3~0_combout\ & \U3|reg_G|Q\(12))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001010001010100010101000101010001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_G|ALT_INV_Q\(12),
	dataf => \U3|reg_IR|ALT_INV_Q\(4),
	combout => \U3|Mux35~3_combout\);

-- Location: LABCELL_X27_Y6_N42
\U3|Mux35~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux35~2_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(12) & ( (\U3|Selector4~0_combout\ & (!\U3|Selector3~0_combout\ & \Equal0~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \U3|Mux35~2_combout\);

-- Location: LABCELL_X27_Y6_N12
\U3|Mux35~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux35~4_combout\ = ( \U3|Mux35~3_combout\ & ( \U3|Mux35~2_combout\ & ( ((!\U3|Selector2~2_combout\ & (\U3|Mux35~1_combout\)) # (\U3|Selector2~2_combout\ & ((\U3|Mux35~0_combout\)))) # (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux35~3_combout\ & ( 
-- \U3|Mux35~2_combout\ & ( ((!\U3|Selector2~2_combout\ & (\U3|Mux35~1_combout\)) # (\U3|Selector2~2_combout\ & ((\U3|Mux35~0_combout\)))) # (\U3|Selector1~0_combout\) ) ) ) # ( \U3|Mux35~3_combout\ & ( !\U3|Mux35~2_combout\ & ( ((!\U3|Selector2~2_combout\ & 
-- (\U3|Mux35~1_combout\)) # (\U3|Selector2~2_combout\ & ((\U3|Mux35~0_combout\)))) # (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux35~3_combout\ & ( !\U3|Mux35~2_combout\ & ( (!\U3|Selector1~0_combout\ & ((!\U3|Selector2~2_combout\ & (\U3|Mux35~1_combout\)) 
-- # (\U3|Selector2~2_combout\ & ((\U3|Mux35~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000001010011101110101111101110111010111110111011101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector1~0_combout\,
	datab => \U3|ALT_INV_Mux35~1_combout\,
	datac => \U3|ALT_INV_Mux35~0_combout\,
	datad => \U3|ALT_INV_Selector2~2_combout\,
	datae => \U3|ALT_INV_Mux35~3_combout\,
	dataf => \U3|ALT_INV_Mux35~2_combout\,
	combout => \U3|Mux35~4_combout\);

-- Location: LABCELL_X27_Y7_N45
\U3|reg_ADDR|Q[12]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[12]~feeder_combout\ = ( \U3|Mux35~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux35~4_combout\,
	combout => \U3|reg_ADDR|Q[12]~feeder_combout\);

-- Location: FF_X27_Y7_N46
\U3|reg_ADDR|Q[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[12]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q[12]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y7_N15
W_mem : cyclonev_lcell_comb
-- Equation(s):
-- \W_mem~combout\ = ( !\U3|reg_ADDR|Q\(13) & ( !\U3|reg_ADDR|Q\(14) & ( (\U3|reg_W|Q~q\ & (!\U3|reg_ADDR|Q\(15) & !\U3|reg_ADDR|Q[12]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_W|ALT_INV_Q~q\,
	datab => \U3|reg_ADDR|ALT_INV_Q\(15),
	datac => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	datae => \U3|reg_ADDR|ALT_INV_Q\(13),
	dataf => \U3|reg_ADDR|ALT_INV_Q\(14),
	combout => \W_mem~combout\);

-- Location: MLABCELL_X28_Y5_N3
\DIN[9]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[9]~13_combout\ = ( !\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q\(14) & (\U4|altsyncram_component|auto_generated|q_a\(9) & !\U3|reg_ADDR|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datac => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(9),
	datad => \U3|reg_ADDR|ALT_INV_Q\(12),
	dataf => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	combout => \DIN[9]~13_combout\);

-- Location: FF_X28_Y5_N5
\U3|reg_IR|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[9]~13_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(9));

-- Location: FF_X27_Y5_N52
\U3|reg_IR|Q[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \DIN[0]~0_combout\,
	sload => VCC,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q[0]~DUPLICATE_q\);

-- Location: FF_X28_Y5_N56
\U3|reg_IR|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[15]~11_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(15));

-- Location: MLABCELL_X28_Y5_N6
\U3|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector2~0_combout\ = ( \U3|reg_IR|Q\(15) & ( \U3|reg_IR|Q[14]~DUPLICATE_q\ & ( \U3|Tstep_Q.T3~DUPLICATE_q\ ) ) ) # ( !\U3|reg_IR|Q\(15) & ( \U3|reg_IR|Q[14]~DUPLICATE_q\ & ( \U3|Tstep_Q.T3~DUPLICATE_q\ ) ) ) # ( !\U3|reg_IR|Q\(15) & ( 
-- !\U3|reg_IR|Q[14]~DUPLICATE_q\ & ( (\U3|Tstep_Q.T3~DUPLICATE_q\ & \U3|reg_IR|Q\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	datac => \U3|reg_IR|ALT_INV_Q\(13),
	datae => \U3|reg_IR|ALT_INV_Q\(15),
	dataf => \U3|reg_IR|ALT_INV_Q[14]~DUPLICATE_q\,
	combout => \U3|Selector2~0_combout\);

-- Location: FF_X28_Y5_N25
\U3|Tstep_Q.T5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Tstep_Q.T4~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T5~q\);

-- Location: LABCELL_X29_Y5_N24
\U3|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector4~0_combout\ = ( !\U3|Tstep_Q.T5~q\ & ( (!\U3|Selector2~1_combout\ & (((!\U3|Selector2~0_combout\)))) # (\U3|Selector2~1_combout\ & ((!\U3|Selector2~0_combout\ & ((\U3|reg_IR|Q[0]~DUPLICATE_q\))) # (\U3|Selector2~0_combout\ & 
-- (\U3|reg_IR|Q\(9))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111100010001110011110001000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(9),
	datab => \U3|ALT_INV_Selector2~1_combout\,
	datac => \U3|reg_IR|ALT_INV_Q[0]~DUPLICATE_q\,
	datad => \U3|ALT_INV_Selector2~0_combout\,
	dataf => \U3|ALT_INV_Tstep_Q.T5~q\,
	combout => \U3|Selector4~0_combout\);

-- Location: LABCELL_X29_Y7_N27
\U3|Mux33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux33~0_combout\ = ( \U3|reg_IR|Q\(6) & ( (!\U3|Selector3~0_combout\ & !\U3|Selector4~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U3|reg_IR|ALT_INV_Q\(6),
	combout => \U3|Mux33~0_combout\);

-- Location: MLABCELL_X28_Y4_N39
\U3|Upc|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~9_sumout\ = SUM(( \U3|Upc|Count\(13) ) + ( GND ) + ( \U3|Upc|Add0~6\ ))
-- \U3|Upc|Add0~10\ = CARRY(( \U3|Upc|Count\(13) ) + ( GND ) + ( \U3|Upc|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(13),
	cin => \U3|Upc|Add0~6\,
	sumout => \U3|Upc|Add0~9_sumout\,
	cout => \U3|Upc|Add0~10\);

-- Location: FF_X28_Y4_N41
\U3|Upc|Count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~9_sumout\,
	asdata => \U3|Mux34~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(13));

-- Location: MLABCELL_X28_Y4_N42
\U3|Upc|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~13_sumout\ = SUM(( \U3|Upc|Count\(14) ) + ( GND ) + ( \U3|Upc|Add0~10\ ))
-- \U3|Upc|Add0~14\ = CARRY(( \U3|Upc|Count\(14) ) + ( GND ) + ( \U3|Upc|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|Upc|ALT_INV_Count\(14),
	cin => \U3|Upc|Add0~10\,
	sumout => \U3|Upc|Add0~13_sumout\,
	cout => \U3|Upc|Add0~14\);

-- Location: FF_X28_Y4_N44
\U3|Upc|Count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~13_sumout\,
	asdata => \U3|Mux33~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(14));

-- Location: FF_X29_Y7_N58
\U3|reg_5|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux33~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(14));

-- Location: FF_X28_Y7_N5
\U3|reg_4|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux33~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(14));

-- Location: FF_X28_Y7_N47
\U3|reg_6|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux33~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(14));

-- Location: MLABCELL_X28_Y7_N24
\U3|Mux33~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux33~2_combout\ = ( \U3|Selector3~0_combout\ & ( \U3|Selector4~0_combout\ & ( \U3|reg_5|Q\(14) ) ) ) # ( !\U3|Selector3~0_combout\ & ( \U3|Selector4~0_combout\ & ( \U3|Upc|Count\(14) ) ) ) # ( \U3|Selector3~0_combout\ & ( !\U3|Selector4~0_combout\ & 
-- ( \U3|reg_4|Q\(14) ) ) ) # ( !\U3|Selector3~0_combout\ & ( !\U3|Selector4~0_combout\ & ( \U3|reg_6|Q\(14) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000011110000111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|Upc|ALT_INV_Count\(14),
	datab => \U3|reg_5|ALT_INV_Q\(14),
	datac => \U3|reg_4|ALT_INV_Q\(14),
	datad => \U3|reg_6|ALT_INV_Q\(14),
	datae => \U3|ALT_INV_Selector3~0_combout\,
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux33~2_combout\);

-- Location: FF_X29_Y7_N16
\U3|reg_A|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux33~4_combout\,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(14));

-- Location: FF_X27_Y6_N4
\U3|reg_A|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux34~4_combout\,
	sload => VCC,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(13));

-- Location: MLABCELL_X28_Y6_N42
\U3|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~9_sumout\ = SUM(( !\U3|Mux34~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(13) ) + ( \U3|Add0~6\ ))
-- \U3|Add0~10\ = CARRY(( !\U3|Mux34~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(13) ) + ( \U3|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux19~0_combout\,
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux34~4_combout\,
	dataf => \U3|reg_A|ALT_INV_Q\(13),
	cin => \U3|Add0~6\,
	sumout => \U3|Add0~9_sumout\,
	cout => \U3|Add0~10\);

-- Location: MLABCELL_X28_Y6_N45
\U3|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~13_sumout\ = SUM(( !\U3|Mux33~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(14) ) + ( \U3|Add0~10\ ))
-- \U3|Add0~14\ = CARRY(( !\U3|Mux33~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(14) ) + ( \U3|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux19~0_combout\,
	datab => \U3|ALT_INV_Tstep_Q.T4~q\,
	datac => \U3|ALT_INV_Mux33~4_combout\,
	dataf => \U3|reg_A|ALT_INV_Q\(14),
	cin => \U3|Add0~10\,
	sumout => \U3|Add0~13_sumout\,
	cout => \U3|Add0~14\);

-- Location: FF_X28_Y6_N46
\U3|reg_G|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~13_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(14));

-- Location: LABCELL_X29_Y7_N57
\U3|Mux33~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux33~1_combout\ = ( \Equal0~0_combout\ & ( \U4|altsyncram_component|auto_generated|q_a\(14) & ( (!\U3|Selector4~0_combout\ & (\U3|reg_G|Q\(14) & \U3|Selector3~0_combout\)) # (\U3|Selector4~0_combout\ & ((!\U3|Selector3~0_combout\))) ) ) ) # ( 
-- !\Equal0~0_combout\ & ( \U4|altsyncram_component|auto_generated|q_a\(14) & ( (!\U3|Selector4~0_combout\ & (\U3|reg_G|Q\(14) & \U3|Selector3~0_combout\)) ) ) ) # ( \Equal0~0_combout\ & ( !\U4|altsyncram_component|auto_generated|q_a\(14) & ( 
-- (!\U3|Selector4~0_combout\ & (\U3|reg_G|Q\(14) & \U3|Selector3~0_combout\)) ) ) ) # ( !\Equal0~0_combout\ & ( !\U4|altsyncram_component|auto_generated|q_a\(14) & ( (!\U3|Selector4~0_combout\ & (\U3|reg_G|Q\(14) & \U3|Selector3~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000000000101000000000000010100101010100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datac => \U3|reg_G|ALT_INV_Q\(14),
	datad => \U3|ALT_INV_Selector3~0_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	combout => \U3|Mux33~1_combout\);

-- Location: LABCELL_X30_Y4_N24
\U3|reg_2|Q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[14]~feeder_combout\ = ( \U3|Mux33~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux33~4_combout\,
	combout => \U3|reg_2|Q[14]~feeder_combout\);

-- Location: FF_X30_Y4_N26
\U3|reg_2|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[14]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(14));

-- Location: FF_X29_Y4_N40
\U3|reg_3|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux33~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(14));

-- Location: LABCELL_X30_Y4_N0
\U3|reg_0|Q[14]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[14]~feeder_combout\ = ( \U3|Mux33~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux33~4_combout\,
	combout => \U3|reg_0|Q[14]~feeder_combout\);

-- Location: FF_X30_Y4_N2
\U3|reg_0|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[14]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(14));

-- Location: FF_X30_Y4_N44
\U3|reg_1|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux33~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(14));

-- Location: LABCELL_X30_Y4_N42
\U3|Mux33~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux33~3_combout\ = ( \U3|reg_1|Q\(14) & ( \U3|Selector3~0_combout\ & ( (\U3|Selector4~0_combout\) # (\U3|reg_0|Q\(14)) ) ) ) # ( !\U3|reg_1|Q\(14) & ( \U3|Selector3~0_combout\ & ( (\U3|reg_0|Q\(14) & !\U3|Selector4~0_combout\) ) ) ) # ( 
-- \U3|reg_1|Q\(14) & ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|reg_2|Q\(14))) # (\U3|Selector4~0_combout\ & ((\U3|reg_3|Q\(14)))) ) ) ) # ( !\U3|reg_1|Q\(14) & ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & 
-- (\U3|reg_2|Q\(14))) # (\U3|Selector4~0_combout\ & ((\U3|reg_3|Q\(14)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100110011010101010011001100001111000000000000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_2|ALT_INV_Q\(14),
	datab => \U3|reg_3|ALT_INV_Q\(14),
	datac => \U3|reg_0|ALT_INV_Q\(14),
	datad => \U3|ALT_INV_Selector4~0_combout\,
	datae => \U3|reg_1|ALT_INV_Q\(14),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux33~3_combout\);

-- Location: LABCELL_X29_Y7_N15
\U3|Mux33~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux33~4_combout\ = ( \U3|Mux33~1_combout\ & ( \U3|Mux33~3_combout\ & ( ((!\U3|Selector2~2_combout\) # (\U3|Selector1~0_combout\)) # (\U3|Mux33~2_combout\) ) ) ) # ( !\U3|Mux33~1_combout\ & ( \U3|Mux33~3_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- (((!\U3|Selector2~2_combout\) # (\U3|Mux33~2_combout\)))) # (\U3|Selector1~0_combout\ & (\U3|Mux33~0_combout\)) ) ) ) # ( \U3|Mux33~1_combout\ & ( !\U3|Mux33~3_combout\ & ( ((\U3|Mux33~2_combout\ & \U3|Selector2~2_combout\)) # (\U3|Selector1~0_combout\) ) 
-- ) ) # ( !\U3|Mux33~1_combout\ & ( !\U3|Mux33~3_combout\ & ( (!\U3|Selector1~0_combout\ & (((\U3|Mux33~2_combout\ & \U3|Selector2~2_combout\)))) # (\U3|Selector1~0_combout\ & (\U3|Mux33~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100110101000011110011111111110101001101011111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux33~0_combout\,
	datab => \U3|ALT_INV_Mux33~2_combout\,
	datac => \U3|ALT_INV_Selector1~0_combout\,
	datad => \U3|ALT_INV_Selector2~2_combout\,
	datae => \U3|ALT_INV_Mux33~1_combout\,
	dataf => \U3|ALT_INV_Mux33~3_combout\,
	combout => \U3|Mux33~4_combout\);

-- Location: FF_X27_Y7_N14
\U3|reg_ADDR|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux33~4_combout\,
	sload => VCC,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(14));

-- Location: MLABCELL_X28_Y5_N0
\DIN[13]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[13]~10_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(13) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q\(14) & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & !\U3|reg_ADDR|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datac => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datad => \U3|reg_ADDR|ALT_INV_Q\(12),
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \DIN[13]~10_combout\);

-- Location: FF_X28_Y5_N2
\U3|reg_IR|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[13]~10_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(13));

-- Location: MLABCELL_X28_Y5_N57
\DIN[12]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[12]~12_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(12) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & (!\U3|reg_ADDR|Q\(14) & !\U3|reg_ADDR|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datac => \U3|reg_ADDR|ALT_INV_Q\(14),
	datad => \U3|reg_ADDR|ALT_INV_Q\(12),
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(12),
	combout => \DIN[12]~12_combout\);

-- Location: FF_X28_Y5_N59
\U3|reg_IR|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[12]~12_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(12));

-- Location: FF_X28_Y5_N50
\U3|Tstep_Q.T0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T0~q\);

-- Location: MLABCELL_X28_Y5_N18
\U3|Selector2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector2~1_combout\ = ( \U3|reg_IR|Q\(15) & ( \U3|Tstep_Q.T0~q\ & ( (!\U3|reg_IR|Q\(12)) # ((\U3|reg_IR|Q[14]~DUPLICATE_q\ & \U3|Tstep_Q.T3~DUPLICATE_q\)) ) ) ) # ( !\U3|reg_IR|Q\(15) & ( \U3|Tstep_Q.T0~q\ & ( (!\U3|Tstep_Q.T3~DUPLICATE_q\ & 
-- (((!\U3|reg_IR|Q\(12))))) # (\U3|Tstep_Q.T3~DUPLICATE_q\ & (((!\U3|reg_IR|Q\(13) & !\U3|reg_IR|Q\(12))) # (\U3|reg_IR|Q[14]~DUPLICATE_q\))) ) ) ) # ( \U3|reg_IR|Q\(15) & ( !\U3|Tstep_Q.T0~q\ & ( (\U3|reg_IR|Q[14]~DUPLICATE_q\ & 
-- \U3|Tstep_Q.T3~DUPLICATE_q\) ) ) ) # ( !\U3|reg_IR|Q\(15) & ( !\U3|Tstep_Q.T0~q\ & ( (\U3|reg_IR|Q[14]~DUPLICATE_q\ & \U3|Tstep_Q.T3~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111111011000000111111111100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(13),
	datab => \U3|reg_IR|ALT_INV_Q[14]~DUPLICATE_q\,
	datac => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	datad => \U3|reg_IR|ALT_INV_Q\(12),
	datae => \U3|reg_IR|ALT_INV_Q\(15),
	dataf => \U3|ALT_INV_Tstep_Q.T0~q\,
	combout => \U3|Selector2~1_combout\);

-- Location: MLABCELL_X28_Y5_N51
\U3|Selector2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector2~2_combout\ = ( \U3|reg_IR|Q\(2) & ( \U3|Selector2~0_combout\ & ( (!\U3|Selector2~1_combout\ & (!\U3|Tstep_Q.T0~DUPLICATE_q\)) # (\U3|Selector2~1_combout\ & ((!\U3|Tstep_Q.T5~DUPLICATE_q\ & ((\U3|reg_IR|Q\(11)))) # 
-- (\U3|Tstep_Q.T5~DUPLICATE_q\ & (!\U3|Tstep_Q.T0~DUPLICATE_q\)))) ) ) ) # ( !\U3|reg_IR|Q\(2) & ( \U3|Selector2~0_combout\ & ( (!\U3|Selector2~1_combout\ & (!\U3|Tstep_Q.T0~DUPLICATE_q\)) # (\U3|Selector2~1_combout\ & ((!\U3|Tstep_Q.T5~DUPLICATE_q\ & 
-- ((\U3|reg_IR|Q\(11)))) # (\U3|Tstep_Q.T5~DUPLICATE_q\ & (!\U3|Tstep_Q.T0~DUPLICATE_q\)))) ) ) ) # ( \U3|reg_IR|Q\(2) & ( !\U3|Selector2~0_combout\ & ( (!\U3|Tstep_Q.T0~DUPLICATE_q\) # ((\U3|Selector2~1_combout\ & !\U3|Tstep_Q.T5~DUPLICATE_q\)) ) ) ) # ( 
-- !\U3|reg_IR|Q\(2) & ( !\U3|Selector2~0_combout\ & ( (!\U3|Tstep_Q.T0~DUPLICATE_q\ & ((!\U3|Selector2~1_combout\) # (\U3|Tstep_Q.T5~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100011001100110111011100110010001101110011001000110111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~1_combout\,
	datab => \U3|ALT_INV_Tstep_Q.T0~DUPLICATE_q\,
	datac => \U3|reg_IR|ALT_INV_Q\(11),
	datad => \U3|ALT_INV_Tstep_Q.T5~DUPLICATE_q\,
	datae => \U3|reg_IR|ALT_INV_Q\(2),
	dataf => \U3|ALT_INV_Selector2~0_combout\,
	combout => \U3|Selector2~2_combout\);

-- Location: FF_X29_Y7_N2
\U3|reg_5|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux32~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(15));

-- Location: LABCELL_X30_Y7_N15
\U3|reg_4|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_4|Q[15]~feeder_combout\ = ( \U3|Mux32~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux32~4_combout\,
	combout => \U3|reg_4|Q[15]~feeder_combout\);

-- Location: FF_X30_Y7_N16
\U3|reg_4|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_4|Q[15]~feeder_combout\,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(15));

-- Location: FF_X29_Y7_N32
\U3|reg_6|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Mux32~4_combout\,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(15));

-- Location: MLABCELL_X28_Y4_N45
\U3|Upc|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Upc|Add0~17_sumout\ = SUM(( \U3|Upc|Count\(15) ) + ( GND ) + ( \U3|Upc|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U3|Upc|ALT_INV_Count\(15),
	cin => \U3|Upc|Add0~14\,
	sumout => \U3|Upc|Add0~17_sumout\);

-- Location: FF_X28_Y4_N47
\U3|Upc|Count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Upc|Add0~17_sumout\,
	asdata => \U3|Mux32~4_combout\,
	sclr => \ALT_INV_KEY[0]~input_o\,
	sload => \U3|decX|Mux0~5_combout\,
	ena => \U3|Upc|Count[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Upc|Count\(15));

-- Location: LABCELL_X29_Y7_N39
\U3|Mux32~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux32~2_combout\ = ( \U3|Selector4~0_combout\ & ( \U3|Selector3~0_combout\ & ( \U3|reg_5|Q\(15) ) ) ) # ( !\U3|Selector4~0_combout\ & ( \U3|Selector3~0_combout\ & ( \U3|reg_4|Q\(15) ) ) ) # ( \U3|Selector4~0_combout\ & ( !\U3|Selector3~0_combout\ & ( 
-- \U3|Upc|Count\(15) ) ) ) # ( !\U3|Selector4~0_combout\ & ( !\U3|Selector3~0_combout\ & ( \U3|reg_6|Q\(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111100110011001100110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_5|ALT_INV_Q\(15),
	datab => \U3|reg_4|ALT_INV_Q\(15),
	datac => \U3|reg_6|ALT_INV_Q\(15),
	datad => \U3|Upc|ALT_INV_Count\(15),
	datae => \U3|ALT_INV_Selector4~0_combout\,
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux32~2_combout\);

-- Location: FF_X30_Y4_N49
\U3|reg_2|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux32~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(15));

-- Location: FF_X30_Y4_N56
\U3|reg_0|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux32~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(15));

-- Location: LABCELL_X30_Y7_N21
\U3|reg_1|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_1|Q[15]~feeder_combout\ = ( \U3|Mux32~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux32~4_combout\,
	combout => \U3|reg_1|Q[15]~feeder_combout\);

-- Location: FF_X30_Y7_N22
\U3|reg_1|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_1|Q[15]~feeder_combout\,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(15));

-- Location: FF_X29_Y4_N56
\U3|reg_3|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux32~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(15));

-- Location: LABCELL_X29_Y4_N54
\U3|Mux32~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux32~3_combout\ = ( \U3|reg_3|Q\(15) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_1|Q\(15)) ) ) ) # ( !\U3|reg_3|Q\(15) & ( \U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\ & \U3|reg_1|Q\(15)) ) ) ) # ( 
-- \U3|reg_3|Q\(15) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(15))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(15)))) ) ) ) # ( !\U3|reg_3|Q\(15) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & 
-- (\U3|reg_2|Q\(15))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(15)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001100000000000011111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_2|ALT_INV_Q\(15),
	datab => \U3|reg_0|ALT_INV_Q\(15),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	datad => \U3|reg_1|ALT_INV_Q\(15),
	datae => \U3|reg_3|ALT_INV_Q\(15),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux32~3_combout\);

-- Location: LABCELL_X29_Y7_N21
\U3|Mux32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux32~0_combout\ = ( \U3|reg_IR|Q\(7) & ( (!\U3|Selector4~0_combout\ & !\U3|Selector3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	dataf => \U3|reg_IR|ALT_INV_Q\(7),
	combout => \U3|Mux32~0_combout\);

-- Location: FF_X29_Y6_N34
\U3|reg_A|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux32~4_combout\,
	sload => VCC,
	ena => \U3|Ain~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_A|Q\(15));

-- Location: MLABCELL_X28_Y6_N48
\U3|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Add0~17_sumout\ = SUM(( !\U3|Mux32~4_combout\ $ (((!\U3|Mux19~0_combout\) # (!\U3|Tstep_Q.T4~q\))) ) + ( \U3|reg_A|Q\(15) ) + ( \U3|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000000000000000000001111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_A|ALT_INV_Q\(15),
	datab => \U3|ALT_INV_Mux19~0_combout\,
	datac => \U3|ALT_INV_Tstep_Q.T4~q\,
	datad => \U3|ALT_INV_Mux32~4_combout\,
	cin => \U3|Add0~14\,
	sumout => \U3|Add0~17_sumout\);

-- Location: FF_X28_Y6_N49
\U3|reg_G|Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~17_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(15));

-- Location: LABCELL_X29_Y7_N18
\U3|Mux32~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux32~1_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(15) & ( (!\U3|Selector4~0_combout\ & (\U3|Selector3~0_combout\ & (\U3|reg_G|Q\(15)))) # (\U3|Selector4~0_combout\ & (!\U3|Selector3~0_combout\ & ((\Equal0~0_combout\)))) ) ) # ( 
-- !\U4|altsyncram_component|auto_generated|q_a\(15) & ( (!\U3|Selector4~0_combout\ & (\U3|Selector3~0_combout\ & \U3|reg_G|Q\(15))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010010001100000001001000110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_G|ALT_INV_Q\(15),
	datad => \ALT_INV_Equal0~0_combout\,
	dataf => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	combout => \U3|Mux32~1_combout\);

-- Location: LABCELL_X29_Y7_N30
\U3|Mux32~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux32~4_combout\ = ( \U3|Mux32~0_combout\ & ( \U3|Mux32~1_combout\ & ( ((!\U3|Selector2~2_combout\ & ((\U3|Mux32~3_combout\))) # (\U3|Selector2~2_combout\ & (\U3|Mux32~2_combout\))) # (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux32~0_combout\ & ( 
-- \U3|Mux32~1_combout\ & ( ((!\U3|Selector2~2_combout\ & ((\U3|Mux32~3_combout\))) # (\U3|Selector2~2_combout\ & (\U3|Mux32~2_combout\))) # (\U3|Selector1~0_combout\) ) ) ) # ( \U3|Mux32~0_combout\ & ( !\U3|Mux32~1_combout\ & ( ((!\U3|Selector2~2_combout\ & 
-- ((\U3|Mux32~3_combout\))) # (\U3|Selector2~2_combout\ & (\U3|Mux32~2_combout\))) # (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux32~0_combout\ & ( !\U3|Mux32~1_combout\ & ( (!\U3|Selector1~0_combout\ & ((!\U3|Selector2~2_combout\ & 
-- ((\U3|Mux32~3_combout\))) # (\U3|Selector2~2_combout\ & (\U3|Mux32~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100000000000110111111111100011011111111110001101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector2~2_combout\,
	datab => \U3|ALT_INV_Mux32~2_combout\,
	datac => \U3|ALT_INV_Mux32~3_combout\,
	datad => \U3|ALT_INV_Selector1~0_combout\,
	datae => \U3|ALT_INV_Mux32~0_combout\,
	dataf => \U3|ALT_INV_Mux32~1_combout\,
	combout => \U3|Mux32~4_combout\);

-- Location: LABCELL_X27_Y7_N42
\U3|reg_ADDR|Q[15]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_ADDR|Q[15]~feeder_combout\ = ( \U3|Mux32~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux32~4_combout\,
	combout => \U3|reg_ADDR|Q[15]~feeder_combout\);

-- Location: FF_X27_Y7_N43
\U3|reg_ADDR|Q[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_ADDR|Q[15]~feeder_combout\,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q[15]~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N54
\DIN[15]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[15]~11_combout\ = ( !\U3|reg_ADDR|Q\(14) & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & (\U4|altsyncram_component|auto_generated|q_a\(15) & !\U3|reg_ADDR|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	datac => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(15),
	datad => \U3|reg_ADDR|ALT_INV_Q\(12),
	dataf => \U3|reg_ADDR|ALT_INV_Q\(14),
	combout => \DIN[15]~11_combout\);

-- Location: FF_X28_Y5_N55
\U3|reg_IR|Q[15]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[15]~11_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q[15]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y5_N24
\U3|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector0~0_combout\ = ( \U3|Tstep_Q.T3~DUPLICATE_q\ & ( !\U3|Tstep_Q.T5~q\ & ( (!\U2|Q~q\ & (\U3|Tstep_Q.T0~DUPLICATE_q\ & ((\U3|reg_IR|Q[14]~DUPLICATE_q\) # (\U3|reg_IR|Q[15]~DUPLICATE_q\)))) # (\U2|Q~q\ & (((\U3|reg_IR|Q[14]~DUPLICATE_q\)) # 
-- (\U3|reg_IR|Q[15]~DUPLICATE_q\))) ) ) ) # ( !\U3|Tstep_Q.T3~DUPLICATE_q\ & ( !\U3|Tstep_Q.T5~q\ & ( (\U3|Tstep_Q.T0~DUPLICATE_q\) # (\U2|Q~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000100110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_Q~q\,
	datab => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datac => \U3|ALT_INV_Tstep_Q.T0~DUPLICATE_q\,
	datad => \U3|reg_IR|ALT_INV_Q[14]~DUPLICATE_q\,
	datae => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	dataf => \U3|ALT_INV_Tstep_Q.T5~q\,
	combout => \U3|Selector0~0_combout\);

-- Location: FF_X28_Y5_N49
\U3|Tstep_Q.T0~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Selector0~0_combout\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T0~DUPLICATE_q\);

-- Location: LABCELL_X33_Y5_N45
\U3|Tstep_D.T1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Tstep_D.T1~0_combout\ = ( !\U3|Tstep_Q.T0~DUPLICATE_q\ & ( \U2|Q~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \U3|ALT_INV_Tstep_Q.T0~DUPLICATE_q\,
	dataf => \U2|ALT_INV_Q~q\,
	combout => \U3|Tstep_D.T1~0_combout\);

-- Location: FF_X33_Y5_N46
\U3|Tstep_Q.T1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Tstep_D.T1~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T1~q\);

-- Location: FF_X33_Y5_N44
\U3|Tstep_Q.T2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Tstep_Q.T1~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T2~q\);

-- Location: FF_X28_Y5_N37
\U3|Tstep_Q.T3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Tstep_Q.T2~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T3~q\);

-- Location: FF_X28_Y5_N58
\U3|reg_IR|Q[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[12]~12_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q[12]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y5_N6
\U3|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector1~0_combout\ = ( !\U3|reg_IR|Q[12]~DUPLICATE_q\ & ( ((\U3|Tstep_Q.T3~q\ & (\U3|reg_IR|Q[13]~DUPLICATE_q\ & (!\U3|reg_IR|Q\(14) & !\U3|reg_IR|Q[15]~DUPLICATE_q\)))) # (\U3|Tstep_Q.T5~q\) ) ) # ( \U3|reg_IR|Q[12]~DUPLICATE_q\ & ( 
-- (((\U3|Tstep_Q.T3~q\ & (!\U3|reg_IR|Q\(14)))) # (\U3|Tstep_Q.T4~q\)) # (\U3|Tstep_Q.T5~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0011011100110011011111110011111100110011001100110111111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Tstep_Q.T3~q\,
	datab => \U3|ALT_INV_Tstep_Q.T5~q\,
	datac => \U3|ALT_INV_Tstep_Q.T4~q\,
	datad => \U3|reg_IR|ALT_INV_Q\(14),
	datae => \U3|reg_IR|ALT_INV_Q[12]~DUPLICATE_q\,
	dataf => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	datag => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	combout => \U3|Selector1~0_combout\);

-- Location: FF_X30_Y6_N10
\U3|reg_3|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux34~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(13));

-- Location: LABCELL_X30_Y4_N9
\U3|reg_2|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_2|Q[13]~feeder_combout\ = ( \U3|Mux34~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux34~4_combout\,
	combout => \U3|reg_2|Q[13]~feeder_combout\);

-- Location: FF_X30_Y4_N10
\U3|reg_2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_2|Q[13]~feeder_combout\,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(13));

-- Location: LABCELL_X31_Y6_N24
\U3|reg_0|Q[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_0|Q[13]~feeder_combout\ = ( \U3|Mux34~4_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux34~4_combout\,
	combout => \U3|reg_0|Q[13]~feeder_combout\);

-- Location: FF_X31_Y6_N25
\U3|reg_0|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_0|Q[13]~feeder_combout\,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(13));

-- Location: FF_X27_Y6_N56
\U3|reg_1|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux34~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(13));

-- Location: LABCELL_X27_Y6_N54
\U3|Mux34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux34~3_combout\ = ( \U3|reg_1|Q\(13) & ( \U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\) # (\U3|reg_3|Q\(13)) ) ) ) # ( !\U3|reg_1|Q\(13) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_3|Q\(13) & !\U3|Selector3~0_combout\) ) ) ) # ( 
-- \U3|reg_1|Q\(13) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & (\U3|reg_2|Q\(13))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(13)))) ) ) ) # ( !\U3|reg_1|Q\(13) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & 
-- (\U3|reg_2|Q\(13))) # (\U3|Selector3~0_combout\ & ((\U3|reg_0|Q\(13)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111101000100010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_3|ALT_INV_Q\(13),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_2|ALT_INV_Q\(13),
	datad => \U3|reg_0|ALT_INV_Q\(13),
	datae => \U3|reg_1|ALT_INV_Q\(13),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux34~3_combout\);

-- Location: LABCELL_X27_Y6_N21
\U3|Mux34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux34~0_combout\ = ( !\U3|Selector4~0_combout\ & ( (\U3|reg_IR|Q\(5) & !\U3|Selector3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(5),
	datac => \U3|ALT_INV_Selector3~0_combout\,
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux34~0_combout\);

-- Location: FF_X28_Y6_N43
\U3|reg_G|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~9_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(13));

-- Location: LABCELL_X27_Y6_N0
\U3|Mux34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux34~1_combout\ = ( \U4|altsyncram_component|auto_generated|q_a\(13) & ( (!\U3|Selector3~0_combout\ & (((\U3|Selector4~0_combout\ & \Equal0~0_combout\)))) # (\U3|Selector3~0_combout\ & (\U3|reg_G|Q\(13) & (!\U3|Selector4~0_combout\))) ) ) # ( 
-- !\U4|altsyncram_component|auto_generated|q_a\(13) & ( (\U3|reg_G|Q\(13) & (\U3|Selector3~0_combout\ & !\U3|Selector4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001110000010000000100000001000000011100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_G|ALT_INV_Q\(13),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(13),
	combout => \U3|Mux34~1_combout\);

-- Location: FF_X28_Y7_N40
\U3|reg_5|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux34~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(13));

-- Location: FF_X28_Y7_N59
\U3|reg_4|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux34~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(13));

-- Location: FF_X28_Y7_N35
\U3|reg_6|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux34~4_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(13));

-- Location: MLABCELL_X28_Y7_N33
\U3|Mux34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux34~2_combout\ = ( \U3|reg_6|Q\(13) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|Upc|Count\(13)))) # (\U3|Selector3~0_combout\ & (\U3|reg_5|Q\(13))) ) ) ) # ( !\U3|reg_6|Q\(13) & ( \U3|Selector4~0_combout\ & ( 
-- (!\U3|Selector3~0_combout\ & ((\U3|Upc|Count\(13)))) # (\U3|Selector3~0_combout\ & (\U3|reg_5|Q\(13))) ) ) ) # ( \U3|reg_6|Q\(13) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\) # (\U3|reg_4|Q\(13)) ) ) ) # ( !\U3|reg_6|Q\(13) & ( 
-- !\U3|Selector4~0_combout\ & ( (\U3|Selector3~0_combout\ & \U3|reg_4|Q\(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011110011111100111100010001110111010001000111011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_5|ALT_INV_Q\(13),
	datab => \U3|ALT_INV_Selector3~0_combout\,
	datac => \U3|reg_4|ALT_INV_Q\(13),
	datad => \U3|Upc|ALT_INV_Count\(13),
	datae => \U3|reg_6|ALT_INV_Q\(13),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux34~2_combout\);

-- Location: LABCELL_X27_Y6_N51
\U3|Mux34~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux34~4_combout\ = ( \U3|Mux34~1_combout\ & ( \U3|Mux34~2_combout\ & ( ((\U3|Selector2~2_combout\) # (\U3|Mux34~3_combout\)) # (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux34~1_combout\ & ( \U3|Mux34~2_combout\ & ( (!\U3|Selector1~0_combout\ & 
-- (((\U3|Selector2~2_combout\)) # (\U3|Mux34~3_combout\))) # (\U3|Selector1~0_combout\ & (((\U3|Mux34~0_combout\)))) ) ) ) # ( \U3|Mux34~1_combout\ & ( !\U3|Mux34~2_combout\ & ( ((\U3|Mux34~3_combout\ & !\U3|Selector2~2_combout\)) # 
-- (\U3|Selector1~0_combout\) ) ) ) # ( !\U3|Mux34~1_combout\ & ( !\U3|Mux34~2_combout\ & ( (!\U3|Selector1~0_combout\ & (\U3|Mux34~3_combout\ & (!\U3|Selector2~2_combout\))) # (\U3|Selector1~0_combout\ & (((\U3|Mux34~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000001110101011101010111010100101010011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector1~0_combout\,
	datab => \U3|ALT_INV_Mux34~3_combout\,
	datac => \U3|ALT_INV_Selector2~2_combout\,
	datad => \U3|ALT_INV_Mux34~0_combout\,
	datae => \U3|ALT_INV_Mux34~1_combout\,
	dataf => \U3|ALT_INV_Mux34~2_combout\,
	combout => \U3|Mux34~4_combout\);

-- Location: FF_X27_Y7_N17
\U3|reg_ADDR|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux34~4_combout\,
	sload => VCC,
	ena => \U3|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_ADDR|Q\(13));

-- Location: MLABCELL_X28_Y5_N15
\DIN[14]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \DIN[14]~9_combout\ = ( !\U3|reg_ADDR|Q[15]~DUPLICATE_q\ & ( (!\U3|reg_ADDR|Q\(13) & (!\U3|reg_ADDR|Q\(14) & (\U4|altsyncram_component|auto_generated|q_a\(14) & !\U3|reg_ADDR|Q\(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_ADDR|ALT_INV_Q\(13),
	datab => \U3|reg_ADDR|ALT_INV_Q\(14),
	datac => \U4|altsyncram_component|auto_generated|ALT_INV_q_a\(14),
	datad => \U3|reg_ADDR|ALT_INV_Q\(12),
	dataf => \U3|reg_ADDR|ALT_INV_Q[15]~DUPLICATE_q\,
	combout => \DIN[14]~9_combout\);

-- Location: FF_X28_Y5_N16
\U3|reg_IR|Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \DIN[14]~9_combout\,
	ena => \U3|Tstep_Q.T2~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_IR|Q\(14));

-- Location: LABCELL_X29_Y3_N21
\U3|Tstep_D.T4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Tstep_D.T4~0_combout\ = ( \U3|Tstep_Q.T3~DUPLICATE_q\ & ( (!\U3|Tstep_Q.T5~q\ & (((\U3|reg_IR|Q[15]~DUPLICATE_q\)) # (\U3|reg_IR|Q\(14)))) # (\U3|Tstep_Q.T5~q\ & (((\U3|reg_IR|Q[13]~DUPLICATE_q\ & \U3|reg_IR|Q[15]~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010000111100110101000011110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q\(14),
	datab => \U3|reg_IR|ALT_INV_Q[13]~DUPLICATE_q\,
	datac => \U3|ALT_INV_Tstep_Q.T5~q\,
	datad => \U3|reg_IR|ALT_INV_Q[15]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_Tstep_Q.T3~DUPLICATE_q\,
	combout => \U3|Tstep_D.T4~0_combout\);

-- Location: FF_X29_Y3_N22
\U3|Tstep_Q.T4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Tstep_D.T4~0_combout\,
	clrn => \KEY[0]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T4~q\);

-- Location: FF_X28_Y5_N26
\U3|Tstep_Q.T5~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Tstep_Q.T4~q\,
	clrn => \KEY[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|Tstep_Q.T5~DUPLICATE_q\);

-- Location: MLABCELL_X28_Y5_N39
\U3|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Selector3~0_combout\ = ( \U3|Selector2~0_combout\ & ( \U3|Selector2~1_combout\ & ( (!\U3|Tstep_Q.T5~DUPLICATE_q\ & !\U3|reg_IR|Q\(10)) ) ) ) # ( !\U3|Selector2~0_combout\ & ( \U3|Selector2~1_combout\ & ( (!\U3|Tstep_Q.T5~DUPLICATE_q\ & 
-- (!\U3|reg_IR|Q\(1))) # (\U3|Tstep_Q.T5~DUPLICATE_q\ & ((\U3|Tstep_Q.T0~q\))) ) ) ) # ( !\U3|Selector2~0_combout\ & ( !\U3|Selector2~1_combout\ & ( \U3|Tstep_Q.T0~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000010001000110111011010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Tstep_Q.T5~DUPLICATE_q\,
	datab => \U3|reg_IR|ALT_INV_Q\(1),
	datac => \U3|reg_IR|ALT_INV_Q\(10),
	datad => \U3|ALT_INV_Tstep_Q.T0~q\,
	datae => \U3|ALT_INV_Selector2~0_combout\,
	dataf => \U3|ALT_INV_Selector2~1_combout\,
	combout => \U3|Selector3~0_combout\);

-- Location: FF_X28_Y5_N34
\U3|reg_3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_3|Q\(0));

-- Location: FF_X31_Y5_N13
\U3|reg_0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_0|Q\(0));

-- Location: FF_X31_Y5_N7
\U3|reg_2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_2|Q\(0));

-- Location: FF_X29_Y5_N20
\U3|reg_1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_1|Q\(0));

-- Location: LABCELL_X29_Y5_N18
\U3|Mux47~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux47~0_combout\ = ( \U3|reg_1|Q\(0) & ( \U3|Selector4~0_combout\ & ( (\U3|reg_3|Q\(0)) # (\U3|Selector3~0_combout\) ) ) ) # ( !\U3|reg_1|Q\(0) & ( \U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & \U3|reg_3|Q\(0)) ) ) ) # ( \U3|reg_1|Q\(0) & 
-- ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|reg_2|Q\(0)))) # (\U3|Selector3~0_combout\ & (\U3|reg_0|Q\(0))) ) ) ) # ( !\U3|reg_1|Q\(0) & ( !\U3|Selector4~0_combout\ & ( (!\U3|Selector3~0_combout\ & ((\U3|reg_2|Q\(0)))) # 
-- (\U3|Selector3~0_combout\ & (\U3|reg_0|Q\(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100100010001000100111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector3~0_combout\,
	datab => \U3|reg_3|ALT_INV_Q\(0),
	datac => \U3|reg_0|ALT_INV_Q\(0),
	datad => \U3|reg_2|ALT_INV_Q\(0),
	datae => \U3|reg_1|ALT_INV_Q\(0),
	dataf => \U3|ALT_INV_Selector4~0_combout\,
	combout => \U3|Mux47~0_combout\);

-- Location: FF_X30_Y5_N11
\U3|reg_6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_6|Q\(0));

-- Location: FF_X30_Y5_N50
\U3|reg_4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_4|Q\(0));

-- Location: LABCELL_X30_Y5_N0
\U3|Mux47~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux47~3_combout\ = ( \U3|Selector1~0_combout\ & ( \U3|Selector3~0_combout\ & ( \U3|reg_IR|Q[0]~DUPLICATE_q\ ) ) ) # ( !\U3|Selector1~0_combout\ & ( \U3|Selector3~0_combout\ & ( \U3|reg_4|Q\(0) ) ) ) # ( \U3|Selector1~0_combout\ & ( 
-- !\U3|Selector3~0_combout\ & ( \U3|reg_IR|Q[0]~DUPLICATE_q\ ) ) ) # ( !\U3|Selector1~0_combout\ & ( !\U3|Selector3~0_combout\ & ( \U3|reg_6|Q\(0) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011010101010101010100001111000011110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_IR|ALT_INV_Q[0]~DUPLICATE_q\,
	datab => \U3|reg_6|ALT_INV_Q\(0),
	datac => \U3|reg_4|ALT_INV_Q\(0),
	datae => \U3|ALT_INV_Selector1~0_combout\,
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux47~3_combout\);

-- Location: FF_X29_Y5_N32
\U3|reg_5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux47~1_combout\,
	sload => VCC,
	ena => \U3|decX|Mux0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_5|Q\(0));

-- Location: LABCELL_X29_Y5_N30
\U3|Mux47~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux47~2_combout\ = ( \U3|Selector3~0_combout\ & ( (\U3|Selector4~0_combout\ & ((!\U3|reg_5|Q\(0)) # (\U3|Selector1~0_combout\))) ) ) # ( !\U3|Selector3~0_combout\ & ( (!\U3|Selector4~0_combout\ & (\U3|Selector1~0_combout\)) # (\U3|Selector4~0_combout\ 
-- & (!\U3|Selector1~0_combout\ & !\U3|Upc|Count\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110001001100010011000100110001001010101000100010101010100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Selector4~0_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|Upc|ALT_INV_Count\(0),
	datad => \U3|reg_5|ALT_INV_Q\(0),
	dataf => \U3|ALT_INV_Selector3~0_combout\,
	combout => \U3|Mux47~2_combout\);

-- Location: LABCELL_X29_Y5_N54
\U3|Mux47~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux47~4_combout\ = ( \U3|Mux47~3_combout\ & ( \U3|Mux47~2_combout\ & ( (!\U3|Selector1~0_combout\ & ((!\U3|Selector2~2_combout\ & (!\U3|Mux47~0_combout\)) # (\U3|Selector2~2_combout\ & ((\U3|Selector4~0_combout\))))) ) ) ) # ( !\U3|Mux47~3_combout\ & 
-- ( \U3|Mux47~2_combout\ & ( (!\U3|Mux47~0_combout\) # ((\U3|Selector2~2_combout\) # (\U3|Selector1~0_combout\)) ) ) ) # ( \U3|Mux47~3_combout\ & ( !\U3|Mux47~2_combout\ & ( (!\U3|Mux47~0_combout\ & (!\U3|Selector1~0_combout\ & !\U3|Selector2~2_combout\)) ) 
-- ) ) # ( !\U3|Mux47~3_combout\ & ( !\U3|Mux47~2_combout\ & ( (!\U3|Selector1~0_combout\ & ((!\U3|Selector2~2_combout\ & (!\U3|Mux47~0_combout\)) # (\U3|Selector2~2_combout\ & ((!\U3|Selector4~0_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000110010000000100000001000000010111111101111111000000010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux47~0_combout\,
	datab => \U3|ALT_INV_Selector1~0_combout\,
	datac => \U3|ALT_INV_Selector2~2_combout\,
	datad => \U3|ALT_INV_Selector4~0_combout\,
	datae => \U3|ALT_INV_Mux47~3_combout\,
	dataf => \U3|ALT_INV_Mux47~2_combout\,
	combout => \U3|Mux47~4_combout\);

-- Location: FF_X28_Y6_N5
\U3|reg_G|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|Add0~1_sumout\,
	ena => \U3|Gin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_G|Q\(0));

-- Location: LABCELL_X29_Y5_N0
\U3|Mux47~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|Mux47~1_combout\ = ( \U3|Selector1~0_combout\ & ( \DIN[0]~0_combout\ & ( (!\U3|Selector4~0_combout\ & (((\U3|reg_G|Q\(0) & !\U3|Mux47~2_combout\)))) # (\U3|Selector4~0_combout\ & (!\U3|Mux47~4_combout\)) ) ) ) # ( !\U3|Selector1~0_combout\ & ( 
-- \DIN[0]~0_combout\ & ( !\U3|Mux47~4_combout\ ) ) ) # ( \U3|Selector1~0_combout\ & ( !\DIN[0]~0_combout\ & ( (!\U3|Selector4~0_combout\ & (((\U3|reg_G|Q\(0) & !\U3|Mux47~2_combout\)))) # (\U3|Selector4~0_combout\ & (!\U3|Mux47~4_combout\ & 
-- ((\U3|Mux47~2_combout\)))) ) ) ) # ( !\U3|Selector1~0_combout\ & ( !\DIN[0]~0_combout\ & ( !\U3|Mux47~4_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010001100000000101010101010101010100011101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_Mux47~4_combout\,
	datab => \U3|reg_G|ALT_INV_Q\(0),
	datac => \U3|ALT_INV_Selector4~0_combout\,
	datad => \U3|ALT_INV_Mux47~2_combout\,
	datae => \U3|ALT_INV_Selector1~0_combout\,
	dataf => \ALT_INV_DIN[0]~0_combout\,
	combout => \U3|Mux47~1_combout\);

-- Location: LABCELL_X33_Y5_N54
\U3|reg_DOUT|Q[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|reg_DOUT|Q[0]~feeder_combout\ = ( \U3|Mux47~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|ALT_INV_Mux47~1_combout\,
	combout => \U3|reg_DOUT|Q[0]~feeder_combout\);

-- Location: FF_X33_Y5_N55
\U3|reg_DOUT|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[0]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(0));

-- Location: LABCELL_X27_Y7_N57
W_LED : cyclonev_lcell_comb
-- Equation(s):
-- \W_LED~combout\ = ( \U3|reg_ADDR|Q[12]~DUPLICATE_q\ & ( !\U3|reg_ADDR|Q\(14) & ( (\U3|reg_W|Q~q\ & (!\U3|reg_ADDR|Q\(13) & !\U3|reg_ADDR|Q\(15))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|reg_W|ALT_INV_Q~q\,
	datab => \U3|reg_ADDR|ALT_INV_Q\(13),
	datac => \U3|reg_ADDR|ALT_INV_Q\(15),
	datae => \U3|reg_ADDR|ALT_INV_Q[12]~DUPLICATE_q\,
	dataf => \U3|reg_ADDR|ALT_INV_Q\(14),
	combout => \W_LED~combout\);

-- Location: FF_X33_Y5_N52
\U5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|reg_DOUT|Q\(0),
	sload => VCC,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(0));

-- Location: LABCELL_X33_Y5_N30
\U5|Q[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Q[1]~feeder_combout\ = ( \U3|reg_DOUT|Q\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|reg_DOUT|ALT_INV_Q\(1),
	combout => \U5|Q[1]~feeder_combout\);

-- Location: FF_X33_Y5_N31
\U5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U5|Q[1]~feeder_combout\,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(1));

-- Location: FF_X30_Y6_N38
\U3|reg_DOUT|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[2]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(2));

-- Location: FF_X30_Y6_N25
\U5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|reg_DOUT|Q\(2),
	sload => VCC,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(2));

-- Location: LABCELL_X33_Y5_N39
\U5|Q[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Q[3]~feeder_combout\ = ( \U3|reg_DOUT|Q\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U3|reg_DOUT|ALT_INV_Q\(3),
	combout => \U5|Q[3]~feeder_combout\);

-- Location: FF_X33_Y5_N40
\U5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U5|Q[3]~feeder_combout\,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(3));

-- Location: FF_X30_Y6_N23
\U3|reg_DOUT|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \U3|reg_DOUT|Q[4]~feeder_combout\,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(4));

-- Location: FF_X30_Y6_N55
\U5|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|reg_DOUT|Q\(4),
	sload => VCC,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(4));

-- Location: FF_X30_Y6_N20
\U3|reg_DOUT|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|Mux42~1_combout\,
	sload => VCC,
	ena => \U3|DOUTin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|reg_DOUT|Q\(5));

-- Location: FF_X30_Y6_N58
\U5|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|reg_DOUT|Q\(5),
	sload => VCC,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(5));

-- Location: FF_X30_Y6_N4
\U5|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|reg_DOUT|Q\(6),
	sload => VCC,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(6));

-- Location: FF_X30_Y6_N43
\U5|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|reg_DOUT|Q\(7),
	sload => VCC,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(7));

-- Location: FF_X27_Y7_N25
\U5|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \U3|reg_DOUT|Q\(8),
	sload => VCC,
	ena => \W_LED~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U5|Q\(8));

-- Location: LABCELL_X29_Y33_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


