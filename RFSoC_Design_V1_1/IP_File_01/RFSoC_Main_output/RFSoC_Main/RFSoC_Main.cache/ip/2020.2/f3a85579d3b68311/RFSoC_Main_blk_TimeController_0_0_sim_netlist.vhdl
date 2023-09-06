-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Sep  5 21:14:02 2023
-- Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RFSoC_Main_blk_TimeController_0_0_sim_netlist.vhdl
-- Design      : RFSoC_Main_blk_TimeController_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI2COM is
  port (
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    auto_start : out STD_LOGIC;
    reset : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    O : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_offset_reg[15]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_offset_reg[23]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_offset_reg[31]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_offset_reg[39]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_offset_reg[47]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_offset_reg[55]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_offset_reg[63]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    offset_en_reg_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    counter : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI2COM;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI2COM is
  signal \FSM_onehot_axi_state_write[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write[0]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write[0]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write[4]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write_reg_n_0_[3]\ : STD_LOGIC;
  signal \FSM_onehot_axi_state_write_reg_n_0_[4]\ : STD_LOGIC;
  signal FSM_sequential_axi_state_read_i_1_n_0 : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal auto_start_i_1_n_0 : STD_LOGIC;
  signal axi_arid : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \axi_arid_reg_n_0_[0]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[10]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[11]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[12]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[13]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[14]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[15]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[1]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[2]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[3]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[4]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[5]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[6]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[7]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[8]\ : STD_LOGIC;
  signal \axi_arid_reg_n_0_[9]\ : STD_LOGIC;
  signal axi_awid : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \axi_awid[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awid[9]_i_1_n_0\ : STD_LOGIC;
  signal axi_state_read : STD_LOGIC;
  signal counter_offset : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \counter_offset[63]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[15]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[23]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[31]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[39]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[47]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[55]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_10_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[63]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg_reg[63]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[63]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[63]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[63]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[63]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[63]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[63]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal offset_en : STD_LOGIC;
  signal \s_axi_bid[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bid[9]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_bresp[1]_i_1_n_0\ : STD_LOGIC;
  signal s_axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rid[0]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[10]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[11]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[12]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[13]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[14]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[15]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[1]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[2]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[3]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[4]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[5]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[6]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[7]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[8]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rid[9]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_rlast\ : STD_LOGIC;
  signal s_axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal start : STD_LOGIC;
  signal \NLW_counter_reg_reg[63]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_axi_state_write[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_onehot_axi_state_write[2]_i_1\ : label is "soft_lutpair0";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_write_reg[0]\ : label is "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_write_reg[1]\ : label is "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_write_reg[2]\ : label is "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_write_reg[3]\ : label is "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_axi_state_write_reg[4]\ : label is "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010";
  attribute SOFT_HLUTNM of FSM_sequential_axi_state_read_i_1 : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES of FSM_sequential_axi_state_read_reg : label is "IDLE:0,READ_DATA:1,";
  attribute SOFT_HLUTNM of \axi_arid[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_arid[10]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_arid[11]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \axi_arid[12]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_arid[13]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \axi_arid[14]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_arid[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \axi_arid[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \axi_arid[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_arid[3]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \axi_arid[4]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_arid[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \axi_arid[6]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_arid[7]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \axi_arid[8]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_arid[9]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \axi_awid[0]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_awid[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_awid[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_awid[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_awid[13]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_awid[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_awid[15]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_awid[1]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_awid[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_awid[3]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_awid[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_awid[5]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_awid[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_awid[7]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_awid[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_awid[9]_i_1\ : label is "soft_lutpair29";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \counter_reg_reg[15]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg_reg[23]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg_reg[31]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg_reg[39]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg_reg[47]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg_reg[55]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg_reg[63]_i_2\ : label is 16;
  attribute ADDER_THRESHOLD of \counter_reg_reg[7]_i_1\ : label is 16;
  attribute SOFT_HLUTNM of \s_axi_bid[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_bid[10]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_bid[11]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_bid[12]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_bid[13]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \s_axi_bid[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_bid[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \s_axi_bid[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \s_axi_bid[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_bid[3]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_bid[4]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_bid[5]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \s_axi_bid[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_bid[7]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_bid[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_bid[9]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rid[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rid[10]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rid[11]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \s_axi_rid[12]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rid[13]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \s_axi_rid[14]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rid[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \s_axi_rid[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \s_axi_rid[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rid[3]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \s_axi_rid[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rid[5]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \s_axi_rid[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rid[7]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_rid[8]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \s_axi_rid[9]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of s_axi_rvalid_i_1 : label is "soft_lutpair1";
begin
  Q(0) <= \^q\(0);
  s_axi_rlast <= \^s_axi_rlast\;
  s_axi_wready <= \^s_axi_wready\;
\FSM_onehot_axi_state_write[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\FSM_onehot_axi_state_write[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFE000"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[1]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[2]\,
      I2 => s_axi_wvalid,
      I3 => s_axi_wlast,
      I4 => \s_axi_bresp[1]_i_1_n_0\,
      O => \FSM_onehot_axi_state_write[0]_i_2_n_0\
    );
\FSM_onehot_axi_state_write[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF4"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^q\(0),
      I2 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I3 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      O => \FSM_onehot_axi_state_write[0]_i_3_n_0\
    );
\FSM_onehot_axi_state_write[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^q\(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(1),
      I4 => \FSM_onehot_axi_state_write[4]_i_2_n_0\,
      O => \FSM_onehot_axi_state_write[1]_i_1_n_0\
    );
\FSM_onehot_axi_state_write[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00008000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \^q\(0),
      I2 => s_axi_awaddr(0),
      I3 => s_axi_awaddr(1),
      I4 => \FSM_onehot_axi_state_write[4]_i_2_n_0\,
      O => \FSM_onehot_axi_state_write[2]_i_1_n_0\
    );
\FSM_onehot_axi_state_write[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80C0C080"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write[4]_i_2_n_0\,
      I1 => s_axi_awvalid,
      I2 => \^q\(0),
      I3 => s_axi_awaddr(1),
      I4 => s_axi_awaddr(0),
      O => \FSM_onehot_axi_state_write[4]_i_1_n_0\
    );
\FSM_onehot_axi_state_write[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awaddr(3),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_awaddr(5),
      I3 => s_axi_awaddr(4),
      O => \FSM_onehot_axi_state_write[4]_i_2_n_0\
    );
\FSM_onehot_axi_state_write_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_axi_state_write[0]_i_2_n_0\,
      D => \FSM_onehot_axi_state_write[0]_i_3_n_0\,
      Q => \^q\(0),
      S => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\FSM_onehot_axi_state_write_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_axi_state_write[0]_i_2_n_0\,
      D => \FSM_onehot_axi_state_write[1]_i_1_n_0\,
      Q => \FSM_onehot_axi_state_write_reg_n_0_[1]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\FSM_onehot_axi_state_write_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_axi_state_write[0]_i_2_n_0\,
      D => \FSM_onehot_axi_state_write[2]_i_1_n_0\,
      Q => \FSM_onehot_axi_state_write_reg_n_0_[2]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\FSM_onehot_axi_state_write_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_axi_state_write[0]_i_2_n_0\,
      D => \^s_axi_wready\,
      Q => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\FSM_onehot_axi_state_write_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \FSM_onehot_axi_state_write[0]_i_2_n_0\,
      D => \FSM_onehot_axi_state_write[4]_i_1_n_0\,
      Q => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
FSM_sequential_axi_state_read_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_rready,
      I2 => axi_state_read,
      O => FSM_sequential_axi_state_read_i_1_n_0
    );
FSM_sequential_axi_state_read_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => FSM_sequential_axi_state_read_i_1_n_0,
      Q => axi_state_read,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
auto_start_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[1]\,
      I1 => s_axi_wvalid,
      O => auto_start_i_1_n_0
    );
auto_start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => auto_start_i_1_n_0,
      D => s_axi_wdata(3),
      Q => auto_start,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(0),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(0)
    );
\axi_arid[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(10),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(10)
    );
\axi_arid[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(11),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(11)
    );
\axi_arid[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(12),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(12)
    );
\axi_arid[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(13),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(13)
    );
\axi_arid[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(14),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(14)
    );
\axi_arid[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(15),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(15)
    );
\axi_arid[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(1),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(1)
    );
\axi_arid[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(2),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(2)
    );
\axi_arid[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(3),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(3)
    );
\axi_arid[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(4),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(4)
    );
\axi_arid[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(5),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(5)
    );
\axi_arid[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(6),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(6)
    );
\axi_arid[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(7),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(7)
    );
\axi_arid[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(8),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(8)
    );
\axi_arid[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arid(9),
      I1 => s_axi_arvalid,
      I2 => axi_state_read,
      O => axi_arid(9)
    );
\axi_arid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(0),
      Q => \axi_arid_reg_n_0_[0]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(10),
      Q => \axi_arid_reg_n_0_[10]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(11),
      Q => \axi_arid_reg_n_0_[11]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(12),
      Q => \axi_arid_reg_n_0_[12]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(13),
      Q => \axi_arid_reg_n_0_[13]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(14),
      Q => \axi_arid_reg_n_0_[14]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(15),
      Q => \axi_arid_reg_n_0_[15]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(1),
      Q => \axi_arid_reg_n_0_[1]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(2),
      Q => \axi_arid_reg_n_0_[2]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(3),
      Q => \axi_arid_reg_n_0_[3]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(4),
      Q => \axi_arid_reg_n_0_[4]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(5),
      Q => \axi_arid_reg_n_0_[5]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(6),
      Q => \axi_arid_reg_n_0_[6]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(7),
      Q => \axi_arid_reg_n_0_[7]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(8),
      Q => \axi_arid_reg_n_0_[8]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_arid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => axi_arid(9),
      Q => \axi_arid_reg_n_0_[9]\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(0),
      O => \axi_awid[0]_i_1_n_0\
    );
\axi_awid[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(10),
      O => \axi_awid[10]_i_1_n_0\
    );
\axi_awid[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(11),
      O => \axi_awid[11]_i_1_n_0\
    );
\axi_awid[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(12),
      O => \axi_awid[12]_i_1_n_0\
    );
\axi_awid[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(13),
      O => \axi_awid[13]_i_1_n_0\
    );
\axi_awid[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(14),
      O => \axi_awid[14]_i_1_n_0\
    );
\axi_awid[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(15),
      O => \axi_awid[15]_i_1_n_0\
    );
\axi_awid[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(1),
      O => \axi_awid[1]_i_1_n_0\
    );
\axi_awid[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(2),
      O => \axi_awid[2]_i_1_n_0\
    );
\axi_awid[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(3),
      O => \axi_awid[3]_i_1_n_0\
    );
\axi_awid[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(4),
      O => \axi_awid[4]_i_1_n_0\
    );
\axi_awid[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(5),
      O => \axi_awid[5]_i_1_n_0\
    );
\axi_awid[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(6),
      O => \axi_awid[6]_i_1_n_0\
    );
\axi_awid[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(7),
      O => \axi_awid[7]_i_1_n_0\
    );
\axi_awid[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(8),
      O => \axi_awid[8]_i_1_n_0\
    );
\axi_awid[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awid(9),
      O => \axi_awid[9]_i_1_n_0\
    );
\axi_awid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[0]_i_1_n_0\,
      Q => axi_awid(0),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[10]_i_1_n_0\,
      Q => axi_awid(10),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[11]_i_1_n_0\,
      Q => axi_awid(11),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[12]_i_1_n_0\,
      Q => axi_awid(12),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[13]_i_1_n_0\,
      Q => axi_awid(13),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[14]_i_1_n_0\,
      Q => axi_awid(14),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[15]_i_1_n_0\,
      Q => axi_awid(15),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[1]_i_1_n_0\,
      Q => axi_awid(1),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[2]_i_1_n_0\,
      Q => axi_awid(2),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[3]_i_1_n_0\,
      Q => axi_awid(3),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[4]_i_1_n_0\,
      Q => axi_awid(4),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[5]_i_1_n_0\,
      Q => axi_awid(5),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[6]_i_1_n_0\,
      Q => axi_awid(6),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[7]_i_1_n_0\,
      Q => axi_awid(7),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[8]_i_1_n_0\,
      Q => axi_awid(8),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\axi_awid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \^q\(0),
      D => \axi_awid[9]_i_1_n_0\,
      Q => axi_awid(9),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[2]\,
      I1 => s_axi_wvalid,
      O => \counter_offset[63]_i_1_n_0\
    );
\counter_offset_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(0),
      Q => counter_offset(0),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(10),
      Q => counter_offset(10),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(11),
      Q => counter_offset(11),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(12),
      Q => counter_offset(12),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(13),
      Q => counter_offset(13),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(14),
      Q => counter_offset(14),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(15),
      Q => counter_offset(15),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(16),
      Q => counter_offset(16),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(17),
      Q => counter_offset(17),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(18),
      Q => counter_offset(18),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(19),
      Q => counter_offset(19),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(1),
      Q => counter_offset(1),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(20),
      Q => counter_offset(20),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(21),
      Q => counter_offset(21),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(22),
      Q => counter_offset(22),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(23),
      Q => counter_offset(23),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(24),
      Q => counter_offset(24),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(25),
      Q => counter_offset(25),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(26),
      Q => counter_offset(26),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(27),
      Q => counter_offset(27),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(28),
      Q => counter_offset(28),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(29),
      Q => counter_offset(29),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(2),
      Q => counter_offset(2),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(30),
      Q => counter_offset(30),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(31),
      Q => counter_offset(31),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(32),
      Q => counter_offset(32),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(33),
      Q => counter_offset(33),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(34),
      Q => counter_offset(34),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(35),
      Q => counter_offset(35),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(36),
      Q => counter_offset(36),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(37),
      Q => counter_offset(37),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(38),
      Q => counter_offset(38),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(39),
      Q => counter_offset(39),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(3),
      Q => counter_offset(3),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(40),
      Q => counter_offset(40),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(41),
      Q => counter_offset(41),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(42),
      Q => counter_offset(42),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(43),
      Q => counter_offset(43),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(44),
      Q => counter_offset(44),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(45),
      Q => counter_offset(45),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(46),
      Q => counter_offset(46),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(47),
      Q => counter_offset(47),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(48),
      Q => counter_offset(48),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(49),
      Q => counter_offset(49),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(4),
      Q => counter_offset(4),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(50),
      Q => counter_offset(50),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(51),
      Q => counter_offset(51),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(52),
      Q => counter_offset(52),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(53),
      Q => counter_offset(53),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(54),
      Q => counter_offset(54),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(55),
      Q => counter_offset(55),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(56),
      Q => counter_offset(56),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(57),
      Q => counter_offset(57),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(58),
      Q => counter_offset(58),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(59),
      Q => counter_offset(59),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(5),
      Q => counter_offset(5),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(60),
      Q => counter_offset(60),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(61),
      Q => counter_offset(61),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(62),
      Q => counter_offset(62),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(63),
      Q => counter_offset(63),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(6),
      Q => counter_offset(6),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(7),
      Q => counter_offset(7),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(8),
      Q => counter_offset(8),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_offset_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_offset[63]_i_1_n_0\,
      D => s_axi_wdata(9),
      Q => counter_offset(9),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\counter_reg[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(15),
      I1 => offset_en,
      I2 => counter(15),
      O => \counter_reg[15]_i_2_n_0\
    );
\counter_reg[15]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(14),
      I1 => offset_en,
      I2 => counter(14),
      O => \counter_reg[15]_i_3_n_0\
    );
\counter_reg[15]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(13),
      I1 => offset_en,
      I2 => counter(13),
      O => \counter_reg[15]_i_4_n_0\
    );
\counter_reg[15]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(12),
      I1 => offset_en,
      I2 => counter(12),
      O => \counter_reg[15]_i_5_n_0\
    );
\counter_reg[15]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(11),
      I1 => offset_en,
      I2 => counter(11),
      O => \counter_reg[15]_i_6_n_0\
    );
\counter_reg[15]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(10),
      I1 => offset_en,
      I2 => counter(10),
      O => \counter_reg[15]_i_7_n_0\
    );
\counter_reg[15]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(9),
      I1 => offset_en,
      I2 => counter(9),
      O => \counter_reg[15]_i_8_n_0\
    );
\counter_reg[15]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(8),
      I1 => offset_en,
      I2 => counter(8),
      O => \counter_reg[15]_i_9_n_0\
    );
\counter_reg[23]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(23),
      I1 => offset_en,
      I2 => counter(23),
      O => \counter_reg[23]_i_2_n_0\
    );
\counter_reg[23]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(22),
      I1 => offset_en,
      I2 => counter(22),
      O => \counter_reg[23]_i_3_n_0\
    );
\counter_reg[23]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(21),
      I1 => offset_en,
      I2 => counter(21),
      O => \counter_reg[23]_i_4_n_0\
    );
\counter_reg[23]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(20),
      I1 => offset_en,
      I2 => counter(20),
      O => \counter_reg[23]_i_5_n_0\
    );
\counter_reg[23]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(19),
      I1 => offset_en,
      I2 => counter(19),
      O => \counter_reg[23]_i_6_n_0\
    );
\counter_reg[23]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(18),
      I1 => offset_en,
      I2 => counter(18),
      O => \counter_reg[23]_i_7_n_0\
    );
\counter_reg[23]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(17),
      I1 => offset_en,
      I2 => counter(17),
      O => \counter_reg[23]_i_8_n_0\
    );
\counter_reg[23]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(16),
      I1 => offset_en,
      I2 => counter(16),
      O => \counter_reg[23]_i_9_n_0\
    );
\counter_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(31),
      I1 => offset_en,
      I2 => counter(31),
      O => \counter_reg[31]_i_2_n_0\
    );
\counter_reg[31]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(30),
      I1 => offset_en,
      I2 => counter(30),
      O => \counter_reg[31]_i_3_n_0\
    );
\counter_reg[31]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(29),
      I1 => offset_en,
      I2 => counter(29),
      O => \counter_reg[31]_i_4_n_0\
    );
\counter_reg[31]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(28),
      I1 => offset_en,
      I2 => counter(28),
      O => \counter_reg[31]_i_5_n_0\
    );
\counter_reg[31]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(27),
      I1 => offset_en,
      I2 => counter(27),
      O => \counter_reg[31]_i_6_n_0\
    );
\counter_reg[31]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(26),
      I1 => offset_en,
      I2 => counter(26),
      O => \counter_reg[31]_i_7_n_0\
    );
\counter_reg[31]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(25),
      I1 => offset_en,
      I2 => counter(25),
      O => \counter_reg[31]_i_8_n_0\
    );
\counter_reg[31]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(24),
      I1 => offset_en,
      I2 => counter(24),
      O => \counter_reg[31]_i_9_n_0\
    );
\counter_reg[39]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(39),
      I1 => offset_en,
      I2 => counter(39),
      O => \counter_reg[39]_i_2_n_0\
    );
\counter_reg[39]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(38),
      I1 => offset_en,
      I2 => counter(38),
      O => \counter_reg[39]_i_3_n_0\
    );
\counter_reg[39]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(37),
      I1 => offset_en,
      I2 => counter(37),
      O => \counter_reg[39]_i_4_n_0\
    );
\counter_reg[39]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(36),
      I1 => offset_en,
      I2 => counter(36),
      O => \counter_reg[39]_i_5_n_0\
    );
\counter_reg[39]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(35),
      I1 => offset_en,
      I2 => counter(35),
      O => \counter_reg[39]_i_6_n_0\
    );
