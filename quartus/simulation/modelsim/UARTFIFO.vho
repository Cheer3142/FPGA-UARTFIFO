-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/03/2023 09:22:29"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	UARTFIFO IS
    PORT (
	RstB : IN std_logic;
	Button : IN std_logic;
	Clk50 : IN std_logic;
	TxSerData : BUFFER std_logic;
	RxSerData : IN std_logic;
	RESERVED : IN std_logic_vector(1 DOWNTO 0)
	);
END UARTFIFO;

-- Design Ports Information
-- Button	=>  Location: PIN_H22,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default
-- TxSerData	=>  Location: PIN_W18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- RESERVED[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESERVED[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clk50	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RstB	=>  Location: PIN_H21,	 I/O Standard: 1.5 V Schmitt Trigger,	 Current Strength: Default
-- RxSerData	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF UARTFIFO IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RstB : std_logic;
SIGNAL ww_Button : std_logic;
SIGNAL ww_Clk50 : std_logic;
SIGNAL ww_TxSerData : std_logic;
SIGNAL ww_RxSerData : std_logic;
SIGNAL ww_RESERVED : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_PLL50|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_PLL50|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTADATAIN_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTAADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTBADDR_bus\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTBDATAOUT_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \rPLL50RstBCnt[3]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clk50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Button~input_o\ : std_logic;
SIGNAL \RESERVED[0]~input_o\ : std_logic;
SIGNAL \RESERVED[1]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_TDO~~padout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \~ALTERA_TDO~~obuf_o\ : std_logic;
SIGNAL \Clk50~input_o\ : std_logic;
SIGNAL \Clk50~inputclkctrl_outclk\ : std_logic;
SIGNAL \rPLL50RstBCnt[0]~feeder_combout\ : std_logic;
SIGNAL \rPLL50RstBCnt[1]~feeder_combout\ : std_logic;
SIGNAL \rPLL50RstBCnt[2]~feeder_combout\ : std_logic;
SIGNAL \rPLL50RstBCnt[3]~feeder_combout\ : std_logic;
SIGNAL \rPLL50RstBCnt[3]~clkctrl_outclk\ : std_logic;
SIGNAL \u_PLL50|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \RstB~input_o\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \rRstBCnt~23_combout\ : std_logic;
SIGNAL \rRstBCnt[10]~2_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \rRstBCnt~22_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \rRstBCnt~21_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \rRstBCnt~20_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \rRstBCnt~19_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \rRstBCnt~18_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \rRstBCnt~17_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \rRstBCnt~16_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \rRstBCnt~15_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \rRstBCnt~14_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \rRstBCnt~13_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \rRstBCnt~12_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \rRstBCnt~11_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \rRstBCnt~10_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \rRstBCnt~9_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \rRstBCnt~8_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \rRstBCnt~7_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \rRstBCnt~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \rRstBCnt~5_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \rRstBCnt~4_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \rRstBCnt~3_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \rRstBCnt~1_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \rRstBCnt~0_combout\ : std_logic;
SIGNAL \rRstBUser~feeder_combout\ : std_logic;
SIGNAL \rRstBUser~q\ : std_logic;
SIGNAL \u_PLL50|altpll_component|auto_generated|wire_pll1_locked\ : std_logic;
SIGNAL \u_PLL50|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ : std_logic;
SIGNAL \u_PLL50|altpll_component|auto_generated|pll_lock_sync~q\ : std_logic;
SIGNAL \u_PLL50|altpll_component|auto_generated|locked~combout\ : std_logic;
SIGNAL \rPLLLockUser[1]~feeder_combout\ : std_logic;
SIGNAL \rSysRstB~0_combout\ : std_logic;
SIGNAL \rSysRstB~q\ : std_logic;
SIGNAL \u_TxSerial|rDataCnt~0_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[0]~10_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadEn~0_combout\ : std_logic;
SIGNAL \u_TxSerial|Equal0~0_combout\ : std_logic;
SIGNAL \u_TxSerial|Selector2~0_combout\ : std_logic;
SIGNAL \u_TxSerial|rState.StWtData~q\ : std_logic;
SIGNAL \u_TxSerial|Selector3~0_combout\ : std_logic;
SIGNAL \u_TxSerial|Selector3~1_combout\ : std_logic;
SIGNAL \u_TxSerial|rState.StWtEnd~q\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[0]~12_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[0]~11\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[1]~13_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[1]~14\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[2]~15_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[2]~16\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[3]~17_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[3]~18\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[4]~19_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[4]~20\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[5]~21_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[5]~22\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[6]~23_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[6]~24\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[7]~25_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[7]~26\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[8]~27_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[8]~28\ : std_logic;
SIGNAL \u_TxSerial|rBuadCnt[9]~29_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadEn~1_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadEn~2_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadEn~3_combout\ : std_logic;
SIGNAL \u_TxSerial|rBuadEn~q\ : std_logic;
SIGNAL \u_TxSerial|rSerData[7]~5_combout\ : std_logic;
SIGNAL \u_TxSerial|rDataCnt~3_combout\ : std_logic;
SIGNAL \u_TxSerial|Add1~1_combout\ : std_logic;
SIGNAL \u_TxSerial|rDataCnt~2_combout\ : std_logic;
SIGNAL \u_TxSerial|Add1~0_combout\ : std_logic;
SIGNAL \u_TxSerial|rDataCnt~1_combout\ : std_logic;
SIGNAL \u_TxSerial|u_rState~0_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ : std_logic;
SIGNAL \RxSerData~input_o\ : std_logic;
SIGNAL \u_RxSerial|rSerDataIn~feeder_combout\ : std_logic;
SIGNAL \u_RxSerial|rSerDataIn~q\ : std_logic;
SIGNAL \u_RxSerial|rDataCnt~3_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[0]~10_combout\ : std_logic;
SIGNAL \u_RxSerial|rState~8_combout\ : std_logic;
SIGNAL \u_RxSerial|rState~9_combout\ : std_logic;
SIGNAL \u_RxSerial|rState.StIdle~q\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[4]~20\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[5]~21_combout\ : std_logic;
SIGNAL \u_RxSerial|Equal0~0_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[5]~22\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[6]~23_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[6]~24\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[7]~25_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[7]~26\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[8]~27_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[8]~28\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[9]~29_combout\ : std_logic;
SIGNAL \u_RxSerial|Equal1~0_combout\ : std_logic;
SIGNAL \u_RxSerial|Equal0~1_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[7]~16_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[0]~11\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[1]~12_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[1]~13\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[2]~14_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[2]~15\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[3]~17_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[3]~18\ : std_logic;
SIGNAL \u_RxSerial|rBuadCnt[4]~19_combout\ : std_logic;
SIGNAL \u_RxSerial|Equal1~1_combout\ : std_logic;
SIGNAL \u_RxSerial|Equal1~2_combout\ : std_logic;
SIGNAL \u_RxSerial|rBuadEn~q\ : std_logic;
SIGNAL \u_RxSerial|rDataCnt[3]~1_combout\ : std_logic;
SIGNAL \u_RxSerial|rDataCnt~2_combout\ : std_logic;
SIGNAL \u_RxSerial|Add1~0_combout\ : std_logic;
SIGNAL \u_RxSerial|rDataCnt~0_combout\ : std_logic;
SIGNAL \u_RxSerial|Add1~1_combout\ : std_logic;
SIGNAL \u_RxSerial|rDataCnt~4_combout\ : std_logic;
SIGNAL \u_RxSerial|Equal2~0_combout\ : std_logic;
SIGNAL \u_RxSerial|Selector1~0_combout\ : std_logic;
SIGNAL \u_RxSerial|rState.StRdEnd~q\ : std_logic;
SIGNAL \u_RxSerial|Selector2~0_combout\ : std_logic;
SIGNAL \u_RxSerial|rState.StChkFull~q\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrEn~0_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrEn~q\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita11~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~3_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~4_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ : std_logic;
SIGNAL \u_TxSerial|rState~11_combout\ : std_logic;
SIGNAL \u_TxSerial|rState~12_combout\ : std_logic;
SIGNAL \u_TxSerial|rState.StIdle~q\ : std_logic;
SIGNAL \u_TxSerial|rState~10_combout\ : std_logic;
SIGNAL \u_TxSerial|rState.StRdReq~q\ : std_logic;
SIGNAL \u_TxSerial|rTxFfRdEn~1_combout\ : std_logic;
SIGNAL \u_TxSerial|rTxFfRdEn~0_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~8_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData[7]~1_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~7_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~6_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~5_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~4_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~3_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~2_combout\ : std_logic;
SIGNAL \u_RxSerial|rRxFfWrData~0_combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita11~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~combout\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~COUT\ : std_logic;
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita11~combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData[8]~10_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData[8]~11_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~9_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData[7]~2_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~8_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~7_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~6_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~4_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~3_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~1_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData~0_combout\ : std_logic;
SIGNAL \u_TxSerial|rSerData\ : std_logic_vector(9 DOWNTO 0);
SIGNAL rPLLLockUser : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_PLL50|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \u_TxSerial|rTxFfRdEn\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL rRstBCnt : std_logic_vector(22 DOWNTO 0);
SIGNAL \u_TxSerial|rBuadCnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \u_RxSerial|rBuadCnt\ : std_logic_vector(9 DOWNTO 0);
SIGNAL rPLL50RstBCnt : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_RxSerial|rRxFfWrData\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_TxSerial|rDataCnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \u_RxSerial|rDataCnt\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_rPLL50RstBCnt[3]~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_RstB~input_o\ : std_logic;
SIGNAL \ALT_INV_rSysRstB~q\ : std_logic;

BEGIN

ww_RstB <= RstB;
ww_Button <= Button;
ww_Clk50 <= Clk50;
TxSerData <= ww_TxSerData;
ww_RxSerData <= RxSerData;
ww_RESERVED <= RESERVED;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_PLL50|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \Clk50~input_o\);

\u_PLL50|altpll_component|auto_generated|wire_pll1_clk\(0) <= \u_PLL50|altpll_component|auto_generated|pll1_CLK_bus\(0);
\u_PLL50|altpll_component|auto_generated|wire_pll1_clk\(1) <= \u_PLL50|altpll_component|auto_generated|pll1_CLK_bus\(1);
\u_PLL50|altpll_component|auto_generated|wire_pll1_clk\(2) <= \u_PLL50|altpll_component|auto_generated|pll1_CLK_bus\(2);
\u_PLL50|altpll_component|auto_generated|wire_pll1_clk\(3) <= \u_PLL50|altpll_component|auto_generated|pll1_CLK_bus\(3);
\u_PLL50|altpll_component|auto_generated|wire_pll1_clk\(4) <= \u_PLL50|altpll_component|auto_generated|pll1_CLK_bus\(4);

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\ <= (\u_RxSerial|rRxFfWrData\(1) & \u_RxSerial|rRxFfWrData\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(11) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(11) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(0);
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\(1);

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTADATAIN_bus\ <= (\u_RxSerial|rRxFfWrData\(3) & \u_RxSerial|rRxFfWrData\(2));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTAADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(11) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTBADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(11) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTBDATAOUT_bus\(0);
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTBDATAOUT_bus\(1);

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTADATAIN_bus\ <= (\u_RxSerial|rRxFfWrData\(5) & \u_RxSerial|rRxFfWrData\(4));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTAADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(11) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTBADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(11) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTBDATAOUT_bus\(0);
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTBDATAOUT_bus\(1);

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTADATAIN_bus\ <= (\u_RxSerial|rRxFfWrData\(7) & \u_RxSerial|rRxFfWrData\(6));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTAADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(11) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTBADDR_bus\ <= (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(11) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & 
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTBDATAOUT_bus\(0);
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7) <= \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTBDATAOUT_bus\(1);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\rPLL50RstBCnt[3]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & rPLL50RstBCnt(3));

\Clk50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clk50~input_o\);