\counter_reg[39]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(34),
      I1 => offset_en,
      I2 => counter(34),
      O => \counter_reg[39]_i_7_n_0\
    );
\counter_reg[39]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(33),
      I1 => offset_en,
      I2 => counter(33),
      O => \counter_reg[39]_i_8_n_0\
    );
\counter_reg[39]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(32),
      I1 => offset_en,
      I2 => counter(32),
      O => \counter_reg[39]_i_9_n_0\
    );
\counter_reg[47]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(47),
      I1 => offset_en,
      I2 => counter(47),
      O => \counter_reg[47]_i_2_n_0\
    );
\counter_reg[47]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(46),
      I1 => offset_en,
      I2 => counter(46),
      O => \counter_reg[47]_i_3_n_0\
    );
\counter_reg[47]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(45),
      I1 => offset_en,
      I2 => counter(45),
      O => \counter_reg[47]_i_4_n_0\
    );
\counter_reg[47]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(44),
      I1 => offset_en,
      I2 => counter(44),
      O => \counter_reg[47]_i_5_n_0\
    );
\counter_reg[47]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(43),
      I1 => offset_en,
      I2 => counter(43),
      O => \counter_reg[47]_i_6_n_0\
    );
\counter_reg[47]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(42),
      I1 => offset_en,
      I2 => counter(42),
      O => \counter_reg[47]_i_7_n_0\
    );