\u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \u_PLL50|altpll_component|auto_generated|wire_pll1_clk\(0));
\ALT_INV_rPLL50RstBCnt[3]~clkctrl_outclk\ <= NOT \rPLL50RstBCnt[3]~clkctrl_outclk\;
\ALT_INV_RstB~input_o\ <= NOT \RstB~input_o\;
\ALT_INV_rSysRstB~q\ <= NOT \rSysRstB~q\;

-- Location: IOOBUF_X62_Y0_N9
\TxSerData~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \u_TxSerial|rSerData\(0),
	devoe => ww_devoe,
	o => ww_TxSerData);

-- Location: IOIBUF_X0_Y18_N15
\Clk50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk50,
	o => \Clk50~input_o\);

-- Location: CLKCTRL_G3
\Clk50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clk50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clk50~inputclkctrl_outclk\);

-- Location: LCCOMB_X77_Y38_N6
\rPLL50RstBCnt[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rPLL50RstBCnt[0]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \rPLL50RstBCnt[0]~feeder_combout\);

-- Location: FF_X77_Y38_N7
\rPLL50RstBCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rPLL50RstBCnt[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rPLL50RstBCnt(0));

-- Location: LCCOMB_X77_Y38_N12
\rPLL50RstBCnt[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rPLL50RstBCnt[1]~feeder_combout\ = rPLL50RstBCnt(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rPLL50RstBCnt(0),
	combout => \rPLL50RstBCnt[1]~feeder_combout\);

-- Location: FF_X77_Y38_N13
\rPLL50RstBCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rPLL50RstBCnt[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rPLL50RstBCnt(1));

-- Location: LCCOMB_X77_Y38_N10
\rPLL50RstBCnt[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rPLL50RstBCnt[2]~feeder_combout\ = rPLL50RstBCnt(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rPLL50RstBCnt(1),
	combout => \rPLL50RstBCnt[2]~feeder_combout\);

-- Location: FF_X77_Y38_N11
\rPLL50RstBCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rPLL50RstBCnt[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rPLL50RstBCnt(2));

-- Location: LCCOMB_X77_Y38_N16
\rPLL50RstBCnt[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rPLL50RstBCnt[3]~feeder_combout\ = rPLL50RstBCnt(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rPLL50RstBCnt(2),
	combout => \rPLL50RstBCnt[3]~feeder_combout\);

-- Location: FF_X77_Y38_N17
\rPLL50RstBCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rPLL50RstBCnt[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rPLL50RstBCnt(3));

-- Location: CLKCTRL_G5
\rPLL50RstBCnt[3]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rPLL50RstBCnt[3]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rPLL50RstBCnt[3]~clkctrl_outclk\);

-- Location: PLL_1
\u_PLL50|altpll_component|auto_generated|pll1\ : fiftyfivenm_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 3,
	c0_initial => 1,
	c0_low => 3,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 1,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 2,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	self_reset_on_loss_lock => "off",
	simulation_type => "functional",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => \ALT_INV_rPLL50RstBCnt[3]~clkctrl_outclk\,
	fbin => \u_PLL50|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \u_PLL50|altpll_component|auto_generated|pll1_INCLK_bus\,
	locked => \u_PLL50|altpll_component|auto_generated|wire_pll1_locked\,
	fbout => \u_PLL50|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \u_PLL50|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G18
\u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: IOIBUF_X78_Y29_N1
\RstB~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RstB,
	o => \RstB~input_o\);

-- Location: LCCOMB_X74_Y32_N10
\Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = rRstBCnt(0) $ (VCC)
-- \Add0~1\ = CARRY(rRstBCnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X75_Y32_N0
\rRstBCnt~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~23_combout\ = (\RstB~input_o\ & \Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RstB~input_o\,
	datad => \Add0~0_combout\,
	combout => \rRstBCnt~23_combout\);

-- Location: LCCOMB_X75_Y31_N26
\rRstBCnt[10]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt[10]~2_combout\ = (!\RstB~input_o\) # (!rRstBCnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(22),
	datad => \RstB~input_o\,
	combout => \rRstBCnt[10]~2_combout\);

-- Location: FF_X75_Y32_N1
\rRstBCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~23_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(0));

-- Location: LCCOMB_X74_Y32_N12
\Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (rRstBCnt(1) & (!\Add0~1\)) # (!rRstBCnt(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!rRstBCnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X74_Y32_N8
\rRstBCnt~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~22_combout\ = (\Add0~2_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~22_combout\);

-- Location: FF_X74_Y32_N9
\rRstBCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~22_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(1));

-- Location: LCCOMB_X74_Y32_N14
\Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (rRstBCnt(2) & (\Add0~3\ $ (GND))) # (!rRstBCnt(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((rRstBCnt(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X75_Y32_N6
\rRstBCnt~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~21_combout\ = (\RstB~input_o\ & \Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RstB~input_o\,
	datad => \Add0~4_combout\,
	combout => \rRstBCnt~21_combout\);

-- Location: FF_X75_Y32_N7
\rRstBCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~21_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(2));

-- Location: LCCOMB_X74_Y32_N16
\Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (rRstBCnt(3) & (!\Add0~5\)) # (!rRstBCnt(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!rRstBCnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X74_Y32_N6
\rRstBCnt~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~20_combout\ = (\Add0~6_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~6_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~20_combout\);

-- Location: FF_X74_Y32_N7
\rRstBCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~20_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(3));

-- Location: LCCOMB_X74_Y32_N18
\Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (rRstBCnt(4) & (\Add0~7\ $ (GND))) # (!rRstBCnt(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((rRstBCnt(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X74_Y31_N28
\rRstBCnt~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~19_combout\ = (\Add0~8_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~8_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~19_combout\);

-- Location: FF_X74_Y31_N29
\rRstBCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~19_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(4));

-- Location: LCCOMB_X74_Y32_N20
\Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (rRstBCnt(5) & (!\Add0~9\)) # (!rRstBCnt(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!rRstBCnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X75_Y32_N20
\rRstBCnt~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~18_combout\ = (\RstB~input_o\ & \Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RstB~input_o\,
	datad => \Add0~10_combout\,
	combout => \rRstBCnt~18_combout\);

-- Location: FF_X75_Y32_N21
\rRstBCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~18_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(5));

-- Location: LCCOMB_X74_Y32_N22
\Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (rRstBCnt(6) & (\Add0~11\ $ (GND))) # (!rRstBCnt(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((rRstBCnt(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X75_Y32_N2
\rRstBCnt~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~17_combout\ = (\RstB~input_o\ & \Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RstB~input_o\,
	datad => \Add0~12_combout\,
	combout => \rRstBCnt~17_combout\);

-- Location: FF_X75_Y32_N3
\rRstBCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~17_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(6));

-- Location: LCCOMB_X74_Y32_N24
\Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (rRstBCnt(7) & (!\Add0~13\)) # (!rRstBCnt(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!rRstBCnt(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X74_Y32_N4
\rRstBCnt~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~16_combout\ = (\Add0~14_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~16_combout\);

-- Location: FF_X74_Y32_N5
\rRstBCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~16_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(7));

-- Location: LCCOMB_X74_Y32_N26
\Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (rRstBCnt(8) & (\Add0~15\ $ (GND))) # (!rRstBCnt(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((rRstBCnt(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X74_Y32_N2
\rRstBCnt~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~15_combout\ = (\Add0~16_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~16_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~15_combout\);

-- Location: FF_X74_Y32_N3
\rRstBCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~15_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(8));

-- Location: LCCOMB_X74_Y32_N28
\Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (rRstBCnt(9) & (!\Add0~17\)) # (!rRstBCnt(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!rRstBCnt(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X75_Y32_N24
\rRstBCnt~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~14_combout\ = (\RstB~input_o\ & \Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RstB~input_o\,
	datad => \Add0~18_combout\,
	combout => \rRstBCnt~14_combout\);

-- Location: FF_X75_Y32_N25
\rRstBCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~14_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(9));

-- Location: LCCOMB_X74_Y32_N30
\Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (rRstBCnt(10) & (\Add0~19\ $ (GND))) # (!rRstBCnt(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((rRstBCnt(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: LCCOMB_X74_Y32_N0
\rRstBCnt~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~13_combout\ = (\Add0~20_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~20_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~13_combout\);

-- Location: FF_X74_Y32_N1
\rRstBCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~13_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(10));

-- Location: LCCOMB_X74_Y31_N0
\Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (rRstBCnt(11) & (!\Add0~21\)) # (!rRstBCnt(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!rRstBCnt(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: LCCOMB_X75_Y31_N0
\rRstBCnt~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~12_combout\ = (\Add0~22_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~22_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~12_combout\);

-- Location: FF_X75_Y31_N1
\rRstBCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~12_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(11));

-- Location: LCCOMB_X74_Y31_N2
\Add0~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (rRstBCnt(12) & (\Add0~23\ $ (GND))) # (!rRstBCnt(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((rRstBCnt(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X75_Y31_N6
\rRstBCnt~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~11_combout\ = (\Add0~24_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~24_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~11_combout\);

-- Location: FF_X75_Y31_N7
\rRstBCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~11_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(12));

-- Location: LCCOMB_X74_Y31_N4
\Add0~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (rRstBCnt(13) & (!\Add0~25\)) # (!rRstBCnt(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!rRstBCnt(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X75_Y31_N20
\rRstBCnt~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~10_combout\ = (\Add0~26_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~10_combout\);

-- Location: FF_X75_Y31_N21
\rRstBCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~10_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(13));

-- Location: LCCOMB_X74_Y31_N6
\Add0~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (rRstBCnt(14) & (\Add0~27\ $ (GND))) # (!rRstBCnt(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((rRstBCnt(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X74_Y31_N26
\rRstBCnt~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~9_combout\ = (\Add0~28_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~9_combout\);

-- Location: FF_X74_Y31_N27
\rRstBCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~9_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(14));

-- Location: LCCOMB_X74_Y31_N8
\Add0~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (rRstBCnt(15) & (!\Add0~29\)) # (!rRstBCnt(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!rRstBCnt(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X75_Y31_N2
\rRstBCnt~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~8_combout\ = (\Add0~30_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~8_combout\);

-- Location: FF_X75_Y31_N3
\rRstBCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~8_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(15));

-- Location: LCCOMB_X74_Y31_N10
\Add0~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (rRstBCnt(16) & (\Add0~31\ $ (GND))) # (!rRstBCnt(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((rRstBCnt(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: LCCOMB_X75_Y31_N8
\rRstBCnt~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~7_combout\ = (\Add0~32_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~7_combout\);

-- Location: FF_X75_Y31_N9
\rRstBCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~7_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(16));

-- Location: LCCOMB_X74_Y31_N12
\Add0~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (rRstBCnt(17) & (!\Add0~33\)) # (!rRstBCnt(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!rRstBCnt(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X74_Y31_N24
\rRstBCnt~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~6_combout\ = (\Add0~34_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~6_combout\);