\counter_reg[47]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(41),
      I1 => offset_en,
      I2 => counter(41),
      O => \counter_reg[47]_i_8_n_0\
    );
\counter_reg[47]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(40),
      I1 => offset_en,
      I2 => counter(40),
      O => \counter_reg[47]_i_9_n_0\
    );
\counter_reg[55]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(55),
      I1 => offset_en,
      I2 => counter(55),
      O => \counter_reg[55]_i_2_n_0\
    );
\counter_reg[55]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(54),
      I1 => offset_en,
      I2 => counter(54),
      O => \counter_reg[55]_i_3_n_0\
    );
\counter_reg[55]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(53),
      I1 => offset_en,
      I2 => counter(53),
      O => \counter_reg[55]_i_4_n_0\
    );
\counter_reg[55]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(52),
      I1 => offset_en,
      I2 => counter(52),
      O => \counter_reg[55]_i_5_n_0\
    );
\counter_reg[55]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(51),
      I1 => offset_en,
      I2 => counter(51),
      O => \counter_reg[55]_i_6_n_0\
    );
\counter_reg[55]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(50),
      I1 => offset_en,
      I2 => counter(50),
      O => \counter_reg[55]_i_7_n_0\
    );
\counter_reg[55]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(49),
      I1 => offset_en,
      I2 => counter(49),
      O => \counter_reg[55]_i_8_n_0\
    );
\counter_reg[55]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(48),
      I1 => offset_en,
      I2 => counter(48),
      O => \counter_reg[55]_i_9_n_0\
    );
\counter_reg[63]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => offset_en,
      I1 => start,
      O => offset_en_reg_0
    );
\counter_reg[63]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(56),
      I1 => offset_en,
      I2 => counter(56),
      O => \counter_reg[63]_i_10_n_0\
    );
\counter_reg[63]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(63),
      I1 => offset_en,
      I2 => counter(63),
      O => \counter_reg[63]_i_3_n_0\
    );
\counter_reg[63]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(62),
      I1 => offset_en,
      I2 => counter(62),
      O => \counter_reg[63]_i_4_n_0\
    );
\counter_reg[63]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(61),
      I1 => offset_en,
      I2 => counter(61),
      O => \counter_reg[63]_i_5_n_0\
    );
\counter_reg[63]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(60),
      I1 => offset_en,
      I2 => counter(60),
      O => \counter_reg[63]_i_6_n_0\
    );
\counter_reg[63]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(59),
      I1 => offset_en,
      I2 => counter(59),
      O => \counter_reg[63]_i_7_n_0\
    );
\counter_reg[63]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(58),
      I1 => offset_en,
      I2 => counter(58),
      O => \counter_reg[63]_i_8_n_0\
    );
\counter_reg[63]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(57),
      I1 => offset_en,
      I2 => counter(57),
      O => \counter_reg[63]_i_9_n_0\
    );
\counter_reg[7]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C5"
    )
        port map (
      I0 => counter(0),
      I1 => counter_offset(0),
      I2 => offset_en,
      O => \counter_reg[7]_i_10_n_0\
    );
\counter_reg[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(0),
      I1 => offset_en,
      I2 => counter(0),
      O => \counter_reg[7]_i_2_n_0\
    );
\counter_reg[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(7),
      I1 => offset_en,
      I2 => counter(7),
      O => \counter_reg[7]_i_3_n_0\
    );
\counter_reg[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(6),
      I1 => offset_en,
      I2 => counter(6),
      O => \counter_reg[7]_i_4_n_0\
    );
\counter_reg[7]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(5),
      I1 => offset_en,
      I2 => counter(5),
      O => \counter_reg[7]_i_5_n_0\
    );
\counter_reg[7]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(4),
      I1 => offset_en,
      I2 => counter(4),
      O => \counter_reg[7]_i_6_n_0\
    );
\counter_reg[7]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(3),
      I1 => offset_en,
      I2 => counter(3),
      O => \counter_reg[7]_i_7_n_0\
    );
\counter_reg[7]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(2),
      I1 => offset_en,
      I2 => counter(2),
      O => \counter_reg[7]_i_8_n_0\
    );
\counter_reg[7]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_offset(1),
      I1 => offset_en,
      I2 => counter(1),
      O => \counter_reg[7]_i_9_n_0\
    );
\counter_reg_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg_reg[15]_i_1_n_0\,
      CO(6) => \counter_reg_reg[15]_i_1_n_1\,
      CO(5) => \counter_reg_reg[15]_i_1_n_2\,
      CO(4) => \counter_reg_reg[15]_i_1_n_3\,
      CO(3) => \counter_reg_reg[15]_i_1_n_4\,
      CO(2) => \counter_reg_reg[15]_i_1_n_5\,
      CO(1) => \counter_reg_reg[15]_i_1_n_6\,
      CO(0) => \counter_reg_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \counter_offset_reg[15]_0\(7 downto 0),
      S(7) => \counter_reg[15]_i_2_n_0\,
      S(6) => \counter_reg[15]_i_3_n_0\,
      S(5) => \counter_reg[15]_i_4_n_0\,
      S(4) => \counter_reg[15]_i_5_n_0\,
      S(3) => \counter_reg[15]_i_6_n_0\,
      S(2) => \counter_reg[15]_i_7_n_0\,
      S(1) => \counter_reg[15]_i_8_n_0\,
      S(0) => \counter_reg[15]_i_9_n_0\
    );
\counter_reg_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg_reg[23]_i_1_n_0\,
      CO(6) => \counter_reg_reg[23]_i_1_n_1\,
      CO(5) => \counter_reg_reg[23]_i_1_n_2\,
      CO(4) => \counter_reg_reg[23]_i_1_n_3\,
      CO(3) => \counter_reg_reg[23]_i_1_n_4\,
      CO(2) => \counter_reg_reg[23]_i_1_n_5\,
      CO(1) => \counter_reg_reg[23]_i_1_n_6\,
      CO(0) => \counter_reg_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \counter_offset_reg[23]_0\(7 downto 0),
      S(7) => \counter_reg[23]_i_2_n_0\,
      S(6) => \counter_reg[23]_i_3_n_0\,
      S(5) => \counter_reg[23]_i_4_n_0\,
      S(4) => \counter_reg[23]_i_5_n_0\,
      S(3) => \counter_reg[23]_i_6_n_0\,
      S(2) => \counter_reg[23]_i_7_n_0\,
      S(1) => \counter_reg[23]_i_8_n_0\,
      S(0) => \counter_reg[23]_i_9_n_0\
    );
\counter_reg_reg[31]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg_reg[31]_i_1_n_0\,
      CO(6) => \counter_reg_reg[31]_i_1_n_1\,
      CO(5) => \counter_reg_reg[31]_i_1_n_2\,
      CO(4) => \counter_reg_reg[31]_i_1_n_3\,
      CO(3) => \counter_reg_reg[31]_i_1_n_4\,
      CO(2) => \counter_reg_reg[31]_i_1_n_5\,
      CO(1) => \counter_reg_reg[31]_i_1_n_6\,
      CO(0) => \counter_reg_reg[31]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \counter_offset_reg[31]_0\(7 downto 0),
      S(7) => \counter_reg[31]_i_2_n_0\,
      S(6) => \counter_reg[31]_i_3_n_0\,
      S(5) => \counter_reg[31]_i_4_n_0\,
      S(4) => \counter_reg[31]_i_5_n_0\,
      S(3) => \counter_reg[31]_i_6_n_0\,
      S(2) => \counter_reg[31]_i_7_n_0\,
      S(1) => \counter_reg[31]_i_8_n_0\,
      S(0) => \counter_reg[31]_i_9_n_0\
    );
\counter_reg_reg[39]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg_reg[31]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg_reg[39]_i_1_n_0\,
      CO(6) => \counter_reg_reg[39]_i_1_n_1\,
      CO(5) => \counter_reg_reg[39]_i_1_n_2\,
      CO(4) => \counter_reg_reg[39]_i_1_n_3\,
      CO(3) => \counter_reg_reg[39]_i_1_n_4\,
      CO(2) => \counter_reg_reg[39]_i_1_n_5\,
      CO(1) => \counter_reg_reg[39]_i_1_n_6\,
      CO(0) => \counter_reg_reg[39]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \counter_offset_reg[39]_0\(7 downto 0),
      S(7) => \counter_reg[39]_i_2_n_0\,
      S(6) => \counter_reg[39]_i_3_n_0\,
      S(5) => \counter_reg[39]_i_4_n_0\,
      S(4) => \counter_reg[39]_i_5_n_0\,
      S(3) => \counter_reg[39]_i_6_n_0\,
      S(2) => \counter_reg[39]_i_7_n_0\,
      S(1) => \counter_reg[39]_i_8_n_0\,
      S(0) => \counter_reg[39]_i_9_n_0\
    );
\counter_reg_reg[47]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg_reg[39]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg_reg[47]_i_1_n_0\,
      CO(6) => \counter_reg_reg[47]_i_1_n_1\,
      CO(5) => \counter_reg_reg[47]_i_1_n_2\,
      CO(4) => \counter_reg_reg[47]_i_1_n_3\,
      CO(3) => \counter_reg_reg[47]_i_1_n_4\,
      CO(2) => \counter_reg_reg[47]_i_1_n_5\,
      CO(1) => \counter_reg_reg[47]_i_1_n_6\,
      CO(0) => \counter_reg_reg[47]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \counter_offset_reg[47]_0\(7 downto 0),
      S(7) => \counter_reg[47]_i_2_n_0\,
      S(6) => \counter_reg[47]_i_3_n_0\,
      S(5) => \counter_reg[47]_i_4_n_0\,
      S(4) => \counter_reg[47]_i_5_n_0\,
      S(3) => \counter_reg[47]_i_6_n_0\,
      S(2) => \counter_reg[47]_i_7_n_0\,
      S(1) => \counter_reg[47]_i_8_n_0\,
      S(0) => \counter_reg[47]_i_9_n_0\
    );
\counter_reg_reg[55]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg_reg[47]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \counter_reg_reg[55]_i_1_n_0\,
      CO(6) => \counter_reg_reg[55]_i_1_n_1\,
      CO(5) => \counter_reg_reg[55]_i_1_n_2\,
      CO(4) => \counter_reg_reg[55]_i_1_n_3\,
      CO(3) => \counter_reg_reg[55]_i_1_n_4\,
      CO(2) => \counter_reg_reg[55]_i_1_n_5\,
      CO(1) => \counter_reg_reg[55]_i_1_n_6\,
      CO(0) => \counter_reg_reg[55]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \counter_offset_reg[55]_0\(7 downto 0),
      S(7) => \counter_reg[55]_i_2_n_0\,
      S(6) => \counter_reg[55]_i_3_n_0\,
      S(5) => \counter_reg[55]_i_4_n_0\,
      S(4) => \counter_reg[55]_i_5_n_0\,
      S(3) => \counter_reg[55]_i_6_n_0\,
      S(2) => \counter_reg[55]_i_7_n_0\,
      S(1) => \counter_reg[55]_i_8_n_0\,
      S(0) => \counter_reg[55]_i_9_n_0\
    );
\counter_reg_reg[63]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \counter_reg_reg[55]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_counter_reg_reg[63]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \counter_reg_reg[63]_i_2_n_1\,
      CO(5) => \counter_reg_reg[63]_i_2_n_2\,
      CO(4) => \counter_reg_reg[63]_i_2_n_3\,
      CO(3) => \counter_reg_reg[63]_i_2_n_4\,
      CO(2) => \counter_reg_reg[63]_i_2_n_5\,
      CO(1) => \counter_reg_reg[63]_i_2_n_6\,
      CO(0) => \counter_reg_reg[63]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => \counter_offset_reg[63]_0\(7 downto 0),
      S(7) => \counter_reg[63]_i_3_n_0\,
      S(6) => \counter_reg[63]_i_4_n_0\,
      S(5) => \counter_reg[63]_i_5_n_0\,
      S(4) => \counter_reg[63]_i_6_n_0\,
      S(3) => \counter_reg[63]_i_7_n_0\,
      S(2) => \counter_reg[63]_i_8_n_0\,
      S(1) => \counter_reg[63]_i_9_n_0\,
      S(0) => \counter_reg[63]_i_10_n_0\
    );
\counter_reg_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \counter_reg_reg[7]_i_1_n_0\,
      CO(6) => \counter_reg_reg[7]_i_1_n_1\,
      CO(5) => \counter_reg_reg[7]_i_1_n_2\,
      CO(4) => \counter_reg_reg[7]_i_1_n_3\,
      CO(3) => \counter_reg_reg[7]_i_1_n_4\,
      CO(2) => \counter_reg_reg[7]_i_1_n_5\,
      CO(1) => \counter_reg_reg[7]_i_1_n_6\,
      CO(0) => \counter_reg_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => \counter_reg[7]_i_2_n_0\,
      O(7 downto 0) => O(7 downto 0),
      S(7) => \counter_reg[7]_i_3_n_0\,
      S(6) => \counter_reg[7]_i_4_n_0\,
      S(5) => \counter_reg[7]_i_5_n_0\,
      S(4) => \counter_reg[7]_i_6_n_0\,
      S(3) => \counter_reg[7]_i_7_n_0\,
      S(2) => \counter_reg[7]_i_8_n_0\,
      S(1) => \counter_reg[7]_i_9_n_0\,
      S(0) => \counter_reg[7]_i_10_n_0\
    );
offset_en_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => auto_start_i_1_n_0,
      D => s_axi_wdata(2),
      Q => offset_en,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