-- Location: FF_X74_Y31_N25
\rRstBCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~6_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(17));

-- Location: LCCOMB_X74_Y31_N14
\Add0~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (rRstBCnt(18) & (\Add0~35\ $ (GND))) # (!rRstBCnt(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((rRstBCnt(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X75_Y31_N22
\rRstBCnt~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~5_combout\ = (\Add0~36_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~36_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~5_combout\);

-- Location: FF_X75_Y31_N23
\rRstBCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~5_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(18));

-- Location: LCCOMB_X74_Y31_N16
\Add0~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (rRstBCnt(19) & (!\Add0~37\)) # (!rRstBCnt(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!rRstBCnt(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X75_Y31_N12
\rRstBCnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~4_combout\ = (\Add0~38_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~4_combout\);

-- Location: FF_X75_Y31_N13
\rRstBCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~4_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(19));

-- Location: LCCOMB_X74_Y31_N18
\Add0~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (rRstBCnt(20) & (\Add0~39\ $ (GND))) # (!rRstBCnt(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((rRstBCnt(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => rRstBCnt(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X75_Y31_N10
\rRstBCnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~3_combout\ = (\Add0~40_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~40_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~3_combout\);

-- Location: FF_X75_Y31_N11
\rRstBCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~3_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(20));

-- Location: LCCOMB_X74_Y31_N20
\Add0~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (rRstBCnt(21) & (!\Add0~41\)) # (!rRstBCnt(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!rRstBCnt(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => rRstBCnt(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X75_Y31_N24
\rRstBCnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~1_combout\ = (\Add0~42_combout\ & \RstB~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~42_combout\,
	datad => \RstB~input_o\,
	combout => \rRstBCnt~1_combout\);

-- Location: FF_X75_Y31_N25
\rRstBCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	d => \rRstBCnt~1_combout\,
	ena => \rRstBCnt[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(21));

-- Location: LCCOMB_X74_Y31_N22
\Add0~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \Add0~43\ $ (!rRstBCnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => rRstBCnt(22),
	cin => \Add0~43\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X74_Y31_N30
\rRstBCnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBCnt~0_combout\ = (\Add0~44_combout\) # (rRstBCnt(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datad => rRstBCnt(22),
	combout => \rRstBCnt~0_combout\);

-- Location: FF_X74_Y31_N23
\rRstBCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk50~inputclkctrl_outclk\,
	asdata => \rRstBCnt~0_combout\,
	sclr => \ALT_INV_RstB~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rRstBCnt(22));

-- Location: LCCOMB_X57_Y29_N12
\rRstBUser~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rRstBUser~feeder_combout\ = rRstBCnt(22)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rRstBCnt(22),
	combout => \rRstBUser~feeder_combout\);

-- Location: FF_X57_Y29_N13
rRstBUser : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rRstBUser~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rRstBUser~q\);

-- Location: LCCOMB_X57_Y29_N24
\u_PLL50|altpll_component|auto_generated|pll_lock_sync~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_PLL50|altpll_component|auto_generated|pll_lock_sync~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_PLL50|altpll_component|auto_generated|pll_lock_sync~feeder_combout\);

-- Location: FF_X57_Y29_N25
\u_PLL50|altpll_component|auto_generated|pll_lock_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_locked\,
	d => \u_PLL50|altpll_component|auto_generated|pll_lock_sync~feeder_combout\,
	clrn => \rPLL50RstBCnt[3]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_PLL50|altpll_component|auto_generated|pll_lock_sync~q\);

-- Location: LCCOMB_X57_Y29_N6
\u_PLL50|altpll_component|auto_generated|locked\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_PLL50|altpll_component|auto_generated|locked~combout\ = (\u_PLL50|altpll_component|auto_generated|wire_pll1_locked\ & \u_PLL50|altpll_component|auto_generated|pll_lock_sync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_PLL50|altpll_component|auto_generated|wire_pll1_locked\,
	datad => \u_PLL50|altpll_component|auto_generated|pll_lock_sync~q\,
	combout => \u_PLL50|altpll_component|auto_generated|locked~combout\);

-- Location: FF_X57_Y29_N7
\rPLLLockUser[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_PLL50|altpll_component|auto_generated|locked~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rPLLLockUser(0));

-- Location: LCCOMB_X57_Y29_N10
\rPLLLockUser[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rPLLLockUser[1]~feeder_combout\ = rPLLLockUser(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => rPLLLockUser(0),
	combout => \rPLLLockUser[1]~feeder_combout\);

-- Location: FF_X57_Y29_N11
\rPLLLockUser[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rPLLLockUser[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => rPLLLockUser(1));

-- Location: LCCOMB_X57_Y29_N8
\rSysRstB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rSysRstB~0_combout\ = (\rRstBUser~q\ & rPLLLockUser(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rRstBUser~q\,
	datad => rPLLLockUser(1),
	combout => \rSysRstB~0_combout\);

-- Location: FF_X57_Y29_N9
rSysRstB : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \rSysRstB~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rSysRstB~q\);

-- Location: LCCOMB_X55_Y31_N20
\u_TxSerial|rDataCnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rDataCnt~0_combout\ = (!\u_TxSerial|rDataCnt\(0) & \rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_TxSerial|rDataCnt\(0),
	datad => \rSysRstB~q\,
	combout => \u_TxSerial|rDataCnt~0_combout\);

-- Location: LCCOMB_X52_Y31_N12
\u_TxSerial|rBuadCnt[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[0]~10_combout\ = \u_TxSerial|rBuadCnt\(0) $ (VCC)
-- \u_TxSerial|rBuadCnt[0]~11\ = CARRY(\u_TxSerial|rBuadCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadCnt\(0),
	datad => VCC,
	combout => \u_TxSerial|rBuadCnt[0]~10_combout\,
	cout => \u_TxSerial|rBuadCnt[0]~11\);

-- Location: LCCOMB_X52_Y31_N2
\~GND\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X52_Y31_N0
\u_TxSerial|rBuadEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadEn~0_combout\ = (!\u_TxSerial|rBuadCnt\(3) & (!\u_TxSerial|rBuadCnt\(4) & (!\u_TxSerial|rBuadCnt\(5) & !\u_TxSerial|rBuadCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadCnt\(3),
	datab => \u_TxSerial|rBuadCnt\(4),
	datac => \u_TxSerial|rBuadCnt\(5),
	datad => \u_TxSerial|rBuadCnt\(2),
	combout => \u_TxSerial|rBuadEn~0_combout\);

-- Location: LCCOMB_X52_Y31_N6
\u_TxSerial|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|Equal0~0_combout\ = (((\u_TxSerial|rBuadCnt\(1)) # (!\u_TxSerial|rBuadCnt\(0))) # (!\u_TxSerial|rBuadEn~0_combout\)) # (!\u_TxSerial|rBuadEn~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadEn~1_combout\,
	datab => \u_TxSerial|rBuadEn~0_combout\,
	datac => \u_TxSerial|rBuadCnt\(1),
	datad => \u_TxSerial|rBuadCnt\(0),
	combout => \u_TxSerial|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y31_N30
\u_TxSerial|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|Selector2~0_combout\ = (\u_TxSerial|rState.StRdReq~q\) # ((\u_TxSerial|rState.StWtData~q\ & !\u_TxSerial|rTxFfRdEn\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rState.StRdReq~q\,
	datac => \u_TxSerial|rState.StWtData~q\,
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|Selector2~0_combout\);

-- Location: FF_X55_Y31_N31
\u_TxSerial|rState.StWtData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|Selector2~0_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rState.StWtData~q\);

-- Location: LCCOMB_X55_Y31_N10
\u_TxSerial|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|Selector3~0_combout\ = (\u_TxSerial|rState.StWtData~q\ & \u_TxSerial|rTxFfRdEn\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_TxSerial|rState.StWtData~q\,
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|Selector3~0_combout\);

-- Location: LCCOMB_X55_Y31_N28
\u_TxSerial|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|Selector3~1_combout\ = (\u_TxSerial|Selector3~0_combout\) # ((\u_TxSerial|rState.StWtEnd~q\ & ((!\u_TxSerial|rBuadEn~q\) # (!\u_TxSerial|u_rState~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|Selector3~0_combout\,
	datab => \u_TxSerial|u_rState~0_combout\,
	datac => \u_TxSerial|rState.StWtEnd~q\,
	datad => \u_TxSerial|rBuadEn~q\,
	combout => \u_TxSerial|Selector3~1_combout\);

-- Location: FF_X55_Y31_N29
\u_TxSerial|rState.StWtEnd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|Selector3~1_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rState.StWtEnd~q\);

-- Location: LCCOMB_X52_Y31_N8
\u_TxSerial|rBuadCnt[0]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[0]~12_combout\ = ((!\u_TxSerial|rState.StWtEnd~q\) # (!\rSysRstB~q\)) # (!\u_TxSerial|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|Equal0~0_combout\,
	datab => \rSysRstB~q\,
	datac => \u_TxSerial|rState.StWtEnd~q\,
	combout => \u_TxSerial|rBuadCnt[0]~12_combout\);

-- Location: FF_X52_Y31_N13
\u_TxSerial|rBuadCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(0));

-- Location: LCCOMB_X52_Y31_N14
\u_TxSerial|rBuadCnt[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[1]~13_combout\ = (\u_TxSerial|rBuadCnt\(1) & (\u_TxSerial|rBuadCnt[0]~11\ & VCC)) # (!\u_TxSerial|rBuadCnt\(1) & (!\u_TxSerial|rBuadCnt[0]~11\))
-- \u_TxSerial|rBuadCnt[1]~14\ = CARRY((!\u_TxSerial|rBuadCnt\(1) & !\u_TxSerial|rBuadCnt[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadCnt\(1),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[0]~11\,
	combout => \u_TxSerial|rBuadCnt[1]~13_combout\,
	cout => \u_TxSerial|rBuadCnt[1]~14\);

-- Location: FF_X52_Y31_N15
\u_TxSerial|rBuadCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[1]~13_combout\,
	asdata => \~GND~combout\,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(1));

-- Location: LCCOMB_X52_Y31_N16
\u_TxSerial|rBuadCnt[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[2]~15_combout\ = (\u_TxSerial|rBuadCnt\(2) & ((GND) # (!\u_TxSerial|rBuadCnt[1]~14\))) # (!\u_TxSerial|rBuadCnt\(2) & (\u_TxSerial|rBuadCnt[1]~14\ $ (GND)))
-- \u_TxSerial|rBuadCnt[2]~16\ = CARRY((\u_TxSerial|rBuadCnt\(2)) # (!\u_TxSerial|rBuadCnt[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadCnt\(2),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[1]~14\,
	combout => \u_TxSerial|rBuadCnt[2]~15_combout\,
	cout => \u_TxSerial|rBuadCnt[2]~16\);

-- Location: FF_X52_Y31_N17
\u_TxSerial|rBuadCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[2]~15_combout\,
	asdata => VCC,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(2));

-- Location: LCCOMB_X52_Y31_N18
\u_TxSerial|rBuadCnt[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[3]~17_combout\ = (\u_TxSerial|rBuadCnt\(3) & (\u_TxSerial|rBuadCnt[2]~16\ & VCC)) # (!\u_TxSerial|rBuadCnt\(3) & (!\u_TxSerial|rBuadCnt[2]~16\))
-- \u_TxSerial|rBuadCnt[3]~18\ = CARRY((!\u_TxSerial|rBuadCnt\(3) & !\u_TxSerial|rBuadCnt[2]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadCnt\(3),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[2]~16\,
	combout => \u_TxSerial|rBuadCnt[3]~17_combout\,
	cout => \u_TxSerial|rBuadCnt[3]~18\);

-- Location: FF_X52_Y31_N19
\u_TxSerial|rBuadCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(3));

-- Location: LCCOMB_X52_Y31_N20
\u_TxSerial|rBuadCnt[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[4]~19_combout\ = (\u_TxSerial|rBuadCnt\(4) & ((GND) # (!\u_TxSerial|rBuadCnt[3]~18\))) # (!\u_TxSerial|rBuadCnt\(4) & (\u_TxSerial|rBuadCnt[3]~18\ $ (GND)))
-- \u_TxSerial|rBuadCnt[4]~20\ = CARRY((\u_TxSerial|rBuadCnt\(4)) # (!\u_TxSerial|rBuadCnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadCnt\(4),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[3]~18\,
	combout => \u_TxSerial|rBuadCnt[4]~19_combout\,
	cout => \u_TxSerial|rBuadCnt[4]~20\);

-- Location: FF_X52_Y31_N21
\u_TxSerial|rBuadCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[4]~19_combout\,
	asdata => \~GND~combout\,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(4));

-- Location: LCCOMB_X52_Y31_N22
\u_TxSerial|rBuadCnt[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[5]~21_combout\ = (\u_TxSerial|rBuadCnt\(5) & (\u_TxSerial|rBuadCnt[4]~20\ & VCC)) # (!\u_TxSerial|rBuadCnt\(5) & (!\u_TxSerial|rBuadCnt[4]~20\))
-- \u_TxSerial|rBuadCnt[5]~22\ = CARRY((!\u_TxSerial|rBuadCnt\(5) & !\u_TxSerial|rBuadCnt[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadCnt\(5),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[4]~20\,
	combout => \u_TxSerial|rBuadCnt[5]~21_combout\,
	cout => \u_TxSerial|rBuadCnt[5]~22\);

-- Location: FF_X52_Y31_N23
\u_TxSerial|rBuadCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[5]~21_combout\,
	asdata => VCC,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(5));

-- Location: LCCOMB_X52_Y31_N24
\u_TxSerial|rBuadCnt[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[6]~23_combout\ = (\u_TxSerial|rBuadCnt\(6) & ((GND) # (!\u_TxSerial|rBuadCnt[5]~22\))) # (!\u_TxSerial|rBuadCnt\(6) & (\u_TxSerial|rBuadCnt[5]~22\ $ (GND)))
-- \u_TxSerial|rBuadCnt[6]~24\ = CARRY((\u_TxSerial|rBuadCnt\(6)) # (!\u_TxSerial|rBuadCnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadCnt\(6),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[5]~22\,
	combout => \u_TxSerial|rBuadCnt[6]~23_combout\,
	cout => \u_TxSerial|rBuadCnt[6]~24\);

-- Location: FF_X52_Y31_N25
\u_TxSerial|rBuadCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[6]~23_combout\,
	asdata => VCC,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(6));

-- Location: LCCOMB_X52_Y31_N26
\u_TxSerial|rBuadCnt[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[7]~25_combout\ = (\u_TxSerial|rBuadCnt\(7) & (\u_TxSerial|rBuadCnt[6]~24\ & VCC)) # (!\u_TxSerial|rBuadCnt\(7) & (!\u_TxSerial|rBuadCnt[6]~24\))
-- \u_TxSerial|rBuadCnt[7]~26\ = CARRY((!\u_TxSerial|rBuadCnt\(7) & !\u_TxSerial|rBuadCnt[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadCnt\(7),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[6]~24\,
	combout => \u_TxSerial|rBuadCnt[7]~25_combout\,
	cout => \u_TxSerial|rBuadCnt[7]~26\);

-- Location: FF_X52_Y31_N27
\u_TxSerial|rBuadCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[7]~25_combout\,
	asdata => \~GND~combout\,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(7));

-- Location: LCCOMB_X52_Y31_N28
\u_TxSerial|rBuadCnt[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[8]~27_combout\ = (\u_TxSerial|rBuadCnt\(8) & ((GND) # (!\u_TxSerial|rBuadCnt[7]~26\))) # (!\u_TxSerial|rBuadCnt\(8) & (\u_TxSerial|rBuadCnt[7]~26\ $ (GND)))
-- \u_TxSerial|rBuadCnt[8]~28\ = CARRY((\u_TxSerial|rBuadCnt\(8)) # (!\u_TxSerial|rBuadCnt[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadCnt\(8),
	datad => VCC,
	cin => \u_TxSerial|rBuadCnt[7]~26\,
	combout => \u_TxSerial|rBuadCnt[8]~27_combout\,
	cout => \u_TxSerial|rBuadCnt[8]~28\);

-- Location: FF_X52_Y31_N29
\u_TxSerial|rBuadCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[8]~27_combout\,
	asdata => VCC,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(8));

-- Location: LCCOMB_X52_Y31_N30
\u_TxSerial|rBuadCnt[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadCnt[9]~29_combout\ = \u_TxSerial|rBuadCnt\(9) $ (!\u_TxSerial|rBuadCnt[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadCnt\(9),
	cin => \u_TxSerial|rBuadCnt[8]~28\,
	combout => \u_TxSerial|rBuadCnt[9]~29_combout\);

-- Location: FF_X52_Y31_N31
\u_TxSerial|rBuadCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadCnt[9]~29_combout\,
	asdata => VCC,
	sload => \u_TxSerial|rBuadCnt[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadCnt\(9));

-- Location: LCCOMB_X52_Y31_N10
\u_TxSerial|rBuadEn~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadEn~1_combout\ = (!\u_TxSerial|rBuadCnt\(7) & (!\u_TxSerial|rBuadCnt\(8) & (!\u_TxSerial|rBuadCnt\(9) & !\u_TxSerial|rBuadCnt\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadCnt\(7),
	datab => \u_TxSerial|rBuadCnt\(8),
	datac => \u_TxSerial|rBuadCnt\(9),
	datad => \u_TxSerial|rBuadCnt\(6),
	combout => \u_TxSerial|rBuadEn~1_combout\);

-- Location: LCCOMB_X52_Y31_N4
\u_TxSerial|rBuadEn~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadEn~2_combout\ = (\u_TxSerial|rBuadEn~1_combout\ & (\u_TxSerial|rBuadCnt\(1) & \u_TxSerial|rBuadEn~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadEn~1_combout\,
	datac => \u_TxSerial|rBuadCnt\(1),
	datad => \u_TxSerial|rBuadEn~0_combout\,
	combout => \u_TxSerial|rBuadEn~2_combout\);

-- Location: LCCOMB_X55_Y31_N24
\u_TxSerial|rBuadEn~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rBuadEn~3_combout\ = (\u_TxSerial|rState.StWtEnd~q\ & (\u_TxSerial|rBuadEn~2_combout\ & (!\u_TxSerial|rBuadCnt\(0)))) # (!\u_TxSerial|rState.StWtEnd~q\ & (((\u_TxSerial|rBuadEn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rBuadEn~2_combout\,
	datab => \u_TxSerial|rBuadCnt\(0),
	datac => \u_TxSerial|rBuadEn~q\,
	datad => \u_TxSerial|rState.StWtEnd~q\,
	combout => \u_TxSerial|rBuadEn~3_combout\);

-- Location: FF_X55_Y31_N25
\u_TxSerial|rBuadEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rBuadEn~3_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rBuadEn~q\);

-- Location: LCCOMB_X55_Y31_N22
\u_TxSerial|rSerData[7]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData[7]~5_combout\ = (\u_TxSerial|rBuadEn~q\) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadEn~q\,
	datad => \rSysRstB~q\,
	combout => \u_TxSerial|rSerData[7]~5_combout\);

-- Location: FF_X55_Y31_N21
\u_TxSerial|rDataCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rDataCnt~0_combout\,
	ena => \u_TxSerial|rSerData[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rDataCnt\(0));

-- Location: LCCOMB_X55_Y31_N26
\u_TxSerial|rDataCnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rDataCnt~3_combout\ = (\rSysRstB~q\ & (!\u_TxSerial|u_rState~0_combout\ & (\u_TxSerial|rDataCnt\(1) $ (\u_TxSerial|rDataCnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rSysRstB~q\,
	datab => \u_TxSerial|u_rState~0_combout\,
	datac => \u_TxSerial|rDataCnt\(1),
	datad => \u_TxSerial|rDataCnt\(0),
	combout => \u_TxSerial|rDataCnt~3_combout\);

-- Location: FF_X55_Y31_N27
\u_TxSerial|rDataCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rDataCnt~3_combout\,
	ena => \u_TxSerial|rSerData[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rDataCnt\(1));

-- Location: LCCOMB_X55_Y31_N18
\u_TxSerial|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|Add1~1_combout\ = \u_TxSerial|rDataCnt\(2) $ (((\u_TxSerial|rDataCnt\(1) & \u_TxSerial|rDataCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rDataCnt\(2),
	datac => \u_TxSerial|rDataCnt\(1),
	datad => \u_TxSerial|rDataCnt\(0),
	combout => \u_TxSerial|Add1~1_combout\);

-- Location: LCCOMB_X55_Y31_N16
\u_TxSerial|rDataCnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rDataCnt~2_combout\ = (\u_TxSerial|Add1~1_combout\ & (!\u_TxSerial|u_rState~0_combout\ & \rSysRstB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|Add1~1_combout\,
	datac => \u_TxSerial|u_rState~0_combout\,
	datad => \rSysRstB~q\,
	combout => \u_TxSerial|rDataCnt~2_combout\);

-- Location: FF_X55_Y31_N17
\u_TxSerial|rDataCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rDataCnt~2_combout\,
	ena => \u_TxSerial|rSerData[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rDataCnt\(2));

-- Location: LCCOMB_X55_Y31_N0
\u_TxSerial|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|Add1~0_combout\ = \u_TxSerial|rDataCnt\(3) $ (((\u_TxSerial|rDataCnt\(2) & (\u_TxSerial|rDataCnt\(1) & \u_TxSerial|rDataCnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rDataCnt\(3),
	datab => \u_TxSerial|rDataCnt\(2),
	datac => \u_TxSerial|rDataCnt\(1),
	datad => \u_TxSerial|rDataCnt\(0),
	combout => \u_TxSerial|Add1~0_combout\);

-- Location: LCCOMB_X55_Y31_N6
\u_TxSerial|rDataCnt~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rDataCnt~1_combout\ = (\u_TxSerial|Add1~0_combout\ & (!\u_TxSerial|u_rState~0_combout\ & \rSysRstB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|Add1~0_combout\,
	datac => \u_TxSerial|u_rState~0_combout\,
	datad => \rSysRstB~q\,
	combout => \u_TxSerial|rDataCnt~1_combout\);

-- Location: FF_X55_Y31_N7
\u_TxSerial|rDataCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rDataCnt~1_combout\,
	ena => \u_TxSerial|rSerData[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rDataCnt\(3));

-- Location: LCCOMB_X55_Y31_N4
\u_TxSerial|u_rState~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|u_rState~0_combout\ = (\u_TxSerial|rDataCnt\(3) & (!\u_TxSerial|rDataCnt\(2) & (!\u_TxSerial|rDataCnt\(1) & \u_TxSerial|rDataCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rDataCnt\(3),
	datab => \u_TxSerial|rDataCnt\(2),
	datac => \u_TxSerial|rDataCnt\(1),
	datad => \u_TxSerial|rDataCnt\(0),
	combout => \u_TxSerial|u_rState~0_combout\);

-- Location: LCCOMB_X58_Y32_N6
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\ = \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0) $ (((VCC) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ = CARRY(\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110011001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0),
	datad => VCC,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\);

-- Location: IOIBUF_X58_Y0_N29
\RxSerData~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RxSerData,
	o => \RxSerData~input_o\);

-- Location: LCCOMB_X54_Y29_N10
\u_RxSerial|rSerDataIn~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rSerDataIn~feeder_combout\ = \RxSerData~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RxSerData~input_o\,
	combout => \u_RxSerial|rSerDataIn~feeder_combout\);

-- Location: FF_X54_Y29_N11
\u_RxSerial|rSerDataIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rSerDataIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rSerDataIn~q\);

-- Location: LCCOMB_X54_Y32_N30
\u_RxSerial|rDataCnt~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rDataCnt~3_combout\ = (!\u_RxSerial|rDataCnt\(0) & \rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RxSerial|rDataCnt\(0),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rDataCnt~3_combout\);

-- Location: LCCOMB_X52_Y32_N4
\u_RxSerial|rBuadCnt[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[0]~10_combout\ = \u_RxSerial|rBuadCnt\(0) $ (VCC)
-- \u_RxSerial|rBuadCnt[0]~11\ = CARRY(\u_RxSerial|rBuadCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rBuadCnt\(0),
	datad => VCC,
	combout => \u_RxSerial|rBuadCnt[0]~10_combout\,
	cout => \u_RxSerial|rBuadCnt[0]~11\);

-- Location: LCCOMB_X54_Y32_N12
\u_RxSerial|rState~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rState~8_combout\ = (\u_RxSerial|rBuadEn~q\ & ((\u_RxSerial|rState.StChkFull~q\) # ((\RxSerData~input_o\ & !\u_RxSerial|rState.StIdle~q\)))) # (!\u_RxSerial|rBuadEn~q\ & (((\RxSerData~input_o\ & !\u_RxSerial|rState.StIdle~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadEn~q\,
	datab => \u_RxSerial|rState.StChkFull~q\,
	datac => \RxSerData~input_o\,
	datad => \u_RxSerial|rState.StIdle~q\,
	combout => \u_RxSerial|rState~8_combout\);

-- Location: LCCOMB_X54_Y32_N28
\u_RxSerial|rState~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rState~9_combout\ = (!\u_RxSerial|rState~8_combout\ & \rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rState~8_combout\,
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rState~9_combout\);

-- Location: FF_X54_Y32_N29
\u_RxSerial|rState.StIdle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rState.StIdle~q\);

-- Location: LCCOMB_X52_Y32_N12
\u_RxSerial|rBuadCnt[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[4]~19_combout\ = (\u_RxSerial|rBuadCnt\(4) & ((GND) # (!\u_RxSerial|rBuadCnt[3]~18\))) # (!\u_RxSerial|rBuadCnt\(4) & (\u_RxSerial|rBuadCnt[3]~18\ $ (GND)))
-- \u_RxSerial|rBuadCnt[4]~20\ = CARRY((\u_RxSerial|rBuadCnt\(4)) # (!\u_RxSerial|rBuadCnt[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadCnt\(4),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[3]~18\,
	combout => \u_RxSerial|rBuadCnt[4]~19_combout\,
	cout => \u_RxSerial|rBuadCnt[4]~20\);

-- Location: LCCOMB_X52_Y32_N14
\u_RxSerial|rBuadCnt[5]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[5]~21_combout\ = (\u_RxSerial|rBuadCnt\(5) & (\u_RxSerial|rBuadCnt[4]~20\ & VCC)) # (!\u_RxSerial|rBuadCnt\(5) & (!\u_RxSerial|rBuadCnt[4]~20\))
-- \u_RxSerial|rBuadCnt[5]~22\ = CARRY((!\u_RxSerial|rBuadCnt\(5) & !\u_RxSerial|rBuadCnt[4]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rBuadCnt\(5),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[4]~20\,
	combout => \u_RxSerial|rBuadCnt[5]~21_combout\,
	cout => \u_RxSerial|rBuadCnt[5]~22\);

-- Location: FF_X52_Y32_N15
\u_RxSerial|rBuadCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[5]~21_combout\,
	asdata => VCC,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(5));

-- Location: LCCOMB_X52_Y32_N24
\u_RxSerial|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Equal0~0_combout\ = (\u_RxSerial|rBuadCnt\(4)) # ((\u_RxSerial|rBuadCnt\(5)) # ((\u_RxSerial|rBuadCnt\(1)) # (!\u_RxSerial|rBuadCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadCnt\(4),
	datab => \u_RxSerial|rBuadCnt\(5),
	datac => \u_RxSerial|rBuadCnt\(0),
	datad => \u_RxSerial|rBuadCnt\(1),
	combout => \u_RxSerial|Equal0~0_combout\);

-- Location: LCCOMB_X52_Y32_N16
\u_RxSerial|rBuadCnt[6]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[6]~23_combout\ = (\u_RxSerial|rBuadCnt\(6) & ((GND) # (!\u_RxSerial|rBuadCnt[5]~22\))) # (!\u_RxSerial|rBuadCnt\(6) & (\u_RxSerial|rBuadCnt[5]~22\ $ (GND)))
-- \u_RxSerial|rBuadCnt[6]~24\ = CARRY((\u_RxSerial|rBuadCnt\(6)) # (!\u_RxSerial|rBuadCnt[5]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rBuadCnt\(6),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[5]~22\,
	combout => \u_RxSerial|rBuadCnt[6]~23_combout\,
	cout => \u_RxSerial|rBuadCnt[6]~24\);

-- Location: FF_X52_Y32_N17
\u_RxSerial|rBuadCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[6]~23_combout\,
	asdata => VCC,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(6));

-- Location: LCCOMB_X52_Y32_N18
\u_RxSerial|rBuadCnt[7]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[7]~25_combout\ = (\u_RxSerial|rBuadCnt\(7) & (\u_RxSerial|rBuadCnt[6]~24\ & VCC)) # (!\u_RxSerial|rBuadCnt\(7) & (!\u_RxSerial|rBuadCnt[6]~24\))
-- \u_RxSerial|rBuadCnt[7]~26\ = CARRY((!\u_RxSerial|rBuadCnt\(7) & !\u_RxSerial|rBuadCnt[6]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rBuadCnt\(7),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[6]~24\,
	combout => \u_RxSerial|rBuadCnt[7]~25_combout\,
	cout => \u_RxSerial|rBuadCnt[7]~26\);

-- Location: FF_X52_Y32_N19
\u_RxSerial|rBuadCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[7]~25_combout\,
	asdata => \~GND~combout\,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(7));

-- Location: LCCOMB_X52_Y32_N20
\u_RxSerial|rBuadCnt[8]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[8]~27_combout\ = (\u_RxSerial|rBuadCnt\(8) & ((GND) # (!\u_RxSerial|rBuadCnt[7]~26\))) # (!\u_RxSerial|rBuadCnt\(8) & (\u_RxSerial|rBuadCnt[7]~26\ $ (GND)))
-- \u_RxSerial|rBuadCnt[8]~28\ = CARRY((\u_RxSerial|rBuadCnt\(8)) # (!\u_RxSerial|rBuadCnt[7]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rBuadCnt\(8),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[7]~26\,
	combout => \u_RxSerial|rBuadCnt[8]~27_combout\,
	cout => \u_RxSerial|rBuadCnt[8]~28\);

-- Location: FF_X52_Y32_N21
\u_RxSerial|rBuadCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[8]~27_combout\,
	asdata => VCC,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(8));

-- Location: LCCOMB_X52_Y32_N22
\u_RxSerial|rBuadCnt[9]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[9]~29_combout\ = \u_RxSerial|rBuadCnt\(9) $ (!\u_RxSerial|rBuadCnt[8]~28\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadCnt\(9),
	cin => \u_RxSerial|rBuadCnt[8]~28\,
	combout => \u_RxSerial|rBuadCnt[9]~29_combout\);

-- Location: FF_X52_Y32_N23
\u_RxSerial|rBuadCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[9]~29_combout\,
	asdata => VCC,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(9));

-- Location: LCCOMB_X52_Y32_N0
\u_RxSerial|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Equal1~0_combout\ = (!\u_RxSerial|rBuadCnt\(9) & (!\u_RxSerial|rBuadCnt\(6) & (!\u_RxSerial|rBuadCnt\(2) & !\u_RxSerial|rBuadCnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadCnt\(9),
	datab => \u_RxSerial|rBuadCnt\(6),
	datac => \u_RxSerial|rBuadCnt\(2),
	datad => \u_RxSerial|rBuadCnt\(3),
	combout => \u_RxSerial|Equal1~0_combout\);

-- Location: LCCOMB_X52_Y32_N26
\u_RxSerial|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Equal0~1_combout\ = (\u_RxSerial|Equal0~0_combout\) # (((\u_RxSerial|rBuadCnt\(7)) # (\u_RxSerial|rBuadCnt\(8))) # (!\u_RxSerial|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|Equal0~0_combout\,
	datab => \u_RxSerial|Equal1~0_combout\,
	datac => \u_RxSerial|rBuadCnt\(7),
	datad => \u_RxSerial|rBuadCnt\(8),
	combout => \u_RxSerial|Equal0~1_combout\);

-- Location: LCCOMB_X52_Y32_N28
\u_RxSerial|rBuadCnt[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[7]~16_combout\ = ((!\rSysRstB~q\) # (!\u_RxSerial|Equal0~1_combout\)) # (!\u_RxSerial|rState.StIdle~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rState.StIdle~q\,
	datac => \u_RxSerial|Equal0~1_combout\,
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rBuadCnt[7]~16_combout\);

-- Location: FF_X52_Y32_N5
\u_RxSerial|rBuadCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[0]~10_combout\,
	asdata => \~GND~combout\,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(0));

-- Location: LCCOMB_X52_Y32_N6
\u_RxSerial|rBuadCnt[1]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[1]~12_combout\ = (\u_RxSerial|rBuadCnt\(1) & (\u_RxSerial|rBuadCnt[0]~11\ & VCC)) # (!\u_RxSerial|rBuadCnt\(1) & (!\u_RxSerial|rBuadCnt[0]~11\))
-- \u_RxSerial|rBuadCnt[1]~13\ = CARRY((!\u_RxSerial|rBuadCnt\(1) & !\u_RxSerial|rBuadCnt[0]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadCnt\(1),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[0]~11\,
	combout => \u_RxSerial|rBuadCnt[1]~12_combout\,
	cout => \u_RxSerial|rBuadCnt[1]~13\);

-- Location: FF_X52_Y32_N7
\u_RxSerial|rBuadCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[1]~12_combout\,
	asdata => \~GND~combout\,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(1));

-- Location: LCCOMB_X52_Y32_N8
\u_RxSerial|rBuadCnt[2]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[2]~14_combout\ = (\u_RxSerial|rBuadCnt\(2) & ((GND) # (!\u_RxSerial|rBuadCnt[1]~13\))) # (!\u_RxSerial|rBuadCnt\(2) & (\u_RxSerial|rBuadCnt[1]~13\ $ (GND)))
-- \u_RxSerial|rBuadCnt[2]~15\ = CARRY((\u_RxSerial|rBuadCnt\(2)) # (!\u_RxSerial|rBuadCnt[1]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rBuadCnt\(2),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[1]~13\,
	combout => \u_RxSerial|rBuadCnt[2]~14_combout\,
	cout => \u_RxSerial|rBuadCnt[2]~15\);

-- Location: FF_X52_Y32_N9
\u_RxSerial|rBuadCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[2]~14_combout\,
	asdata => VCC,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(2));

-- Location: LCCOMB_X52_Y32_N10
\u_RxSerial|rBuadCnt[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rBuadCnt[3]~17_combout\ = (\u_RxSerial|rBuadCnt\(3) & (\u_RxSerial|rBuadCnt[2]~15\ & VCC)) # (!\u_RxSerial|rBuadCnt\(3) & (!\u_RxSerial|rBuadCnt[2]~15\))
-- \u_RxSerial|rBuadCnt[3]~18\ = CARRY((!\u_RxSerial|rBuadCnt\(3) & !\u_RxSerial|rBuadCnt[2]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadCnt\(3),
	datad => VCC,
	cin => \u_RxSerial|rBuadCnt[2]~15\,
	combout => \u_RxSerial|rBuadCnt[3]~17_combout\,
	cout => \u_RxSerial|rBuadCnt[3]~18\);

-- Location: FF_X52_Y32_N11
\u_RxSerial|rBuadCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[3]~17_combout\,
	asdata => \~GND~combout\,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(3));

-- Location: FF_X52_Y32_N13
\u_RxSerial|rBuadCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rBuadCnt[4]~19_combout\,
	asdata => \~GND~combout\,
	sload => \u_RxSerial|rBuadCnt[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadCnt\(4));

-- Location: LCCOMB_X52_Y32_N2
\u_RxSerial|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Equal1~1_combout\ = (\u_RxSerial|rBuadCnt\(4) & (\u_RxSerial|rBuadCnt\(5) & (!\u_RxSerial|rBuadCnt\(0) & \u_RxSerial|rBuadCnt\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadCnt\(4),
	datab => \u_RxSerial|rBuadCnt\(5),
	datac => \u_RxSerial|rBuadCnt\(0),
	datad => \u_RxSerial|rBuadCnt\(1),
	combout => \u_RxSerial|Equal1~1_combout\);

-- Location: LCCOMB_X54_Y32_N10
\u_RxSerial|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Equal1~2_combout\ = (\u_RxSerial|Equal1~1_combout\ & (\u_RxSerial|rBuadCnt\(8) & (\u_RxSerial|Equal1~0_combout\ & \u_RxSerial|rBuadCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|Equal1~1_combout\,
	datab => \u_RxSerial|rBuadCnt\(8),
	datac => \u_RxSerial|Equal1~0_combout\,
	datad => \u_RxSerial|rBuadCnt\(7),
	combout => \u_RxSerial|Equal1~2_combout\);

-- Location: FF_X54_Y32_N11
\u_RxSerial|rBuadEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|Equal1~2_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rBuadEn~q\);

-- Location: LCCOMB_X54_Y32_N0
\u_RxSerial|rDataCnt[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rDataCnt[3]~1_combout\ = (\u_RxSerial|rBuadEn~q\) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rBuadEn~q\,
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rDataCnt[3]~1_combout\);

-- Location: FF_X54_Y32_N31
\u_RxSerial|rDataCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rDataCnt~3_combout\,
	ena => \u_RxSerial|rDataCnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rDataCnt\(0));

-- Location: LCCOMB_X54_Y32_N20
\u_RxSerial|rDataCnt~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rDataCnt~2_combout\ = (\u_RxSerial|Equal2~0_combout\ & (\rSysRstB~q\ & (\u_RxSerial|rDataCnt\(0) $ (\u_RxSerial|rDataCnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rDataCnt\(0),
	datab => \u_RxSerial|Equal2~0_combout\,
	datac => \u_RxSerial|rDataCnt\(1),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rDataCnt~2_combout\);

-- Location: FF_X54_Y32_N21
\u_RxSerial|rDataCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rDataCnt~2_combout\,
	ena => \u_RxSerial|rDataCnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rDataCnt\(1));

-- Location: LCCOMB_X54_Y32_N22
\u_RxSerial|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Add1~0_combout\ = \u_RxSerial|rDataCnt\(2) $ (((\u_RxSerial|rDataCnt\(1) & \u_RxSerial|rDataCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rDataCnt\(2),
	datab => \u_RxSerial|rDataCnt\(1),
	datac => \u_RxSerial|rDataCnt\(0),
	combout => \u_RxSerial|Add1~0_combout\);

-- Location: LCCOMB_X54_Y32_N26
\u_RxSerial|rDataCnt~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rDataCnt~0_combout\ = (\u_RxSerial|Equal2~0_combout\ & (\u_RxSerial|Add1~0_combout\ & \rSysRstB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|Equal2~0_combout\,
	datac => \u_RxSerial|Add1~0_combout\,
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rDataCnt~0_combout\);

-- Location: FF_X54_Y32_N27
\u_RxSerial|rDataCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rDataCnt~0_combout\,
	ena => \u_RxSerial|rDataCnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rDataCnt\(2));

-- Location: LCCOMB_X54_Y32_N18
\u_RxSerial|Add1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Add1~1_combout\ = \u_RxSerial|rDataCnt\(3) $ (((\u_RxSerial|rDataCnt\(2) & (\u_RxSerial|rDataCnt\(1) & \u_RxSerial|rDataCnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rDataCnt\(2),
	datab => \u_RxSerial|rDataCnt\(1),
	datac => \u_RxSerial|rDataCnt\(0),
	datad => \u_RxSerial|rDataCnt\(3),
	combout => \u_RxSerial|Add1~1_combout\);

-- Location: LCCOMB_X54_Y32_N24
\u_RxSerial|rDataCnt~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rDataCnt~4_combout\ = (\u_RxSerial|Equal2~0_combout\ & (\u_RxSerial|Add1~1_combout\ & \rSysRstB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|Equal2~0_combout\,
	datac => \u_RxSerial|Add1~1_combout\,
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rDataCnt~4_combout\);

-- Location: FF_X54_Y32_N25
\u_RxSerial|rDataCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rDataCnt~4_combout\,
	ena => \u_RxSerial|rDataCnt[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rDataCnt\(3));

-- Location: LCCOMB_X54_Y32_N2
\u_RxSerial|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Equal2~0_combout\ = (\u_RxSerial|rDataCnt\(2)) # ((\u_RxSerial|rDataCnt\(1)) # ((!\u_RxSerial|rDataCnt\(3)) # (!\u_RxSerial|rDataCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rDataCnt\(2),
	datab => \u_RxSerial|rDataCnt\(1),
	datac => \u_RxSerial|rDataCnt\(0),
	datad => \u_RxSerial|rDataCnt\(3),
	combout => \u_RxSerial|Equal2~0_combout\);

-- Location: LCCOMB_X54_Y32_N6
\u_RxSerial|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Selector1~0_combout\ = (\RxSerData~input_o\ & (\u_RxSerial|Equal2~0_combout\ & (\u_RxSerial|rState.StRdEnd~q\))) # (!\RxSerData~input_o\ & (((\u_RxSerial|Equal2~0_combout\ & \u_RxSerial|rState.StRdEnd~q\)) # (!\u_RxSerial|rState.StIdle~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RxSerData~input_o\,
	datab => \u_RxSerial|Equal2~0_combout\,
	datac => \u_RxSerial|rState.StRdEnd~q\,
	datad => \u_RxSerial|rState.StIdle~q\,
	combout => \u_RxSerial|Selector1~0_combout\);

-- Location: FF_X54_Y32_N7
\u_RxSerial|rState.StRdEnd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|Selector1~0_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rState.StRdEnd~q\);

-- Location: LCCOMB_X54_Y32_N4
\u_RxSerial|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|Selector2~0_combout\ = (\u_RxSerial|rState.StRdEnd~q\ & (((\u_RxSerial|rState.StChkFull~q\ & !\u_RxSerial|rBuadEn~q\)) # (!\u_RxSerial|Equal2~0_combout\))) # (!\u_RxSerial|rState.StRdEnd~q\ & (((\u_RxSerial|rState.StChkFull~q\ & 
-- !\u_RxSerial|rBuadEn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rState.StRdEnd~q\,
	datab => \u_RxSerial|Equal2~0_combout\,
	datac => \u_RxSerial|rState.StChkFull~q\,
	datad => \u_RxSerial|rBuadEn~q\,
	combout => \u_RxSerial|Selector2~0_combout\);

-- Location: FF_X54_Y32_N5
\u_RxSerial|rState.StChkFull\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|Selector2~0_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rState.StChkFull~q\);

-- Location: LCCOMB_X54_Y32_N8
\u_RxSerial|rRxFfWrEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrEn~0_combout\ = (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & (\u_RxSerial|rSerDataIn~q\ & (\u_RxSerial|rState.StChkFull~q\ & \u_RxSerial|rBuadEn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	datab => \u_RxSerial|rSerDataIn~q\,
	datac => \u_RxSerial|rState.StChkFull~q\,
	datad => \u_RxSerial|rBuadEn~q\,
	combout => \u_RxSerial|rRxFfWrEn~0_combout\);

-- Location: FF_X54_Y32_N9
\u_RxSerial|rRxFfWrEn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrEn~0_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrEn~q\);

-- Location: LCCOMB_X57_Y32_N6
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\ = (\u_RxSerial|rRxFfWrEn~q\ & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ $ 
-- (((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\) # (!\u_TxSerial|rTxFfRdEn\(1)))))) # (!\u_RxSerial|rRxFfWrEn~q\ & (\u_TxSerial|rTxFfRdEn\(1) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rRxFfWrEn~q\,
	datab => \u_TxSerial|rTxFfRdEn\(1),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\);

-- Location: FF_X58_Y32_N7
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0));

-- Location: LCCOMB_X58_Y32_N8
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) $ (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\ & (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1)) # (GND))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita0~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\);

-- Location: FF_X58_Y32_N9
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1));

-- Location: LCCOMB_X58_Y32_N10
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & VCC)))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) $ (((VCC) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita1~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\);

-- Location: FF_X58_Y32_N11
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2));

-- Location: LCCOMB_X58_Y32_N12
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3) $ (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\ & (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3)) # (GND))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita2~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\);

-- Location: FF_X58_Y32_N13
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3));

-- Location: LCCOMB_X58_Y32_N14
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) & VCC)))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) $ (((VCC) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita3~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\);

-- Location: FF_X58_Y32_N15
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4));

-- Location: LCCOMB_X58_Y32_N16
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) $ (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\ & (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5)) # (GND))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita4~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\);

-- Location: FF_X58_Y32_N17
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5));

-- Location: LCCOMB_X58_Y32_N18
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) & VCC)))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6) $ (((VCC) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita5~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\);

-- Location: FF_X58_Y32_N19
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6));

-- Location: LCCOMB_X58_Y32_N20
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) $ (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\ & (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7)) # (GND))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita6~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\);

-- Location: FF_X58_Y32_N21
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7));

-- Location: LCCOMB_X58_Y32_N22
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ & 
-- (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & VCC)))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) $ (((VCC) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita7~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\);

-- Location: FF_X58_Y32_N23
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8));

-- Location: LCCOMB_X58_Y32_N24
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) $ (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\) # (VCC))))) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\ & (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)) # (GND))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita8~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\);

-- Location: FF_X58_Y32_N25
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9));

-- Location: LCCOMB_X58_Y32_N26
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ & 
-- (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) & VCC)))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) $ (((VCC) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\)))))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ $ (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita9~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~COUT\);