reset_reg: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => auto_start_i_1_n_0,
      D => s_axi_wdata(1),
      Q => reset,
      S => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axi_state_read,
      O => s_axi_arready
    );
\s_axi_bid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(0),
      O => \s_axi_bid[0]_i_1_n_0\
    );
\s_axi_bid[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(10),
      O => \s_axi_bid[10]_i_1_n_0\
    );
\s_axi_bid[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(11),
      O => \s_axi_bid[11]_i_1_n_0\
    );
\s_axi_bid[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(12),
      O => \s_axi_bid[12]_i_1_n_0\
    );
\s_axi_bid[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(13),
      O => \s_axi_bid[13]_i_1_n_0\
    );
\s_axi_bid[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(14),
      O => \s_axi_bid[14]_i_1_n_0\
    );
\s_axi_bid[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(15),
      O => \s_axi_bid[15]_i_1_n_0\
    );
\s_axi_bid[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(1),
      O => \s_axi_bid[1]_i_1_n_0\
    );
\s_axi_bid[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(2),
      O => \s_axi_bid[2]_i_1_n_0\
    );
\s_axi_bid[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(3),
      O => \s_axi_bid[3]_i_1_n_0\
    );
\s_axi_bid[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(4),
      O => \s_axi_bid[4]_i_1_n_0\
    );
\s_axi_bid[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(5),
      O => \s_axi_bid[5]_i_1_n_0\
    );
\s_axi_bid[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(6),
      O => \s_axi_bid[6]_i_1_n_0\
    );
\s_axi_bid[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(7),
      O => \s_axi_bid[7]_i_1_n_0\
    );
\s_axi_bid[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(8),
      O => \s_axi_bid[8]_i_1_n_0\
    );
\s_axi_bid[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => axi_awid(9),
      O => \s_axi_bid[9]_i_1_n_0\
    );
\s_axi_bid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[0]_i_1_n_0\,
      Q => s_axi_bid(0),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[10]_i_1_n_0\,
      Q => s_axi_bid(10),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[11]_i_1_n_0\,
      Q => s_axi_bid(11),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[12]_i_1_n_0\,
      Q => s_axi_bid(12),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[13]_i_1_n_0\,
      Q => s_axi_bid(13),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[14]_i_1_n_0\,
      Q => s_axi_bid(14),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[15]_i_1_n_0\,
      Q => s_axi_bid(15),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[1]_i_1_n_0\,
      Q => s_axi_bid(1),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[2]_i_1_n_0\,
      Q => s_axi_bid(2),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[3]_i_1_n_0\,
      Q => s_axi_bid(3),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[4]_i_1_n_0\,
      Q => s_axi_bid(4),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[5]_i_1_n_0\,
      Q => s_axi_bid(5),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[6]_i_1_n_0\,
      Q => s_axi_bid(6),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[7]_i_1_n_0\,
      Q => s_axi_bid(7),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[8]_i_1_n_0\,
      Q => s_axi_bid(8),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \s_axi_bid[9]_i_1_n_0\,
      Q => s_axi_bid(9),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_bresp[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFA8"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I3 => \^q\(0),
      O => \s_axi_bresp[1]_i_1_n_0\
    );
\s_axi_bresp_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      Q => s_axi_bresp(0),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
s_axi_bvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[4]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[3]\,
      I2 => s_axi_bready,
      O => s_axi_bvalid_i_1_n_0
    );
s_axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \s_axi_bresp[1]_i_1_n_0\,
      D => s_axi_bvalid_i_1_n_0,
      Q => s_axi_bvalid,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[0]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[0]_i_1_n_0\
    );
\s_axi_rid[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[10]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[10]_i_1_n_0\
    );
\s_axi_rid[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[11]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[11]_i_1_n_0\
    );
\s_axi_rid[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[12]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[12]_i_1_n_0\
    );
\s_axi_rid[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[13]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[13]_i_1_n_0\
    );
\s_axi_rid[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[14]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[14]_i_1_n_0\
    );
\s_axi_rid[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[15]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[15]_i_1_n_0\
    );
\s_axi_rid[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[1]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[1]_i_1_n_0\
    );
\s_axi_rid[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[2]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[2]_i_1_n_0\
    );
\s_axi_rid[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[3]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[3]_i_1_n_0\
    );
\s_axi_rid[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[4]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[4]_i_1_n_0\
    );
\s_axi_rid[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[5]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[5]_i_1_n_0\
    );
\s_axi_rid[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[6]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[6]_i_1_n_0\
    );
\s_axi_rid[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[7]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[7]_i_1_n_0\
    );
\s_axi_rid[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[8]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[8]_i_1_n_0\
    );
\s_axi_rid[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => axi_state_read,
      I1 => \axi_arid_reg_n_0_[9]\,
      I2 => s_axi_rready,
      O => \s_axi_rid[9]_i_1_n_0\
    );
\s_axi_rid_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[0]_i_1_n_0\,
      Q => s_axi_rid(0),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[10]_i_1_n_0\,
      Q => s_axi_rid(10),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[11]_i_1_n_0\,
      Q => s_axi_rid(11),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[12]_i_1_n_0\,
      Q => s_axi_rid(12),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[13]_i_1_n_0\,
      Q => s_axi_rid(13),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[14]_i_1_n_0\,
      Q => s_axi_rid(14),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[15]_i_1_n_0\,
      Q => s_axi_rid(15),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[1]_i_1_n_0\,
      Q => s_axi_rid(1),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[2]_i_1_n_0\,
      Q => s_axi_rid(2),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[3]_i_1_n_0\,
      Q => s_axi_rid(3),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[4]_i_1_n_0\,
      Q => s_axi_rid(4),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[5]_i_1_n_0\,
      Q => s_axi_rid(5),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[6]_i_1_n_0\,
      Q => s_axi_rid(6),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[7]_i_1_n_0\,
      Q => s_axi_rid(7),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[8]_i_1_n_0\,
      Q => s_axi_rid(8),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
\s_axi_rid_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_rid[9]_i_1_n_0\,
      Q => s_axi_rid(9),
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
s_axi_rvalid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"C8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => axi_state_read,
      I2 => \^s_axi_rlast\,
      O => s_axi_rvalid_i_1_n_0
    );
s_axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_1_n_0,
      Q => \^s_axi_rlast\,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_axi_state_write_reg_n_0_[1]\,
      I1 => \FSM_onehot_axi_state_write_reg_n_0_[2]\,
      O => \^s_axi_wready\
    );
start_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => auto_start_i_1_n_0,
      D => s_axi_wdata(0),
      Q => start,
      R => \FSM_onehot_axi_state_write[0]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Timestamp_Counter is
  port (
    counter : out STD_LOGIC_VECTOR ( 63 downto 0 );
    reset : in STD_LOGIC;
    \counter_reg_reg[63]_0\ : in STD_LOGIC;
    O : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \counter_reg_reg[15]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_reg_reg[23]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_reg_reg[31]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_reg_reg[39]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_reg_reg[47]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_reg_reg[55]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    \counter_reg_reg[63]_1\ : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Timestamp_Counter;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Timestamp_Counter is
begin
\counter_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(0),
      Q => counter(0),
      R => reset
    );
\counter_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(2),
      Q => counter(10),
      R => reset
    );
\counter_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(3),
      Q => counter(11),
      R => reset
    );
\counter_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(4),
      Q => counter(12),
      R => reset
    );
\counter_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(5),
      Q => counter(13),
      R => reset
    );
\counter_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(6),
      Q => counter(14),
      R => reset
    );
\counter_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(7),
      Q => counter(15),
      R => reset
    );
\counter_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(0),
      Q => counter(16),
      R => reset
    );
\counter_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(1),
      Q => counter(17),
      R => reset
    );
\counter_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(2),
      Q => counter(18),
      R => reset
    );
\counter_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(3),
      Q => counter(19),
      R => reset
    );
\counter_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(1),
      Q => counter(1),
      R => reset
    );
\counter_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(4),
      Q => counter(20),
      R => reset
    );
\counter_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(5),
      Q => counter(21),
      R => reset
    );
\counter_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(6),
      Q => counter(22),
      R => reset
    );
\counter_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[23]_0\(7),
      Q => counter(23),
      R => reset
    );
\counter_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(0),
      Q => counter(24),
      R => reset
    );
\counter_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(1),
      Q => counter(25),
      R => reset
    );
\counter_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(2),
      Q => counter(26),
      R => reset
    );
\counter_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(3),
      Q => counter(27),
      R => reset
    );
\counter_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(4),
      Q => counter(28),
      R => reset
    );
\counter_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(5),
      Q => counter(29),
      R => reset
    );
\counter_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(2),
      Q => counter(2),
      R => reset
    );
\counter_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(6),
      Q => counter(30),
      R => reset
    );