-- Location: LCCOMB_X58_Y32_N28
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita11~combout\ = \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(11) $ 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(11),
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita11~combout\);

-- Location: FF_X58_Y32_N29
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita11~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(11));

-- Location: LCCOMB_X57_Y32_N30
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\ & 
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(11),
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\);

-- Location: LCCOMB_X58_Y32_N0
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8) & 
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6),
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\);

-- Location: LCCOMB_X58_Y32_N2
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4) & 
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4),
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3),
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\);

-- Location: LCCOMB_X57_Y32_N24
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\ & (\u_RxSerial|rRxFfWrEn~q\ & 
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~2_combout\,
	datac => \u_RxSerial|rRxFfWrEn~q\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0),
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\);

-- Location: LCCOMB_X57_Y32_N8
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\ & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\ & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~0_combout\,
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~1_combout\,
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~3_combout\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\);

-- Location: FF_X57_Y32_N9
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~4_combout\,
	clrn => \rSysRstB~q\,
	sclr => \u_TxSerial|rTxFfRdEn\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\);

-- Location: LCCOMB_X57_Y32_N26
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\ = (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\ & \u_RxSerial|rRxFfWrEn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	datac => \u_RxSerial|rRxFfWrEn~q\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\);

-- Location: FF_X58_Y32_N27
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_comb_bita10~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|_~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10));

-- Location: LCCOMB_X57_Y32_N10
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10)) # 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9)) # ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8)) # 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(10),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(9),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(8),
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(11),
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\);

-- Location: LCCOMB_X58_Y32_N30
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3)) # 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2)) # ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1)) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(3),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(2),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(1),
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(0),
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\);

-- Location: LCCOMB_X58_Y32_N4
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7)) # 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5)) # ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4)) # 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(7),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(5),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(4),
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|count_usedw|counter_reg_bit\(6),
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\);

-- Location: LCCOMB_X57_Y32_N12
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~3_combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\) # 
-- (((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\) # (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\)) # (!\u_TxSerial|rTxFfRdEn\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~0_combout\,
	datab => \u_TxSerial|rTxFfRdEn\(1),
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~2_combout\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~1_combout\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~3_combout\);

-- Location: LCCOMB_X57_Y32_N4
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~4_combout\ = (\u_RxSerial|rRxFfWrEn~q\) # ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\) # 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~3_combout\ & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~3_combout\,
	datab => \u_RxSerial|rRxFfWrEn~q\,
	datac => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_full~q\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~4_combout\);

-- Location: FF_X57_Y32_N5
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~4_combout\,
	clrn => \rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\);

-- Location: LCCOMB_X54_Y31_N0
\u_TxSerial|rState~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rState~11_combout\ = ((!\u_TxSerial|rState.StIdle~q\ & !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rState.StIdle~q\,
	datac => \rSysRstB~q\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	combout => \u_TxSerial|rState~11_combout\);

-- Location: LCCOMB_X54_Y31_N6
\u_TxSerial|rState~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rState~12_combout\ = (!\u_TxSerial|rState~11_combout\ & (((!\u_TxSerial|rState.StWtEnd~q\) # (!\u_TxSerial|rBuadEn~q\)) # (!\u_TxSerial|u_rState~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|u_rState~0_combout\,
	datab => \u_TxSerial|rBuadEn~q\,
	datac => \u_TxSerial|rState.StWtEnd~q\,
	datad => \u_TxSerial|rState~11_combout\,
	combout => \u_TxSerial|rState~12_combout\);

-- Location: FF_X54_Y31_N7
\u_TxSerial|rState.StIdle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rState.StIdle~q\);

-- Location: LCCOMB_X54_Y31_N2
\u_TxSerial|rState~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rState~10_combout\ = (!\u_TxSerial|rState.StIdle~q\ & (\rSysRstB~q\ & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rState.StIdle~q\,
	datac => \rSysRstB~q\,
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	combout => \u_TxSerial|rState~10_combout\);

-- Location: FF_X54_Y31_N3
\u_TxSerial|rState.StRdReq\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rState.StRdReq~q\);

-- Location: LCCOMB_X55_Y31_N8
\u_TxSerial|rTxFfRdEn~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rTxFfRdEn~1_combout\ = (\u_TxSerial|rState.StRdReq~q\ & \rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rState.StRdReq~q\,
	datad => \rSysRstB~q\,
	combout => \u_TxSerial|rTxFfRdEn~1_combout\);

-- Location: FF_X55_Y31_N9
\u_TxSerial|rTxFfRdEn[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rTxFfRdEn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rTxFfRdEn\(0));

-- Location: LCCOMB_X55_Y31_N2
\u_TxSerial|rTxFfRdEn~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rTxFfRdEn~0_combout\ = (\u_TxSerial|rState.StRdReq~q\ & ((\u_TxSerial|rTxFfRdEn\(1)))) # (!\u_TxSerial|rState.StRdReq~q\ & (\u_TxSerial|rTxFfRdEn\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rState.StRdReq~q\,
	datab => \u_TxSerial|rTxFfRdEn\(0),
	datac => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rTxFfRdEn~0_combout\);

-- Location: FF_X55_Y31_N3
\u_TxSerial|rTxFfRdEn[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rTxFfRdEn~0_combout\,
	sclr => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rTxFfRdEn\(1));

-- Location: LCCOMB_X54_Y31_N12
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\ = (\u_TxSerial|rTxFfRdEn\(1) & \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rTxFfRdEn\(1),
	datad => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|fifo_state|b_non_empty~q\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\);

-- Location: LCCOMB_X54_Y29_N8
\u_RxSerial|rRxFfWrData~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~8_combout\ = (\u_RxSerial|rSerDataIn~q\) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rSerDataIn~q\,
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~8_combout\);