\counter_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[31]_0\(7),
      Q => counter(31),
      R => reset
    );
\counter_reg_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(0),
      Q => counter(32),
      R => reset
    );
\counter_reg_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(1),
      Q => counter(33),
      R => reset
    );
\counter_reg_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(2),
      Q => counter(34),
      R => reset
    );
\counter_reg_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(3),
      Q => counter(35),
      R => reset
    );
\counter_reg_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(4),
      Q => counter(36),
      R => reset
    );
\counter_reg_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(5),
      Q => counter(37),
      R => reset
    );
\counter_reg_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(6),
      Q => counter(38),
      R => reset
    );
\counter_reg_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[39]_0\(7),
      Q => counter(39),
      R => reset
    );
\counter_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(3),
      Q => counter(3),
      R => reset
    );
\counter_reg_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(0),
      Q => counter(40),
      R => reset
    );
\counter_reg_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(1),
      Q => counter(41),
      R => reset
    );
\counter_reg_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(2),
      Q => counter(42),
      R => reset
    );
\counter_reg_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(3),
      Q => counter(43),
      R => reset
    );
\counter_reg_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(4),
      Q => counter(44),
      R => reset
    );
\counter_reg_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(5),
      Q => counter(45),
      R => reset
    );
\counter_reg_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(6),
      Q => counter(46),
      R => reset
    );
\counter_reg_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[47]_0\(7),
      Q => counter(47),
      R => reset
    );
\counter_reg_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(0),
      Q => counter(48),
      R => reset
    );
\counter_reg_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(1),
      Q => counter(49),
      R => reset
    );
\counter_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(4),
      Q => counter(4),
      R => reset
    );
\counter_reg_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(2),
      Q => counter(50),
      R => reset
    );
\counter_reg_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(3),
      Q => counter(51),
      R => reset
    );
\counter_reg_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(4),
      Q => counter(52),
      R => reset
    );
\counter_reg_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(5),
      Q => counter(53),
      R => reset
    );
\counter_reg_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(6),
      Q => counter(54),
      R => reset
    );
\counter_reg_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[55]_0\(7),
      Q => counter(55),
      R => reset
    );
\counter_reg_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(0),
      Q => counter(56),
      R => reset
    );
\counter_reg_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(1),
      Q => counter(57),
      R => reset
    );
\counter_reg_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(2),
      Q => counter(58),
      R => reset
    );
\counter_reg_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(3),
      Q => counter(59),
      R => reset
    );
\counter_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(5),
      Q => counter(5),
      R => reset
    );
\counter_reg_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(4),
      Q => counter(60),
      R => reset
    );
\counter_reg_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(5),
      Q => counter(61),
      R => reset
    );
\counter_reg_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(6),
      Q => counter(62),
      R => reset
    );
\counter_reg_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[63]_1\(7),
      Q => counter(63),
      R => reset
    );
\counter_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(6),
      Q => counter(6),
      R => reset
    );
\counter_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => O(7),
      Q => counter(7),
      R => reset
    );
\counter_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(0),
      Q => counter(8),
      R => reset
    );