-- Location: LCCOMB_X54_Y32_N16
\u_RxSerial|rRxFfWrData[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData[7]~1_combout\ = ((\u_RxSerial|rState.StRdEnd~q\ & \u_RxSerial|rBuadEn~q\)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_RxSerial|rState.StRdEnd~q\,
	datab => \rSysRstB~q\,
	datad => \u_RxSerial|rBuadEn~q\,
	combout => \u_RxSerial|rRxFfWrData[7]~1_combout\);

-- Location: FF_X54_Y29_N9
\u_RxSerial|rRxFfWrData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~8_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(7));

-- Location: LCCOMB_X54_Y29_N22
\u_RxSerial|rRxFfWrData~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~7_combout\ = (\u_RxSerial|rRxFfWrData\(7)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RxSerial|rRxFfWrData\(7),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~7_combout\);

-- Location: FF_X54_Y29_N23
\u_RxSerial|rRxFfWrData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~7_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(6));

-- Location: LCCOMB_X54_Y29_N4
\u_RxSerial|rRxFfWrData~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~6_combout\ = (\u_RxSerial|rRxFfWrData\(6)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RxSerial|rRxFfWrData\(6),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~6_combout\);

-- Location: FF_X54_Y29_N5
\u_RxSerial|rRxFfWrData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~6_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(5));

-- Location: LCCOMB_X54_Y29_N2
\u_RxSerial|rRxFfWrData~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~5_combout\ = (\u_RxSerial|rRxFfWrData\(5)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RxSerial|rRxFfWrData\(5),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~5_combout\);

-- Location: FF_X54_Y29_N3
\u_RxSerial|rRxFfWrData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~5_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(4));

-- Location: LCCOMB_X54_Y29_N16
\u_RxSerial|rRxFfWrData~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~4_combout\ = (\u_RxSerial|rRxFfWrData\(4)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rRxFfWrData\(4),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~4_combout\);

-- Location: FF_X54_Y29_N17
\u_RxSerial|rRxFfWrData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~4_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(3));

-- Location: LCCOMB_X54_Y29_N14
\u_RxSerial|rRxFfWrData~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~3_combout\ = (\u_RxSerial|rRxFfWrData\(3)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rRxFfWrData\(3),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~3_combout\);

-- Location: FF_X54_Y29_N15
\u_RxSerial|rRxFfWrData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~3_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(2));

-- Location: LCCOMB_X54_Y29_N20
\u_RxSerial|rRxFfWrData~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~2_combout\ = (\u_RxSerial|rRxFfWrData\(2)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_RxSerial|rRxFfWrData\(2),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~2_combout\);

-- Location: FF_X54_Y29_N21
\u_RxSerial|rRxFfWrData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~2_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(1));

-- Location: LCCOMB_X54_Y29_N24
\u_RxSerial|rRxFfWrData~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_RxSerial|rRxFfWrData~0_combout\ = (\u_RxSerial|rRxFfWrData\(1)) # (!\rSysRstB~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_RxSerial|rRxFfWrData\(1),
	datad => \rSysRstB~q\,
	combout => \u_RxSerial|rRxFfWrData~0_combout\);

-- Location: FF_X54_Y29_N25
\u_RxSerial|rRxFfWrData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_RxSerial|rRxFfWrData~0_combout\,
	ena => \u_RxSerial|rRxFfWrData[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_RxSerial|rRxFfWrData\(0));

-- Location: LCCOMB_X54_Y30_N4
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\ = \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0) $ (VCC)
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\ = CARRY(\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0),
	datad => VCC,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\);

-- Location: FF_X54_Y30_N5
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(0));

-- Location: LCCOMB_X54_Y30_N6
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\)) 
-- # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita0~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\);

-- Location: FF_X54_Y30_N7
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(1));

-- Location: LCCOMB_X54_Y30_N8
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ $ 
-- (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita1~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\);

-- Location: FF_X54_Y30_N9
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(2));

-- Location: LCCOMB_X54_Y30_N10
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\)) 
-- # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita2~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\);

-- Location: FF_X54_Y30_N11
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(3));

-- Location: LCCOMB_X54_Y30_N12
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ $ 
-- (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita3~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\);

-- Location: FF_X54_Y30_N13
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(4));

-- Location: LCCOMB_X54_Y30_N14
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\)) 
-- # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita4~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\);

-- Location: FF_X54_Y30_N15
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(5));

-- Location: LCCOMB_X54_Y30_N16
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ $ 
-- (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita5~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\);

-- Location: FF_X54_Y30_N17
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(6));

-- Location: LCCOMB_X54_Y30_N18
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\)) 
-- # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita6~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\);

-- Location: FF_X54_Y30_N19
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(7));

-- Location: LCCOMB_X54_Y30_N20
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ $ 
-- (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita7~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\);

-- Location: FF_X54_Y30_N21
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(8));

-- Location: LCCOMB_X54_Y30_N22
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\)) 
-- # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita8~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\);

-- Location: FF_X54_Y30_N23
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(9));

-- Location: LCCOMB_X54_Y30_N24
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ 
-- $ (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita9~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~COUT\);

-- Location: FF_X54_Y30_N25
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(10));

-- Location: LCCOMB_X54_Y30_N26
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita11~combout\ = \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(11) $ (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(11),
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita10~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita11~combout\);

-- Location: FF_X54_Y30_N27
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_comb_bita11~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|wr_ptr|counter_reg_bit\(11));

-- Location: LCCOMB_X52_Y30_N0
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\ = \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0) $ (VCC)
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\ = CARRY(\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0),
	datad => VCC,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\);

-- Location: FF_X52_Y30_N1
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(0));

-- Location: LCCOMB_X52_Y30_N2
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\)) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1) & 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita0~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\);

-- Location: FF_X52_Y30_N3
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(1));

-- Location: LCCOMB_X52_Y30_N4
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ $ (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita1~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\);

-- Location: FF_X52_Y30_N5
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(2));

-- Location: LCCOMB_X52_Y30_N6
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\)) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3) & 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita2~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\);

-- Location: FF_X52_Y30_N7
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(3));

-- Location: LCCOMB_X52_Y30_N8
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ $ (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita3~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\);

-- Location: FF_X52_Y30_N9
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(4));

-- Location: LCCOMB_X52_Y30_N10
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\)) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5) & 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita4~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\);

-- Location: FF_X52_Y30_N11
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(5));

-- Location: LCCOMB_X52_Y30_N12
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ $ (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita5~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\);

-- Location: FF_X52_Y30_N13
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(6));

-- Location: LCCOMB_X52_Y30_N14
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\)) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7) & 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita6~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\);

-- Location: FF_X52_Y30_N15
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(7));

-- Location: LCCOMB_X52_Y30_N16
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ $ (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita7~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\);

-- Location: FF_X52_Y30_N17
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(8));

-- Location: LCCOMB_X52_Y30_N18
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\)) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9) & 
-- ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\) # (GND)))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ = CARRY((!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\) # 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita8~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\);

-- Location: FF_X52_Y30_N19
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(9));

-- Location: LCCOMB_X52_Y30_N20
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~combout\ = (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ $ (GND))) # (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & 
-- (!\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\ & VCC))
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~COUT\ = CARRY((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10) & 
-- !\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10),
	datad => VCC,
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita9~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~combout\,
	cout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~COUT\);

-- Location: FF_X52_Y30_N21
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(10));

-- Location: LCCOMB_X52_Y30_N22
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita11~combout\ = \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(11) $ 
-- (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~COUT\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(11),
	cin => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita10~COUT\,
	combout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita11~combout\);

-- Location: FF_X52_Y30_N23
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_comb_bita11~combout\,
	clrn => \rSysRstB~q\,
	ena => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|rd_ptr_count|counter_reg_bit\(11));

-- Location: M9K_X53_Y28_N0
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO4kx8:u_fifo4kx8|scfifo:scfifo_component|scfifo_ss21:auto_generated|a_dpfifo_3331:dpfifo|altsyncram_k5m1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y31_N0
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO4kx8:u_fifo4kx8|scfifo:scfifo_component|scfifo_ss21:auto_generated|a_dpfifo_3331:dpfifo|altsyncram_k5m1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 2,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 2,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTADATAIN_bus\,
	portaaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTAADDR_bus\,
	portbaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a2_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y30_N0
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO4kx8:u_fifo4kx8|scfifo:scfifo_component|scfifo_ss21:auto_generated|a_dpfifo_3331:dpfifo|altsyncram_k5m1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 4,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 4,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTADATAIN_bus\,
	portaaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTAADDR_bus\,
	portbaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a4_PORTBDATAOUT_bus\);

-- Location: M9K_X53_Y29_N0
\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFO4kx8:u_fifo4kx8|scfifo:scfifo_component|scfifo_ss21:auto_generated|a_dpfifo_3331:dpfifo|altsyncram_k5m1:FIFOram|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 12,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 2,
	port_a_first_address => 0,
	port_a_first_bit_number => 6,
	port_a_last_address => 4095,
	port_a_logical_ram_depth => 4096,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 12,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 2,
	port_b_first_address => 0,
	port_b_first_bit_number => 6,
	port_b_last_address => 4095,
	port_b_logical_ram_depth => 4096,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	portbre => VCC,
	clk0 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	clk1 => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	ena0 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_wreq~combout\,
	ena1 => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|valid_rreq~combout\,
	portadatain => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTADATAIN_bus\,
	portaaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTAADDR_bus\,
	portbaddr => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|ram_block1a6_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X54_Y31_N20
\u_TxSerial|rSerData[8]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData[8]~10_combout\ = (\rSysRstB~q\ & ((\u_TxSerial|rBuadEn~q\) # (\u_TxSerial|rTxFfRdEn\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadEn~q\,
	datac => \rSysRstB~q\,
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData[8]~10_combout\);

-- Location: LCCOMB_X54_Y31_N26
\u_TxSerial|rSerData[8]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData[8]~11_combout\ = (\u_TxSerial|rSerData[8]~10_combout\ & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7)) # ((!\u_TxSerial|rTxFfRdEn\(1))))) # (!\u_TxSerial|rSerData[8]~10_combout\ & (((\u_TxSerial|rSerData\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(7),
	datab => \u_TxSerial|rSerData[8]~10_combout\,
	datac => \u_TxSerial|rSerData\(8),
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData[8]~11_combout\);

-- Location: FF_X54_Y31_N27
\u_TxSerial|rSerData[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData[8]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(8));

-- Location: LCCOMB_X54_Y31_N14
\u_TxSerial|rSerData~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~9_combout\ = (\u_TxSerial|rTxFfRdEn\(1) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6)))) # (!\u_TxSerial|rTxFfRdEn\(1) & (\u_TxSerial|rSerData\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rSerData\(8),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(6),
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData~9_combout\);

-- Location: LCCOMB_X54_Y31_N8
\u_TxSerial|rSerData[7]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData[7]~2_combout\ = (\u_TxSerial|rBuadEn~q\) # ((\u_TxSerial|rTxFfRdEn\(1)) # (!\rSysRstB~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_TxSerial|rBuadEn~q\,
	datac => \rSysRstB~q\,
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData[7]~2_combout\);

-- Location: FF_X54_Y31_N15
\u_TxSerial|rSerData[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~9_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	ena => \u_TxSerial|rSerData[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(7));

-- Location: LCCOMB_X54_Y31_N4
\u_TxSerial|rSerData~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~8_combout\ = (\u_TxSerial|rTxFfRdEn\(1) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5))) # (!\u_TxSerial|rTxFfRdEn\(1) & ((\u_TxSerial|rSerData\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(5),
	datab => \u_TxSerial|rSerData\(7),
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData~8_combout\);

-- Location: FF_X54_Y31_N5
\u_TxSerial|rSerData[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~8_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	ena => \u_TxSerial|rSerData[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(6));

-- Location: LCCOMB_X54_Y31_N10
\u_TxSerial|rSerData~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~7_combout\ = (\u_TxSerial|rTxFfRdEn\(1) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4))) # (!\u_TxSerial|rTxFfRdEn\(1) & ((\u_TxSerial|rSerData\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(4),
	datab => \u_TxSerial|rSerData\(6),
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData~7_combout\);

-- Location: FF_X54_Y31_N11
\u_TxSerial|rSerData[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~7_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	ena => \u_TxSerial|rSerData[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(5));

-- Location: LCCOMB_X54_Y31_N16
\u_TxSerial|rSerData~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~6_combout\ = (\u_TxSerial|rTxFfRdEn\(1) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3)))) # (!\u_TxSerial|rTxFfRdEn\(1) & (\u_TxSerial|rSerData\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rSerData\(5),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(3),
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData~6_combout\);

-- Location: FF_X54_Y31_N17
\u_TxSerial|rSerData[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~6_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	ena => \u_TxSerial|rSerData[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(4));

-- Location: LCCOMB_X54_Y31_N30
\u_TxSerial|rSerData~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~4_combout\ = (\u_TxSerial|rTxFfRdEn\(1) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2))) # (!\u_TxSerial|rTxFfRdEn\(1) & ((\u_TxSerial|rSerData\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rTxFfRdEn\(1),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(2),
	datad => \u_TxSerial|rSerData\(4),
	combout => \u_TxSerial|rSerData~4_combout\);

-- Location: FF_X54_Y31_N31
\u_TxSerial|rSerData[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~4_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	ena => \u_TxSerial|rSerData[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(3));

-- Location: LCCOMB_X54_Y31_N28
\u_TxSerial|rSerData~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~3_combout\ = (\u_TxSerial|rTxFfRdEn\(1) & ((\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1)))) # (!\u_TxSerial|rTxFfRdEn\(1) & (\u_TxSerial|rSerData\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rSerData\(3),
	datab => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(1),
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData~3_combout\);

-- Location: FF_X54_Y31_N29
\u_TxSerial|rSerData[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~3_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	ena => \u_TxSerial|rSerData[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(2));

-- Location: LCCOMB_X54_Y31_N18
\u_TxSerial|rSerData~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~1_combout\ = (\u_TxSerial|rTxFfRdEn\(1) & (\u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0))) # (!\u_TxSerial|rTxFfRdEn\(1) & ((\u_TxSerial|rSerData\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_fifo4kx8|scfifo_component|auto_generated|dpfifo|FIFOram|q_b\(0),
	datab => \u_TxSerial|rSerData\(2),
	datad => \u_TxSerial|rTxFfRdEn\(1),
	combout => \u_TxSerial|rSerData~1_combout\);

-- Location: FF_X54_Y31_N19
\u_TxSerial|rSerData[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~1_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	ena => \u_TxSerial|rSerData[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(1));

-- Location: LCCOMB_X54_Y31_N24
\u_TxSerial|rSerData~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \u_TxSerial|rSerData~0_combout\ = (!\u_TxSerial|rTxFfRdEn\(1) & ((\u_TxSerial|rBuadEn~q\ & (\u_TxSerial|rSerData\(1))) # (!\u_TxSerial|rBuadEn~q\ & ((\u_TxSerial|rSerData\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_TxSerial|rTxFfRdEn\(1),
	datab => \u_TxSerial|rSerData\(1),
	datac => \u_TxSerial|rSerData\(0),
	datad => \u_TxSerial|rBuadEn~q\,
	combout => \u_TxSerial|rSerData~0_combout\);

-- Location: FF_X54_Y31_N25
\u_TxSerial|rSerData[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u_PLL50|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \u_TxSerial|rSerData~0_combout\,
	asdata => VCC,
	sload => \ALT_INV_rSysRstB~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u_TxSerial|rSerData\(0));

-- Location: IOIBUF_X78_Y29_N8
\Button~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Button,
	o => \Button~input_o\);

-- Location: IOIBUF_X62_Y0_N22
\RESERVED[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESERVED(0),
	o => \RESERVED[0]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\RESERVED[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RESERVED(1),
	o => \RESERVED[1]~input_o\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~GND~combout\,
	xe_ye => \~GND~combout\,
	se => \~GND~combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~GND~combout\,
	usr_pwd => VCC,
	tsen => \~GND~combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);
END structure;