\counter_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \counter_reg_reg[63]_0\,
      D => \counter_reg_reg[15]_0\(1),
      Q => counter(9),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeController is
  port (
    counter : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wready : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    auto_start : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeController;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeController is
  signal axi2com_0_n_10 : STD_LOGIC;
  signal axi2com_0_n_11 : STD_LOGIC;
  signal axi2com_0_n_12 : STD_LOGIC;
  signal axi2com_0_n_13 : STD_LOGIC;
  signal axi2com_0_n_14 : STD_LOGIC;
  signal axi2com_0_n_15 : STD_LOGIC;
  signal axi2com_0_n_16 : STD_LOGIC;
  signal axi2com_0_n_17 : STD_LOGIC;
  signal axi2com_0_n_18 : STD_LOGIC;
  signal axi2com_0_n_19 : STD_LOGIC;
  signal axi2com_0_n_20 : STD_LOGIC;
  signal axi2com_0_n_21 : STD_LOGIC;
  signal axi2com_0_n_22 : STD_LOGIC;
  signal axi2com_0_n_23 : STD_LOGIC;
  signal axi2com_0_n_24 : STD_LOGIC;
  signal axi2com_0_n_25 : STD_LOGIC;
  signal axi2com_0_n_26 : STD_LOGIC;
  signal axi2com_0_n_27 : STD_LOGIC;
  signal axi2com_0_n_28 : STD_LOGIC;
  signal axi2com_0_n_29 : STD_LOGIC;
  signal axi2com_0_n_30 : STD_LOGIC;
  signal axi2com_0_n_31 : STD_LOGIC;
  signal axi2com_0_n_32 : STD_LOGIC;
  signal axi2com_0_n_33 : STD_LOGIC;
  signal axi2com_0_n_34 : STD_LOGIC;
  signal axi2com_0_n_35 : STD_LOGIC;
  signal axi2com_0_n_36 : STD_LOGIC;
  signal axi2com_0_n_37 : STD_LOGIC;
  signal axi2com_0_n_38 : STD_LOGIC;
  signal axi2com_0_n_39 : STD_LOGIC;
  signal axi2com_0_n_40 : STD_LOGIC;
  signal axi2com_0_n_41 : STD_LOGIC;
  signal axi2com_0_n_42 : STD_LOGIC;
  signal axi2com_0_n_43 : STD_LOGIC;
  signal axi2com_0_n_44 : STD_LOGIC;
  signal axi2com_0_n_45 : STD_LOGIC;
  signal axi2com_0_n_46 : STD_LOGIC;
  signal axi2com_0_n_47 : STD_LOGIC;
  signal axi2com_0_n_48 : STD_LOGIC;
  signal axi2com_0_n_49 : STD_LOGIC;
  signal axi2com_0_n_5 : STD_LOGIC;
  signal axi2com_0_n_50 : STD_LOGIC;
  signal axi2com_0_n_51 : STD_LOGIC;
  signal axi2com_0_n_52 : STD_LOGIC;
  signal axi2com_0_n_53 : STD_LOGIC;
  signal axi2com_0_n_54 : STD_LOGIC;
  signal axi2com_0_n_55 : STD_LOGIC;
  signal axi2com_0_n_56 : STD_LOGIC;
  signal axi2com_0_n_57 : STD_LOGIC;
  signal axi2com_0_n_58 : STD_LOGIC;
  signal axi2com_0_n_59 : STD_LOGIC;
  signal axi2com_0_n_6 : STD_LOGIC;
  signal axi2com_0_n_60 : STD_LOGIC;
  signal axi2com_0_n_61 : STD_LOGIC;
  signal axi2com_0_n_62 : STD_LOGIC;
  signal axi2com_0_n_63 : STD_LOGIC;
  signal axi2com_0_n_64 : STD_LOGIC;
  signal axi2com_0_n_65 : STD_LOGIC;
  signal axi2com_0_n_66 : STD_LOGIC;
  signal axi2com_0_n_67 : STD_LOGIC;
  signal axi2com_0_n_68 : STD_LOGIC;
  signal axi2com_0_n_69 : STD_LOGIC;
  signal axi2com_0_n_7 : STD_LOGIC;
  signal axi2com_0_n_8 : STD_LOGIC;
  signal axi2com_0_n_9 : STD_LOGIC;
  signal \^counter\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal reset : STD_LOGIC;
begin
  counter(63 downto 0) <= \^counter\(63 downto 0);
axi2com_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI2COM
     port map (
      O(7) => axi2com_0_n_5,
      O(6) => axi2com_0_n_6,
      O(5) => axi2com_0_n_7,
      O(4) => axi2com_0_n_8,
      O(3) => axi2com_0_n_9,
      O(2) => axi2com_0_n_10,
      O(1) => axi2com_0_n_11,
      O(0) => axi2com_0_n_12,
      Q(0) => s_axi_awready,
      auto_start => auto_start,
      counter(63 downto 0) => \^counter\(63 downto 0),
      \counter_offset_reg[15]_0\(7) => axi2com_0_n_13,
      \counter_offset_reg[15]_0\(6) => axi2com_0_n_14,
      \counter_offset_reg[15]_0\(5) => axi2com_0_n_15,
      \counter_offset_reg[15]_0\(4) => axi2com_0_n_16,
      \counter_offset_reg[15]_0\(3) => axi2com_0_n_17,
      \counter_offset_reg[15]_0\(2) => axi2com_0_n_18,
      \counter_offset_reg[15]_0\(1) => axi2com_0_n_19,
      \counter_offset_reg[15]_0\(0) => axi2com_0_n_20,
      \counter_offset_reg[23]_0\(7) => axi2com_0_n_21,
      \counter_offset_reg[23]_0\(6) => axi2com_0_n_22,
      \counter_offset_reg[23]_0\(5) => axi2com_0_n_23,
      \counter_offset_reg[23]_0\(4) => axi2com_0_n_24,
      \counter_offset_reg[23]_0\(3) => axi2com_0_n_25,
      \counter_offset_reg[23]_0\(2) => axi2com_0_n_26,
      \counter_offset_reg[23]_0\(1) => axi2com_0_n_27,
      \counter_offset_reg[23]_0\(0) => axi2com_0_n_28,
      \counter_offset_reg[31]_0\(7) => axi2com_0_n_29,
      \counter_offset_reg[31]_0\(6) => axi2com_0_n_30,
      \counter_offset_reg[31]_0\(5) => axi2com_0_n_31,
      \counter_offset_reg[31]_0\(4) => axi2com_0_n_32,
      \counter_offset_reg[31]_0\(3) => axi2com_0_n_33,
      \counter_offset_reg[31]_0\(2) => axi2com_0_n_34,
      \counter_offset_reg[31]_0\(1) => axi2com_0_n_35,
      \counter_offset_reg[31]_0\(0) => axi2com_0_n_36,
      \counter_offset_reg[39]_0\(7) => axi2com_0_n_37,
      \counter_offset_reg[39]_0\(6) => axi2com_0_n_38,
      \counter_offset_reg[39]_0\(5) => axi2com_0_n_39,
      \counter_offset_reg[39]_0\(4) => axi2com_0_n_40,
      \counter_offset_reg[39]_0\(3) => axi2com_0_n_41,
      \counter_offset_reg[39]_0\(2) => axi2com_0_n_42,
      \counter_offset_reg[39]_0\(1) => axi2com_0_n_43,
      \counter_offset_reg[39]_0\(0) => axi2com_0_n_44,
      \counter_offset_reg[47]_0\(7) => axi2com_0_n_45,
      \counter_offset_reg[47]_0\(6) => axi2com_0_n_46,
      \counter_offset_reg[47]_0\(5) => axi2com_0_n_47,
      \counter_offset_reg[47]_0\(4) => axi2com_0_n_48,
      \counter_offset_reg[47]_0\(3) => axi2com_0_n_49,
      \counter_offset_reg[47]_0\(2) => axi2com_0_n_50,
      \counter_offset_reg[47]_0\(1) => axi2com_0_n_51,
      \counter_offset_reg[47]_0\(0) => axi2com_0_n_52,
      \counter_offset_reg[55]_0\(7) => axi2com_0_n_53,
      \counter_offset_reg[55]_0\(6) => axi2com_0_n_54,
      \counter_offset_reg[55]_0\(5) => axi2com_0_n_55,
      \counter_offset_reg[55]_0\(4) => axi2com_0_n_56,
      \counter_offset_reg[55]_0\(3) => axi2com_0_n_57,
      \counter_offset_reg[55]_0\(2) => axi2com_0_n_58,
      \counter_offset_reg[55]_0\(1) => axi2com_0_n_59,
      \counter_offset_reg[55]_0\(0) => axi2com_0_n_60,
      \counter_offset_reg[63]_0\(7) => axi2com_0_n_61,
      \counter_offset_reg[63]_0\(6) => axi2com_0_n_62,
      \counter_offset_reg[63]_0\(5) => axi2com_0_n_63,
      \counter_offset_reg[63]_0\(4) => axi2com_0_n_64,
      \counter_offset_reg[63]_0\(3) => axi2com_0_n_65,
      \counter_offset_reg[63]_0\(2) => axi2com_0_n_66,
      \counter_offset_reg[63]_0\(1) => axi2com_0_n_67,
      \counter_offset_reg[63]_0\(0) => axi2com_0_n_68,
      offset_en_reg_0 => axi2com_0_n_69,
      reset => reset,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(15 downto 0) => s_axi_arid(15 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(5 downto 0) => s_axi_awaddr(5 downto 0),
      s_axi_awid(15 downto 0) => s_axi_awid(15 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(15 downto 0) => s_axi_bid(15 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rid(15 downto 0) => s_axi_rid(15 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
timestamp_counter_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Timestamp_Counter
     port map (
      O(7) => axi2com_0_n_5,
      O(6) => axi2com_0_n_6,
      O(5) => axi2com_0_n_7,
      O(4) => axi2com_0_n_8,
      O(3) => axi2com_0_n_9,
      O(2) => axi2com_0_n_10,
      O(1) => axi2com_0_n_11,
      O(0) => axi2com_0_n_12,
      counter(63 downto 0) => \^counter\(63 downto 0),
      \counter_reg_reg[15]_0\(7) => axi2com_0_n_13,
      \counter_reg_reg[15]_0\(6) => axi2com_0_n_14,
      \counter_reg_reg[15]_0\(5) => axi2com_0_n_15,
      \counter_reg_reg[15]_0\(4) => axi2com_0_n_16,
      \counter_reg_reg[15]_0\(3) => axi2com_0_n_17,
      \counter_reg_reg[15]_0\(2) => axi2com_0_n_18,
      \counter_reg_reg[15]_0\(1) => axi2com_0_n_19,
      \counter_reg_reg[15]_0\(0) => axi2com_0_n_20,
      \counter_reg_reg[23]_0\(7) => axi2com_0_n_21,
      \counter_reg_reg[23]_0\(6) => axi2com_0_n_22,
      \counter_reg_reg[23]_0\(5) => axi2com_0_n_23,
      \counter_reg_reg[23]_0\(4) => axi2com_0_n_24,
      \counter_reg_reg[23]_0\(3) => axi2com_0_n_25,
      \counter_reg_reg[23]_0\(2) => axi2com_0_n_26,
      \counter_reg_reg[23]_0\(1) => axi2com_0_n_27,
      \counter_reg_reg[23]_0\(0) => axi2com_0_n_28,
      \counter_reg_reg[31]_0\(7) => axi2com_0_n_29,
      \counter_reg_reg[31]_0\(6) => axi2com_0_n_30,
      \counter_reg_reg[31]_0\(5) => axi2com_0_n_31,
      \counter_reg_reg[31]_0\(4) => axi2com_0_n_32,
      \counter_reg_reg[31]_0\(3) => axi2com_0_n_33,
      \counter_reg_reg[31]_0\(2) => axi2com_0_n_34,
      \counter_reg_reg[31]_0\(1) => axi2com_0_n_35,
      \counter_reg_reg[31]_0\(0) => axi2com_0_n_36,
      \counter_reg_reg[39]_0\(7) => axi2com_0_n_37,
      \counter_reg_reg[39]_0\(6) => axi2com_0_n_38,
      \counter_reg_reg[39]_0\(5) => axi2com_0_n_39,
      \counter_reg_reg[39]_0\(4) => axi2com_0_n_40,
      \counter_reg_reg[39]_0\(3) => axi2com_0_n_41,
      \counter_reg_reg[39]_0\(2) => axi2com_0_n_42,
      \counter_reg_reg[39]_0\(1) => axi2com_0_n_43,
      \counter_reg_reg[39]_0\(0) => axi2com_0_n_44,
      \counter_reg_reg[47]_0\(7) => axi2com_0_n_45,
      \counter_reg_reg[47]_0\(6) => axi2com_0_n_46,
      \counter_reg_reg[47]_0\(5) => axi2com_0_n_47,
      \counter_reg_reg[47]_0\(4) => axi2com_0_n_48,
      \counter_reg_reg[47]_0\(3) => axi2com_0_n_49,
      \counter_reg_reg[47]_0\(2) => axi2com_0_n_50,
      \counter_reg_reg[47]_0\(1) => axi2com_0_n_51,
      \counter_reg_reg[47]_0\(0) => axi2com_0_n_52,
      \counter_reg_reg[55]_0\(7) => axi2com_0_n_53,
      \counter_reg_reg[55]_0\(6) => axi2com_0_n_54,
      \counter_reg_reg[55]_0\(5) => axi2com_0_n_55,
      \counter_reg_reg[55]_0\(4) => axi2com_0_n_56,
      \counter_reg_reg[55]_0\(3) => axi2com_0_n_57,
      \counter_reg_reg[55]_0\(2) => axi2com_0_n_58,
      \counter_reg_reg[55]_0\(1) => axi2com_0_n_59,
      \counter_reg_reg[55]_0\(0) => axi2com_0_n_60,
      \counter_reg_reg[63]_0\ => axi2com_0_n_69,
      \counter_reg_reg[63]_1\(7) => axi2com_0_n_61,
      \counter_reg_reg[63]_1\(6) => axi2com_0_n_62,
      \counter_reg_reg[63]_1\(5) => axi2com_0_n_63,
      \counter_reg_reg[63]_1\(4) => axi2com_0_n_64,
      \counter_reg_reg[63]_1\(3) => axi2com_0_n_65,
      \counter_reg_reg[63]_1\(2) => axi2com_0_n_66,
      \counter_reg_reg[63]_1\(1) => axi2com_0_n_67,
      \counter_reg_reg[63]_1\(0) => axi2com_0_n_68,
      reset => reset,
      s_axi_aclk => s_axi_aclk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    auto_start : out STD_LOGIC;
    counter : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "RFSoC_Main_blk_TimeController_0_0,TimeController,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "TimeController,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rlast\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN RFSoC_Main_blk_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 s_axi RLAST";
  attribute X_INTERFACE_PARAMETER of s_axi_rlast : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 16, ADDR_WIDTH 6, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN RFSoC_Main_blk_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 s_axi WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 s_axi ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 s_axi ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 s_axi ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_aruser : signal is "xilinx.com:interface:aximm:1.0 s_axi ARUSER";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 s_axi AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 s_axi AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 s_axi AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_awuser : signal is "xilinx.com:interface:aximm:1.0 s_axi AWUSER";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 s_axi BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 s_axi RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(127) <= \<const0>\;
  s_axi_rdata(126) <= \<const0>\;
  s_axi_rdata(125) <= \<const0>\;
  s_axi_rdata(124) <= \<const0>\;
  s_axi_rdata(123) <= \<const0>\;
  s_axi_rdata(122) <= \<const0>\;
  s_axi_rdata(121) <= \<const0>\;
  s_axi_rdata(120) <= \<const0>\;
  s_axi_rdata(119) <= \<const0>\;
  s_axi_rdata(118) <= \<const0>\;
  s_axi_rdata(117) <= \<const0>\;
  s_axi_rdata(116) <= \<const0>\;
  s_axi_rdata(115) <= \<const0>\;
  s_axi_rdata(114) <= \<const0>\;
  s_axi_rdata(113) <= \<const0>\;
  s_axi_rdata(112) <= \<const0>\;
  s_axi_rdata(111) <= \<const0>\;
  s_axi_rdata(110) <= \<const0>\;
  s_axi_rdata(109) <= \<const0>\;
  s_axi_rdata(108) <= \<const0>\;
  s_axi_rdata(107) <= \<const0>\;
  s_axi_rdata(106) <= \<const0>\;
  s_axi_rdata(105) <= \<const0>\;
  s_axi_rdata(104) <= \<const0>\;
  s_axi_rdata(103) <= \<const0>\;
  s_axi_rdata(102) <= \<const0>\;
  s_axi_rdata(101) <= \<const0>\;
  s_axi_rdata(100) <= \<const0>\;
  s_axi_rdata(99) <= \<const0>\;
  s_axi_rdata(98) <= \<const0>\;
  s_axi_rdata(97) <= \<const0>\;
  s_axi_rdata(96) <= \<const0>\;
  s_axi_rdata(95) <= \<const0>\;
  s_axi_rdata(94) <= \<const0>\;
  s_axi_rdata(93) <= \<const0>\;
  s_axi_rdata(92) <= \<const0>\;
  s_axi_rdata(91) <= \<const0>\;
  s_axi_rdata(90) <= \<const0>\;
  s_axi_rdata(89) <= \<const0>\;
  s_axi_rdata(88) <= \<const0>\;
  s_axi_rdata(87) <= \<const0>\;
  s_axi_rdata(86) <= \<const0>\;
  s_axi_rdata(85) <= \<const0>\;
  s_axi_rdata(84) <= \<const0>\;
  s_axi_rdata(83) <= \<const0>\;
  s_axi_rdata(82) <= \<const0>\;
  s_axi_rdata(81) <= \<const0>\;
  s_axi_rdata(80) <= \<const0>\;
  s_axi_rdata(79) <= \<const0>\;
  s_axi_rdata(78) <= \<const0>\;
  s_axi_rdata(77) <= \<const0>\;
  s_axi_rdata(76) <= \<const0>\;
  s_axi_rdata(75) <= \<const0>\;
  s_axi_rdata(74) <= \<const0>\;
  s_axi_rdata(73) <= \<const0>\;
  s_axi_rdata(72) <= \<const0>\;
  s_axi_rdata(71) <= \<const0>\;
  s_axi_rdata(70) <= \<const0>\;
  s_axi_rdata(69) <= \<const0>\;
  s_axi_rdata(68) <= \<const0>\;
  s_axi_rdata(67) <= \<const0>\;
  s_axi_rdata(66) <= \<const0>\;
  s_axi_rdata(65) <= \<const0>\;
  s_axi_rdata(64) <= \<const0>\;
  s_axi_rdata(63) <= \<const0>\;
  s_axi_rdata(62) <= \<const0>\;
  s_axi_rdata(61) <= \<const0>\;
  s_axi_rdata(60) <= \<const0>\;
  s_axi_rdata(59) <= \<const0>\;
  s_axi_rdata(58) <= \<const0>\;
  s_axi_rdata(57) <= \<const0>\;
  s_axi_rdata(56) <= \<const0>\;
  s_axi_rdata(55) <= \<const0>\;
  s_axi_rdata(54) <= \<const0>\;
  s_axi_rdata(53) <= \<const0>\;
  s_axi_rdata(52) <= \<const0>\;
  s_axi_rdata(51) <= \<const0>\;
  s_axi_rdata(50) <= \<const0>\;
  s_axi_rdata(49) <= \<const0>\;
  s_axi_rdata(48) <= \<const0>\;
  s_axi_rdata(47) <= \<const0>\;
  s_axi_rdata(46) <= \<const0>\;
  s_axi_rdata(45) <= \<const0>\;
  s_axi_rdata(44) <= \<const0>\;
  s_axi_rdata(43) <= \<const0>\;
  s_axi_rdata(42) <= \<const0>\;
  s_axi_rdata(41) <= \<const0>\;
  s_axi_rdata(40) <= \<const0>\;
  s_axi_rdata(39) <= \<const0>\;
  s_axi_rdata(38) <= \<const0>\;
  s_axi_rdata(37) <= \<const0>\;
  s_axi_rdata(36) <= \<const0>\;
  s_axi_rdata(35) <= \<const0>\;
  s_axi_rdata(34) <= \<const0>\;
  s_axi_rdata(33) <= \<const0>\;
  s_axi_rdata(32) <= \<const0>\;
  s_axi_rdata(31) <= \<const0>\;
  s_axi_rdata(30) <= \<const0>\;
  s_axi_rdata(29) <= \<const0>\;
  s_axi_rdata(28) <= \<const0>\;
  s_axi_rdata(27) <= \<const0>\;
  s_axi_rdata(26) <= \<const0>\;
  s_axi_rdata(25) <= \<const0>\;
  s_axi_rdata(24) <= \<const0>\;
  s_axi_rdata(23) <= \<const0>\;
  s_axi_rdata(22) <= \<const0>\;
  s_axi_rdata(21) <= \<const0>\;
  s_axi_rdata(20) <= \<const0>\;
  s_axi_rdata(19) <= \<const0>\;
  s_axi_rdata(18) <= \<const0>\;
  s_axi_rdata(17) <= \<const0>\;
  s_axi_rdata(16) <= \<const0>\;
  s_axi_rdata(15) <= \<const0>\;
  s_axi_rdata(14) <= \<const0>\;
  s_axi_rdata(13) <= \<const0>\;
  s_axi_rdata(12) <= \<const0>\;
  s_axi_rdata(11) <= \<const0>\;
  s_axi_rdata(10) <= \<const0>\;
  s_axi_rdata(9) <= \<const0>\;
  s_axi_rdata(8) <= \<const0>\;
  s_axi_rdata(7) <= \<const0>\;
  s_axi_rdata(6) <= \<const0>\;
  s_axi_rdata(5) <= \<const0>\;
  s_axi_rdata(4) <= \<const0>\;
  s_axi_rdata(3) <= \<const0>\;
  s_axi_rdata(2) <= \<const0>\;
  s_axi_rdata(1) <= \<const0>\;
  s_axi_rdata(0) <= \<const0>\;
  s_axi_rlast <= \^s_axi_rlast\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_rvalid <= \^s_axi_rlast\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeController
     port map (
      auto_start => auto_start,
      counter(63 downto 0) => counter(63 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arid(15 downto 0) => s_axi_arid(15 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(5 downto 0) => s_axi_awaddr(5 downto 0),
      s_axi_awid(15 downto 0) => s_axi_awid(15 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(15 downto 0) => s_axi_bid(15 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rid(15 downto 0) => s_axi_rid(15 downto 0),
      s_axi_rlast => \^s_axi_rlast\,
      s_axi_rready => s_axi_rready,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
