// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Sep  2 20:34:59 2023
// Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RFSoC_Main_blk_TimeController_0_0_sim_netlist.v
// Design      : RFSoC_Main_blk_TimeController_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI2COM
   (s_axi_bresp,
    auto_start,
    reset,
    s_axi_bvalid,
    s_axi_rlast,
    O,
    \counter_offset_reg[15]_0 ,
    \counter_offset_reg[23]_0 ,
    \counter_offset_reg[31]_0 ,
    \counter_offset_reg[39]_0 ,
    \counter_offset_reg[47]_0 ,
    \counter_offset_reg[55]_0 ,
    \counter_offset_reg[63]_0 ,
    offset_en_reg_0,
    s_axi_wready,
    Q,
    s_axi_bid,
    s_axi_rid,
    s_axi_arready,
    s_axi_aclk,
    s_axi_wdata,
    counter,
    s_axi_awvalid,
    s_axi_awid,
    s_axi_aresetn,
    s_axi_rready,
    s_axi_arvalid,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_awaddr,
    s_axi_arid);
  output [0:0]s_axi_bresp;
  output auto_start;
  output reset;
  output s_axi_bvalid;
  output s_axi_rlast;
  output [7:0]O;
  output [7:0]\counter_offset_reg[15]_0 ;
  output [7:0]\counter_offset_reg[23]_0 ;
  output [7:0]\counter_offset_reg[31]_0 ;
  output [7:0]\counter_offset_reg[39]_0 ;
  output [7:0]\counter_offset_reg[47]_0 ;
  output [7:0]\counter_offset_reg[55]_0 ;
  output [7:0]\counter_offset_reg[63]_0 ;
  output offset_en_reg_0;
  output s_axi_wready;
  output [0:0]Q;
  output [15:0]s_axi_bid;
  output [15:0]s_axi_rid;
  output s_axi_arready;
  input s_axi_aclk;
  input [63:0]s_axi_wdata;
  input [63:0]counter;
  input s_axi_awvalid;
  input [15:0]s_axi_awid;
  input s_axi_aresetn;
  input s_axi_rready;
  input s_axi_arvalid;
  input s_axi_wvalid;
  input s_axi_wlast;
  input s_axi_bready;
  input [5:0]s_axi_awaddr;
  input [15:0]s_axi_arid;

  wire \FSM_onehot_axi_state_write[0]_i_1_n_0 ;
  wire \FSM_onehot_axi_state_write[0]_i_2_n_0 ;
  wire \FSM_onehot_axi_state_write[0]_i_3_n_0 ;
  wire \FSM_onehot_axi_state_write[1]_i_1_n_0 ;
  wire \FSM_onehot_axi_state_write[2]_i_1_n_0 ;
  wire \FSM_onehot_axi_state_write[4]_i_1_n_0 ;
  wire \FSM_onehot_axi_state_write[4]_i_2_n_0 ;
  wire \FSM_onehot_axi_state_write_reg_n_0_[1] ;
  wire \FSM_onehot_axi_state_write_reg_n_0_[2] ;
  wire \FSM_onehot_axi_state_write_reg_n_0_[3] ;
  wire \FSM_onehot_axi_state_write_reg_n_0_[4] ;
  wire FSM_sequential_axi_state_read_i_1_n_0;
  wire [7:0]O;
  wire [0:0]Q;
  wire auto_start;
  wire auto_start_i_1_n_0;
  wire [15:0]axi_arid;
  wire \axi_arid_reg_n_0_[0] ;
  wire \axi_arid_reg_n_0_[10] ;
  wire \axi_arid_reg_n_0_[11] ;
  wire \axi_arid_reg_n_0_[12] ;
  wire \axi_arid_reg_n_0_[13] ;
  wire \axi_arid_reg_n_0_[14] ;
  wire \axi_arid_reg_n_0_[15] ;
  wire \axi_arid_reg_n_0_[1] ;
  wire \axi_arid_reg_n_0_[2] ;
  wire \axi_arid_reg_n_0_[3] ;
  wire \axi_arid_reg_n_0_[4] ;
  wire \axi_arid_reg_n_0_[5] ;
  wire \axi_arid_reg_n_0_[6] ;
  wire \axi_arid_reg_n_0_[7] ;
  wire \axi_arid_reg_n_0_[8] ;
  wire \axi_arid_reg_n_0_[9] ;
  wire [15:0]axi_awid;
  wire \axi_awid[0]_i_1_n_0 ;
  wire \axi_awid[10]_i_1_n_0 ;
  wire \axi_awid[11]_i_1_n_0 ;
  wire \axi_awid[12]_i_1_n_0 ;
  wire \axi_awid[13]_i_1_n_0 ;
  wire \axi_awid[14]_i_1_n_0 ;
  wire \axi_awid[15]_i_1_n_0 ;
  wire \axi_awid[1]_i_1_n_0 ;
  wire \axi_awid[2]_i_1_n_0 ;
  wire \axi_awid[3]_i_1_n_0 ;
  wire \axi_awid[4]_i_1_n_0 ;
  wire \axi_awid[5]_i_1_n_0 ;
  wire \axi_awid[6]_i_1_n_0 ;
  wire \axi_awid[7]_i_1_n_0 ;
  wire \axi_awid[8]_i_1_n_0 ;
  wire \axi_awid[9]_i_1_n_0 ;
  wire axi_state_read;
  wire [63:0]counter;
  wire [63:0]counter_offset;
  wire \counter_offset[63]_i_1_n_0 ;
  wire [7:0]\counter_offset_reg[15]_0 ;
  wire [7:0]\counter_offset_reg[23]_0 ;
  wire [7:0]\counter_offset_reg[31]_0 ;
  wire [7:0]\counter_offset_reg[39]_0 ;
  wire [7:0]\counter_offset_reg[47]_0 ;
  wire [7:0]\counter_offset_reg[55]_0 ;
  wire [7:0]\counter_offset_reg[63]_0 ;
  wire \counter_reg[15]_i_2_n_0 ;
  wire \counter_reg[15]_i_3_n_0 ;
  wire \counter_reg[15]_i_4_n_0 ;
  wire \counter_reg[15]_i_5_n_0 ;
  wire \counter_reg[15]_i_6_n_0 ;
  wire \counter_reg[15]_i_7_n_0 ;
  wire \counter_reg[15]_i_8_n_0 ;
  wire \counter_reg[15]_i_9_n_0 ;
  wire \counter_reg[23]_i_2_n_0 ;
  wire \counter_reg[23]_i_3_n_0 ;
  wire \counter_reg[23]_i_4_n_0 ;
  wire \counter_reg[23]_i_5_n_0 ;
  wire \counter_reg[23]_i_6_n_0 ;
  wire \counter_reg[23]_i_7_n_0 ;
  wire \counter_reg[23]_i_8_n_0 ;
  wire \counter_reg[23]_i_9_n_0 ;
  wire \counter_reg[31]_i_2_n_0 ;
  wire \counter_reg[31]_i_3_n_0 ;
  wire \counter_reg[31]_i_4_n_0 ;
  wire \counter_reg[31]_i_5_n_0 ;
  wire \counter_reg[31]_i_6_n_0 ;
  wire \counter_reg[31]_i_7_n_0 ;
  wire \counter_reg[31]_i_8_n_0 ;
  wire \counter_reg[31]_i_9_n_0 ;
  wire \counter_reg[39]_i_2_n_0 ;
  wire \counter_reg[39]_i_3_n_0 ;
  wire \counter_reg[39]_i_4_n_0 ;
  wire \counter_reg[39]_i_5_n_0 ;
  wire \counter_reg[39]_i_6_n_0 ;
  wire \counter_reg[39]_i_7_n_0 ;
  wire \counter_reg[39]_i_8_n_0 ;
  wire \counter_reg[39]_i_9_n_0 ;
  wire \counter_reg[47]_i_2_n_0 ;
  wire \counter_reg[47]_i_3_n_0 ;
  wire \counter_reg[47]_i_4_n_0 ;
  wire \counter_reg[47]_i_5_n_0 ;
  wire \counter_reg[47]_i_6_n_0 ;
  wire \counter_reg[47]_i_7_n_0 ;
  wire \counter_reg[47]_i_8_n_0 ;
  wire \counter_reg[47]_i_9_n_0 ;
  wire \counter_reg[55]_i_2_n_0 ;
  wire \counter_reg[55]_i_3_n_0 ;
  wire \counter_reg[55]_i_4_n_0 ;
  wire \counter_reg[55]_i_5_n_0 ;
  wire \counter_reg[55]_i_6_n_0 ;
  wire \counter_reg[55]_i_7_n_0 ;
  wire \counter_reg[55]_i_8_n_0 ;
  wire \counter_reg[55]_i_9_n_0 ;
  wire \counter_reg[63]_i_10_n_0 ;
  wire \counter_reg[63]_i_3_n_0 ;
  wire \counter_reg[63]_i_4_n_0 ;
  wire \counter_reg[63]_i_5_n_0 ;
  wire \counter_reg[63]_i_6_n_0 ;
  wire \counter_reg[63]_i_7_n_0 ;
  wire \counter_reg[63]_i_8_n_0 ;
  wire \counter_reg[63]_i_9_n_0 ;
  wire \counter_reg[7]_i_10_n_0 ;
  wire \counter_reg[7]_i_2_n_0 ;
  wire \counter_reg[7]_i_3_n_0 ;
  wire \counter_reg[7]_i_4_n_0 ;
  wire \counter_reg[7]_i_5_n_0 ;
  wire \counter_reg[7]_i_6_n_0 ;
  wire \counter_reg[7]_i_7_n_0 ;
  wire \counter_reg[7]_i_8_n_0 ;
  wire \counter_reg[7]_i_9_n_0 ;
  wire \counter_reg_reg[15]_i_1_n_0 ;
  wire \counter_reg_reg[15]_i_1_n_1 ;
  wire \counter_reg_reg[15]_i_1_n_2 ;
  wire \counter_reg_reg[15]_i_1_n_3 ;
  wire \counter_reg_reg[15]_i_1_n_4 ;
  wire \counter_reg_reg[15]_i_1_n_5 ;
  wire \counter_reg_reg[15]_i_1_n_6 ;
  wire \counter_reg_reg[15]_i_1_n_7 ;
  wire \counter_reg_reg[23]_i_1_n_0 ;
  wire \counter_reg_reg[23]_i_1_n_1 ;
  wire \counter_reg_reg[23]_i_1_n_2 ;
  wire \counter_reg_reg[23]_i_1_n_3 ;
  wire \counter_reg_reg[23]_i_1_n_4 ;
  wire \counter_reg_reg[23]_i_1_n_5 ;
  wire \counter_reg_reg[23]_i_1_n_6 ;
  wire \counter_reg_reg[23]_i_1_n_7 ;
  wire \counter_reg_reg[31]_i_1_n_0 ;
  wire \counter_reg_reg[31]_i_1_n_1 ;
  wire \counter_reg_reg[31]_i_1_n_2 ;
  wire \counter_reg_reg[31]_i_1_n_3 ;
  wire \counter_reg_reg[31]_i_1_n_4 ;
  wire \counter_reg_reg[31]_i_1_n_5 ;
  wire \counter_reg_reg[31]_i_1_n_6 ;
  wire \counter_reg_reg[31]_i_1_n_7 ;
  wire \counter_reg_reg[39]_i_1_n_0 ;
  wire \counter_reg_reg[39]_i_1_n_1 ;
  wire \counter_reg_reg[39]_i_1_n_2 ;
  wire \counter_reg_reg[39]_i_1_n_3 ;
  wire \counter_reg_reg[39]_i_1_n_4 ;
  wire \counter_reg_reg[39]_i_1_n_5 ;
  wire \counter_reg_reg[39]_i_1_n_6 ;
  wire \counter_reg_reg[39]_i_1_n_7 ;
  wire \counter_reg_reg[47]_i_1_n_0 ;
  wire \counter_reg_reg[47]_i_1_n_1 ;
  wire \counter_reg_reg[47]_i_1_n_2 ;
  wire \counter_reg_reg[47]_i_1_n_3 ;
  wire \counter_reg_reg[47]_i_1_n_4 ;
  wire \counter_reg_reg[47]_i_1_n_5 ;
  wire \counter_reg_reg[47]_i_1_n_6 ;
  wire \counter_reg_reg[47]_i_1_n_7 ;
  wire \counter_reg_reg[55]_i_1_n_0 ;
  wire \counter_reg_reg[55]_i_1_n_1 ;
  wire \counter_reg_reg[55]_i_1_n_2 ;
  wire \counter_reg_reg[55]_i_1_n_3 ;
  wire \counter_reg_reg[55]_i_1_n_4 ;
  wire \counter_reg_reg[55]_i_1_n_5 ;
  wire \counter_reg_reg[55]_i_1_n_6 ;
  wire \counter_reg_reg[55]_i_1_n_7 ;
  wire \counter_reg_reg[63]_i_2_n_1 ;
  wire \counter_reg_reg[63]_i_2_n_2 ;
  wire \counter_reg_reg[63]_i_2_n_3 ;
  wire \counter_reg_reg[63]_i_2_n_4 ;
  wire \counter_reg_reg[63]_i_2_n_5 ;
  wire \counter_reg_reg[63]_i_2_n_6 ;
  wire \counter_reg_reg[63]_i_2_n_7 ;
  wire \counter_reg_reg[7]_i_1_n_0 ;
  wire \counter_reg_reg[7]_i_1_n_1 ;
  wire \counter_reg_reg[7]_i_1_n_2 ;
  wire \counter_reg_reg[7]_i_1_n_3 ;
  wire \counter_reg_reg[7]_i_1_n_4 ;
  wire \counter_reg_reg[7]_i_1_n_5 ;
  wire \counter_reg_reg[7]_i_1_n_6 ;
  wire \counter_reg_reg[7]_i_1_n_7 ;
  wire offset_en;
  wire offset_en_reg_0;
  wire reset;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire [15:0]s_axi_awid;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire \s_axi_bid[0]_i_1_n_0 ;
  wire \s_axi_bid[10]_i_1_n_0 ;
  wire \s_axi_bid[11]_i_1_n_0 ;
  wire \s_axi_bid[12]_i_1_n_0 ;
  wire \s_axi_bid[13]_i_1_n_0 ;
  wire \s_axi_bid[14]_i_1_n_0 ;
  wire \s_axi_bid[15]_i_1_n_0 ;
  wire \s_axi_bid[1]_i_1_n_0 ;
  wire \s_axi_bid[2]_i_1_n_0 ;
  wire \s_axi_bid[3]_i_1_n_0 ;
  wire \s_axi_bid[4]_i_1_n_0 ;
  wire \s_axi_bid[5]_i_1_n_0 ;
  wire \s_axi_bid[6]_i_1_n_0 ;
  wire \s_axi_bid[7]_i_1_n_0 ;
  wire \s_axi_bid[8]_i_1_n_0 ;
  wire \s_axi_bid[9]_i_1_n_0 ;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire \s_axi_bresp[1]_i_1_n_0 ;
  wire s_axi_bvalid;
  wire s_axi_bvalid_i_1_n_0;
  wire [15:0]s_axi_rid;
  wire \s_axi_rid[0]_i_1_n_0 ;
  wire \s_axi_rid[10]_i_1_n_0 ;
  wire \s_axi_rid[11]_i_1_n_0 ;
  wire \s_axi_rid[12]_i_1_n_0 ;
  wire \s_axi_rid[13]_i_1_n_0 ;
  wire \s_axi_rid[14]_i_1_n_0 ;
  wire \s_axi_rid[15]_i_1_n_0 ;
  wire \s_axi_rid[1]_i_1_n_0 ;
  wire \s_axi_rid[2]_i_1_n_0 ;
  wire \s_axi_rid[3]_i_1_n_0 ;
  wire \s_axi_rid[4]_i_1_n_0 ;
  wire \s_axi_rid[5]_i_1_n_0 ;
  wire \s_axi_rid[6]_i_1_n_0 ;
  wire \s_axi_rid[7]_i_1_n_0 ;
  wire \s_axi_rid[8]_i_1_n_0 ;
  wire \s_axi_rid[9]_i_1_n_0 ;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid_i_1_n_0;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire start;
  wire [7:7]\NLW_counter_reg_reg[63]_i_2_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_axi_state_write[0]_i_1 
       (.I0(s_axi_aresetn),
        .O(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \FSM_onehot_axi_state_write[0]_i_2 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[1] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[2] ),
        .I2(s_axi_wvalid),
        .I3(s_axi_wlast),
        .I4(\s_axi_bresp[1]_i_1_n_0 ),
        .O(\FSM_onehot_axi_state_write[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \FSM_onehot_axi_state_write[0]_i_3 
       (.I0(s_axi_awvalid),
        .I1(Q),
        .I2(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I3(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .O(\FSM_onehot_axi_state_write[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \FSM_onehot_axi_state_write[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(Q),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[1]),
        .I4(\FSM_onehot_axi_state_write[4]_i_2_n_0 ),
        .O(\FSM_onehot_axi_state_write[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_onehot_axi_state_write[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(Q),
        .I2(s_axi_awaddr[0]),
        .I3(s_axi_awaddr[1]),
        .I4(\FSM_onehot_axi_state_write[4]_i_2_n_0 ),
        .O(\FSM_onehot_axi_state_write[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80C0C080)) 
    \FSM_onehot_axi_state_write[4]_i_1 
       (.I0(\FSM_onehot_axi_state_write[4]_i_2_n_0 ),
        .I1(s_axi_awvalid),
        .I2(Q),
        .I3(s_axi_awaddr[1]),
        .I4(s_axi_awaddr[0]),
        .O(\FSM_onehot_axi_state_write[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_axi_state_write[4]_i_2 
       (.I0(s_axi_awaddr[3]),
        .I1(s_axi_awaddr[2]),
        .I2(s_axi_awaddr[5]),
        .I3(s_axi_awaddr[4]),
        .O(\FSM_onehot_axi_state_write[4]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010" *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_axi_state_write_reg[0] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_axi_state_write[0]_i_2_n_0 ),
        .D(\FSM_onehot_axi_state_write[0]_i_3_n_0 ),
        .Q(Q),
        .S(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_write_reg[1] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_axi_state_write[0]_i_2_n_0 ),
        .D(\FSM_onehot_axi_state_write[1]_i_1_n_0 ),
        .Q(\FSM_onehot_axi_state_write_reg_n_0_[1] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_write_reg[2] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_axi_state_write[0]_i_2_n_0 ),
        .D(\FSM_onehot_axi_state_write[2]_i_1_n_0 ),
        .Q(\FSM_onehot_axi_state_write_reg_n_0_[2] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_write_reg[3] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_axi_state_write[0]_i_2_n_0 ),
        .D(s_axi_wready),
        .Q(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "WRITE_RESPONSE:01000,IDLE:00001,ERROR_STATE:10000,WRITE_OFFSET:00100,WRITE_COMMAND:00010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_axi_state_write_reg[4] 
       (.C(s_axi_aclk),
        .CE(\FSM_onehot_axi_state_write[0]_i_2_n_0 ),
        .D(\FSM_onehot_axi_state_write[4]_i_1_n_0 ),
        .Q(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    FSM_sequential_axi_state_read_i_1
       (.I0(s_axi_arvalid),
        .I1(s_axi_rready),
        .I2(axi_state_read),
        .O(FSM_sequential_axi_state_read_i_1_n_0));
  (* FSM_ENCODED_STATES = "IDLE:0,READ_DATA:1," *) 
  FDRE #(
    .INIT(1'b0)) 
    FSM_sequential_axi_state_read_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(FSM_sequential_axi_state_read_i_1_n_0),
        .Q(axi_state_read),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    auto_start_i_1
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[1] ),
        .I1(s_axi_wvalid),
        .O(auto_start_i_1_n_0));
  FDRE auto_start_reg
       (.C(s_axi_aclk),
        .CE(auto_start_i_1_n_0),
        .D(s_axi_wdata[3]),
        .Q(auto_start),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[0]_i_1 
       (.I0(s_axi_arid[0]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[10]_i_1 
       (.I0(s_axi_arid[10]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[11]_i_1 
       (.I0(s_axi_arid[11]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[11]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[12]_i_1 
       (.I0(s_axi_arid[12]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[12]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[13]_i_1 
       (.I0(s_axi_arid[13]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[13]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[14]_i_1 
       (.I0(s_axi_arid[14]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[15]_i_1 
       (.I0(s_axi_arid[15]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[15]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[1]_i_1 
       (.I0(s_axi_arid[1]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[1]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[2]_i_1 
       (.I0(s_axi_arid[2]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[2]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[3]_i_1 
       (.I0(s_axi_arid[3]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[3]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[4]_i_1 
       (.I0(s_axi_arid[4]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[5]_i_1 
       (.I0(s_axi_arid[5]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[6]_i_1 
       (.I0(s_axi_arid[6]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[7]_i_1 
       (.I0(s_axi_arid[7]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[8]_i_1 
       (.I0(s_axi_arid[8]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[8]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \axi_arid[9]_i_1 
       (.I0(s_axi_arid[9]),
        .I1(s_axi_arvalid),
        .I2(axi_state_read),
        .O(axi_arid[9]));
  FDRE \axi_arid_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[0]),
        .Q(\axi_arid_reg_n_0_[0] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[10]),
        .Q(\axi_arid_reg_n_0_[10] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[11]),
        .Q(\axi_arid_reg_n_0_[11] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[12]),
        .Q(\axi_arid_reg_n_0_[12] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[13]),
        .Q(\axi_arid_reg_n_0_[13] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[14]),
        .Q(\axi_arid_reg_n_0_[14] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[15]),
        .Q(\axi_arid_reg_n_0_[15] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[1]),
        .Q(\axi_arid_reg_n_0_[1] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[2]),
        .Q(\axi_arid_reg_n_0_[2] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[3]),
        .Q(\axi_arid_reg_n_0_[3] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[4]),
        .Q(\axi_arid_reg_n_0_[4] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[5]),
        .Q(\axi_arid_reg_n_0_[5] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[6]),
        .Q(\axi_arid_reg_n_0_[6] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[7]),
        .Q(\axi_arid_reg_n_0_[7] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[8]),
        .Q(\axi_arid_reg_n_0_[8] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_arid_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arid[9]),
        .Q(\axi_arid_reg_n_0_[9] ),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[0]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[0]),
        .O(\axi_awid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[10]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[10]),
        .O(\axi_awid[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[11]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[11]),
        .O(\axi_awid[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[12]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[12]),
        .O(\axi_awid[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[13]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[13]),
        .O(\axi_awid[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[14]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[14]),
        .O(\axi_awid[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[15]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[15]),
        .O(\axi_awid[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[1]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[1]),
        .O(\axi_awid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[2]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[2]),
        .O(\axi_awid[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[3]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[3]),
        .O(\axi_awid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[4]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[4]),
        .O(\axi_awid[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[5]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[5]),
        .O(\axi_awid[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[6]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[6]),
        .O(\axi_awid[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[7]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[7]),
        .O(\axi_awid[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[8]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[8]),
        .O(\axi_awid[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \axi_awid[9]_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awid[9]),
        .O(\axi_awid[9]_i_1_n_0 ));
  FDRE \axi_awid_reg[0] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[0]_i_1_n_0 ),
        .Q(axi_awid[0]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[10] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[10]_i_1_n_0 ),
        .Q(axi_awid[10]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[11] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[11]_i_1_n_0 ),
        .Q(axi_awid[11]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[12] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[12]_i_1_n_0 ),
        .Q(axi_awid[12]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[13] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[13]_i_1_n_0 ),
        .Q(axi_awid[13]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[14] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[14]_i_1_n_0 ),
        .Q(axi_awid[14]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[15] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[15]_i_1_n_0 ),
        .Q(axi_awid[15]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[1] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[1]_i_1_n_0 ),
        .Q(axi_awid[1]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[2] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[2]_i_1_n_0 ),
        .Q(axi_awid[2]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[3] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[3]_i_1_n_0 ),
        .Q(axi_awid[3]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[4] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[4]_i_1_n_0 ),
        .Q(axi_awid[4]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[5] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[5]_i_1_n_0 ),
        .Q(axi_awid[5]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[6] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[6]_i_1_n_0 ),
        .Q(axi_awid[6]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[7] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[7]_i_1_n_0 ),
        .Q(axi_awid[7]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[8] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[8]_i_1_n_0 ),
        .Q(axi_awid[8]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \axi_awid_reg[9] 
       (.C(s_axi_aclk),
        .CE(Q),
        .D(\axi_awid[9]_i_1_n_0 ),
        .Q(axi_awid[9]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_offset[63]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[2] ),
        .I1(s_axi_wvalid),
        .O(\counter_offset[63]_i_1_n_0 ));
  FDRE \counter_offset_reg[0] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(counter_offset[0]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[10] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(counter_offset[10]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[11] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(counter_offset[11]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[12] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(counter_offset[12]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[13] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(counter_offset[13]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[14] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(counter_offset[14]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[15] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(counter_offset[15]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[16] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(counter_offset[16]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[17] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(counter_offset[17]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[18] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(counter_offset[18]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[19] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(counter_offset[19]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[1] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(counter_offset[1]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[20] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(counter_offset[20]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[21] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(counter_offset[21]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[22] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(counter_offset[22]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[23] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(counter_offset[23]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[24] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(counter_offset[24]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[25] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(counter_offset[25]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[26] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(counter_offset[26]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[27] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(counter_offset[27]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[28] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(counter_offset[28]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[29] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(counter_offset[29]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[2] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(counter_offset[2]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[30] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(counter_offset[30]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[31] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(counter_offset[31]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[32] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[32]),
        .Q(counter_offset[32]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[33] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[33]),
        .Q(counter_offset[33]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[34] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[34]),
        .Q(counter_offset[34]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[35] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[35]),
        .Q(counter_offset[35]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[36] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[36]),
        .Q(counter_offset[36]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[37] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[37]),
        .Q(counter_offset[37]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[38] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[38]),
        .Q(counter_offset[38]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[39] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[39]),
        .Q(counter_offset[39]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[3] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(counter_offset[3]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[40] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[40]),
        .Q(counter_offset[40]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[41] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[41]),
        .Q(counter_offset[41]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[42] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[42]),
        .Q(counter_offset[42]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[43] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[43]),
        .Q(counter_offset[43]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[44] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[44]),
        .Q(counter_offset[44]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[45] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[45]),
        .Q(counter_offset[45]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[46] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[46]),
        .Q(counter_offset[46]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[47] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[47]),
        .Q(counter_offset[47]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[48] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[48]),
        .Q(counter_offset[48]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[49] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[49]),
        .Q(counter_offset[49]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[4] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(counter_offset[4]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[50] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[50]),
        .Q(counter_offset[50]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[51] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[51]),
        .Q(counter_offset[51]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[52] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[52]),
        .Q(counter_offset[52]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[53] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[53]),
        .Q(counter_offset[53]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[54] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[54]),
        .Q(counter_offset[54]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[55] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[55]),
        .Q(counter_offset[55]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[56] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[56]),
        .Q(counter_offset[56]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[57] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[57]),
        .Q(counter_offset[57]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[58] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[58]),
        .Q(counter_offset[58]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[59] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[59]),
        .Q(counter_offset[59]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[5] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(counter_offset[5]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[60] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[60]),
        .Q(counter_offset[60]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[61] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[61]),
        .Q(counter_offset[61]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[62] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[62]),
        .Q(counter_offset[62]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[63] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[63]),
        .Q(counter_offset[63]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[6] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(counter_offset[6]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[7] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(counter_offset[7]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[8] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(counter_offset[8]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \counter_offset_reg[9] 
       (.C(s_axi_aclk),
        .CE(\counter_offset[63]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(counter_offset[9]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_2 
       (.I0(counter_offset[15]),
        .I1(offset_en),
        .I2(counter[15]),
        .O(\counter_reg[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_3 
       (.I0(counter_offset[14]),
        .I1(offset_en),
        .I2(counter[14]),
        .O(\counter_reg[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_4 
       (.I0(counter_offset[13]),
        .I1(offset_en),
        .I2(counter[13]),
        .O(\counter_reg[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_5 
       (.I0(counter_offset[12]),
        .I1(offset_en),
        .I2(counter[12]),
        .O(\counter_reg[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_6 
       (.I0(counter_offset[11]),
        .I1(offset_en),
        .I2(counter[11]),
        .O(\counter_reg[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_7 
       (.I0(counter_offset[10]),
        .I1(offset_en),
        .I2(counter[10]),
        .O(\counter_reg[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_8 
       (.I0(counter_offset[9]),
        .I1(offset_en),
        .I2(counter[9]),
        .O(\counter_reg[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[15]_i_9 
       (.I0(counter_offset[8]),
        .I1(offset_en),
        .I2(counter[8]),
        .O(\counter_reg[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_2 
       (.I0(counter_offset[23]),
        .I1(offset_en),
        .I2(counter[23]),
        .O(\counter_reg[23]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_3 
       (.I0(counter_offset[22]),
        .I1(offset_en),
        .I2(counter[22]),
        .O(\counter_reg[23]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_4 
       (.I0(counter_offset[21]),
        .I1(offset_en),
        .I2(counter[21]),
        .O(\counter_reg[23]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_5 
       (.I0(counter_offset[20]),
        .I1(offset_en),
        .I2(counter[20]),
        .O(\counter_reg[23]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_6 
       (.I0(counter_offset[19]),
        .I1(offset_en),
        .I2(counter[19]),
        .O(\counter_reg[23]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_7 
       (.I0(counter_offset[18]),
        .I1(offset_en),
        .I2(counter[18]),
        .O(\counter_reg[23]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_8 
       (.I0(counter_offset[17]),
        .I1(offset_en),
        .I2(counter[17]),
        .O(\counter_reg[23]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[23]_i_9 
       (.I0(counter_offset[16]),
        .I1(offset_en),
        .I2(counter[16]),
        .O(\counter_reg[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_2 
       (.I0(counter_offset[31]),
        .I1(offset_en),
        .I2(counter[31]),
        .O(\counter_reg[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_3 
       (.I0(counter_offset[30]),
        .I1(offset_en),
        .I2(counter[30]),
        .O(\counter_reg[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_4 
       (.I0(counter_offset[29]),
        .I1(offset_en),
        .I2(counter[29]),
        .O(\counter_reg[31]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_5 
       (.I0(counter_offset[28]),
        .I1(offset_en),
        .I2(counter[28]),
        .O(\counter_reg[31]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_6 
       (.I0(counter_offset[27]),
        .I1(offset_en),
        .I2(counter[27]),
        .O(\counter_reg[31]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_7 
       (.I0(counter_offset[26]),
        .I1(offset_en),
        .I2(counter[26]),
        .O(\counter_reg[31]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_8 
       (.I0(counter_offset[25]),
        .I1(offset_en),
        .I2(counter[25]),
        .O(\counter_reg[31]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[31]_i_9 
       (.I0(counter_offset[24]),
        .I1(offset_en),
        .I2(counter[24]),
        .O(\counter_reg[31]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_2 
       (.I0(counter_offset[39]),
        .I1(offset_en),
        .I2(counter[39]),
        .O(\counter_reg[39]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_3 
       (.I0(counter_offset[38]),
        .I1(offset_en),
        .I2(counter[38]),
        .O(\counter_reg[39]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_4 
       (.I0(counter_offset[37]),
        .I1(offset_en),
        .I2(counter[37]),
        .O(\counter_reg[39]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_5 
       (.I0(counter_offset[36]),
        .I1(offset_en),
        .I2(counter[36]),
        .O(\counter_reg[39]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_6 
       (.I0(counter_offset[35]),
        .I1(offset_en),
        .I2(counter[35]),
        .O(\counter_reg[39]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_7 
       (.I0(counter_offset[34]),
        .I1(offset_en),
        .I2(counter[34]),
        .O(\counter_reg[39]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_8 
       (.I0(counter_offset[33]),
        .I1(offset_en),
        .I2(counter[33]),
        .O(\counter_reg[39]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[39]_i_9 
       (.I0(counter_offset[32]),
        .I1(offset_en),
        .I2(counter[32]),
        .O(\counter_reg[39]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_2 
       (.I0(counter_offset[47]),
        .I1(offset_en),
        .I2(counter[47]),
        .O(\counter_reg[47]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_3 
       (.I0(counter_offset[46]),
        .I1(offset_en),
        .I2(counter[46]),
        .O(\counter_reg[47]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_4 
       (.I0(counter_offset[45]),
        .I1(offset_en),
        .I2(counter[45]),
        .O(\counter_reg[47]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_5 
       (.I0(counter_offset[44]),
        .I1(offset_en),
        .I2(counter[44]),
        .O(\counter_reg[47]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_6 
       (.I0(counter_offset[43]),
        .I1(offset_en),
        .I2(counter[43]),
        .O(\counter_reg[47]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_7 
       (.I0(counter_offset[42]),
        .I1(offset_en),
        .I2(counter[42]),
        .O(\counter_reg[47]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_8 
       (.I0(counter_offset[41]),
        .I1(offset_en),
        .I2(counter[41]),
        .O(\counter_reg[47]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[47]_i_9 
       (.I0(counter_offset[40]),
        .I1(offset_en),
        .I2(counter[40]),
        .O(\counter_reg[47]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_2 
       (.I0(counter_offset[55]),
        .I1(offset_en),
        .I2(counter[55]),
        .O(\counter_reg[55]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_3 
       (.I0(counter_offset[54]),
        .I1(offset_en),
        .I2(counter[54]),
        .O(\counter_reg[55]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_4 
       (.I0(counter_offset[53]),
        .I1(offset_en),
        .I2(counter[53]),
        .O(\counter_reg[55]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_5 
       (.I0(counter_offset[52]),
        .I1(offset_en),
        .I2(counter[52]),
        .O(\counter_reg[55]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_6 
       (.I0(counter_offset[51]),
        .I1(offset_en),
        .I2(counter[51]),
        .O(\counter_reg[55]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_7 
       (.I0(counter_offset[50]),
        .I1(offset_en),
        .I2(counter[50]),
        .O(\counter_reg[55]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_8 
       (.I0(counter_offset[49]),
        .I1(offset_en),
        .I2(counter[49]),
        .O(\counter_reg[55]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[55]_i_9 
       (.I0(counter_offset[48]),
        .I1(offset_en),
        .I2(counter[48]),
        .O(\counter_reg[55]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \counter_reg[63]_i_1 
       (.I0(offset_en),
        .I1(start),
        .O(offset_en_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_10 
       (.I0(counter_offset[56]),
        .I1(offset_en),
        .I2(counter[56]),
        .O(\counter_reg[63]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_3 
       (.I0(counter_offset[63]),
        .I1(offset_en),
        .I2(counter[63]),
        .O(\counter_reg[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_4 
       (.I0(counter_offset[62]),
        .I1(offset_en),
        .I2(counter[62]),
        .O(\counter_reg[63]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_5 
       (.I0(counter_offset[61]),
        .I1(offset_en),
        .I2(counter[61]),
        .O(\counter_reg[63]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_6 
       (.I0(counter_offset[60]),
        .I1(offset_en),
        .I2(counter[60]),
        .O(\counter_reg[63]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_7 
       (.I0(counter_offset[59]),
        .I1(offset_en),
        .I2(counter[59]),
        .O(\counter_reg[63]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_8 
       (.I0(counter_offset[58]),
        .I1(offset_en),
        .I2(counter[58]),
        .O(\counter_reg[63]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[63]_i_9 
       (.I0(counter_offset[57]),
        .I1(offset_en),
        .I2(counter[57]),
        .O(\counter_reg[63]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hC5)) 
    \counter_reg[7]_i_10 
       (.I0(counter[0]),
        .I1(counter_offset[0]),
        .I2(offset_en),
        .O(\counter_reg[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_2 
       (.I0(counter_offset[0]),
        .I1(offset_en),
        .I2(counter[0]),
        .O(\counter_reg[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_3 
       (.I0(counter_offset[7]),
        .I1(offset_en),
        .I2(counter[7]),
        .O(\counter_reg[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_4 
       (.I0(counter_offset[6]),
        .I1(offset_en),
        .I2(counter[6]),
        .O(\counter_reg[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_5 
       (.I0(counter_offset[5]),
        .I1(offset_en),
        .I2(counter[5]),
        .O(\counter_reg[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_6 
       (.I0(counter_offset[4]),
        .I1(offset_en),
        .I2(counter[4]),
        .O(\counter_reg[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_7 
       (.I0(counter_offset[3]),
        .I1(offset_en),
        .I2(counter[3]),
        .O(\counter_reg[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_8 
       (.I0(counter_offset[2]),
        .I1(offset_en),
        .I2(counter[2]),
        .O(\counter_reg[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \counter_reg[7]_i_9 
       (.I0(counter_offset[1]),
        .I1(offset_en),
        .I2(counter[1]),
        .O(\counter_reg[7]_i_9_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[15]_i_1 
       (.CI(\counter_reg_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg_reg[15]_i_1_n_0 ,\counter_reg_reg[15]_i_1_n_1 ,\counter_reg_reg[15]_i_1_n_2 ,\counter_reg_reg[15]_i_1_n_3 ,\counter_reg_reg[15]_i_1_n_4 ,\counter_reg_reg[15]_i_1_n_5 ,\counter_reg_reg[15]_i_1_n_6 ,\counter_reg_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_offset_reg[15]_0 ),
        .S({\counter_reg[15]_i_2_n_0 ,\counter_reg[15]_i_3_n_0 ,\counter_reg[15]_i_4_n_0 ,\counter_reg[15]_i_5_n_0 ,\counter_reg[15]_i_6_n_0 ,\counter_reg[15]_i_7_n_0 ,\counter_reg[15]_i_8_n_0 ,\counter_reg[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[23]_i_1 
       (.CI(\counter_reg_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg_reg[23]_i_1_n_0 ,\counter_reg_reg[23]_i_1_n_1 ,\counter_reg_reg[23]_i_1_n_2 ,\counter_reg_reg[23]_i_1_n_3 ,\counter_reg_reg[23]_i_1_n_4 ,\counter_reg_reg[23]_i_1_n_5 ,\counter_reg_reg[23]_i_1_n_6 ,\counter_reg_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_offset_reg[23]_0 ),
        .S({\counter_reg[23]_i_2_n_0 ,\counter_reg[23]_i_3_n_0 ,\counter_reg[23]_i_4_n_0 ,\counter_reg[23]_i_5_n_0 ,\counter_reg[23]_i_6_n_0 ,\counter_reg[23]_i_7_n_0 ,\counter_reg[23]_i_8_n_0 ,\counter_reg[23]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[31]_i_1 
       (.CI(\counter_reg_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg_reg[31]_i_1_n_0 ,\counter_reg_reg[31]_i_1_n_1 ,\counter_reg_reg[31]_i_1_n_2 ,\counter_reg_reg[31]_i_1_n_3 ,\counter_reg_reg[31]_i_1_n_4 ,\counter_reg_reg[31]_i_1_n_5 ,\counter_reg_reg[31]_i_1_n_6 ,\counter_reg_reg[31]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_offset_reg[31]_0 ),
        .S({\counter_reg[31]_i_2_n_0 ,\counter_reg[31]_i_3_n_0 ,\counter_reg[31]_i_4_n_0 ,\counter_reg[31]_i_5_n_0 ,\counter_reg[31]_i_6_n_0 ,\counter_reg[31]_i_7_n_0 ,\counter_reg[31]_i_8_n_0 ,\counter_reg[31]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[39]_i_1 
       (.CI(\counter_reg_reg[31]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg_reg[39]_i_1_n_0 ,\counter_reg_reg[39]_i_1_n_1 ,\counter_reg_reg[39]_i_1_n_2 ,\counter_reg_reg[39]_i_1_n_3 ,\counter_reg_reg[39]_i_1_n_4 ,\counter_reg_reg[39]_i_1_n_5 ,\counter_reg_reg[39]_i_1_n_6 ,\counter_reg_reg[39]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_offset_reg[39]_0 ),
        .S({\counter_reg[39]_i_2_n_0 ,\counter_reg[39]_i_3_n_0 ,\counter_reg[39]_i_4_n_0 ,\counter_reg[39]_i_5_n_0 ,\counter_reg[39]_i_6_n_0 ,\counter_reg[39]_i_7_n_0 ,\counter_reg[39]_i_8_n_0 ,\counter_reg[39]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[47]_i_1 
       (.CI(\counter_reg_reg[39]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg_reg[47]_i_1_n_0 ,\counter_reg_reg[47]_i_1_n_1 ,\counter_reg_reg[47]_i_1_n_2 ,\counter_reg_reg[47]_i_1_n_3 ,\counter_reg_reg[47]_i_1_n_4 ,\counter_reg_reg[47]_i_1_n_5 ,\counter_reg_reg[47]_i_1_n_6 ,\counter_reg_reg[47]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_offset_reg[47]_0 ),
        .S({\counter_reg[47]_i_2_n_0 ,\counter_reg[47]_i_3_n_0 ,\counter_reg[47]_i_4_n_0 ,\counter_reg[47]_i_5_n_0 ,\counter_reg[47]_i_6_n_0 ,\counter_reg[47]_i_7_n_0 ,\counter_reg[47]_i_8_n_0 ,\counter_reg[47]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[55]_i_1 
       (.CI(\counter_reg_reg[47]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\counter_reg_reg[55]_i_1_n_0 ,\counter_reg_reg[55]_i_1_n_1 ,\counter_reg_reg[55]_i_1_n_2 ,\counter_reg_reg[55]_i_1_n_3 ,\counter_reg_reg[55]_i_1_n_4 ,\counter_reg_reg[55]_i_1_n_5 ,\counter_reg_reg[55]_i_1_n_6 ,\counter_reg_reg[55]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_offset_reg[55]_0 ),
        .S({\counter_reg[55]_i_2_n_0 ,\counter_reg[55]_i_3_n_0 ,\counter_reg[55]_i_4_n_0 ,\counter_reg[55]_i_5_n_0 ,\counter_reg[55]_i_6_n_0 ,\counter_reg[55]_i_7_n_0 ,\counter_reg[55]_i_8_n_0 ,\counter_reg[55]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[63]_i_2 
       (.CI(\counter_reg_reg[55]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_counter_reg_reg[63]_i_2_CO_UNCONNECTED [7],\counter_reg_reg[63]_i_2_n_1 ,\counter_reg_reg[63]_i_2_n_2 ,\counter_reg_reg[63]_i_2_n_3 ,\counter_reg_reg[63]_i_2_n_4 ,\counter_reg_reg[63]_i_2_n_5 ,\counter_reg_reg[63]_i_2_n_6 ,\counter_reg_reg[63]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\counter_offset_reg[63]_0 ),
        .S({\counter_reg[63]_i_3_n_0 ,\counter_reg[63]_i_4_n_0 ,\counter_reg[63]_i_5_n_0 ,\counter_reg[63]_i_6_n_0 ,\counter_reg[63]_i_7_n_0 ,\counter_reg[63]_i_8_n_0 ,\counter_reg[63]_i_9_n_0 ,\counter_reg[63]_i_10_n_0 }));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \counter_reg_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\counter_reg_reg[7]_i_1_n_0 ,\counter_reg_reg[7]_i_1_n_1 ,\counter_reg_reg[7]_i_1_n_2 ,\counter_reg_reg[7]_i_1_n_3 ,\counter_reg_reg[7]_i_1_n_4 ,\counter_reg_reg[7]_i_1_n_5 ,\counter_reg_reg[7]_i_1_n_6 ,\counter_reg_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\counter_reg[7]_i_2_n_0 }),
        .O(O),
        .S({\counter_reg[7]_i_3_n_0 ,\counter_reg[7]_i_4_n_0 ,\counter_reg[7]_i_5_n_0 ,\counter_reg[7]_i_6_n_0 ,\counter_reg[7]_i_7_n_0 ,\counter_reg[7]_i_8_n_0 ,\counter_reg[7]_i_9_n_0 ,\counter_reg[7]_i_10_n_0 }));
  FDRE offset_en_reg
       (.C(s_axi_aclk),
        .CE(auto_start_i_1_n_0),
        .D(s_axi_wdata[2]),
        .Q(offset_en),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDSE reset_reg
       (.C(s_axi_aclk),
        .CE(auto_start_i_1_n_0),
        .D(s_axi_wdata[1]),
        .Q(reset),
        .S(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    s_axi_arready_INST_0
       (.I0(axi_state_read),
        .O(s_axi_arready));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[0]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[0]),
        .O(\s_axi_bid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[10]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[10]),
        .O(\s_axi_bid[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[11]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[11]),
        .O(\s_axi_bid[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[12]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[12]),
        .O(\s_axi_bid[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[13]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[13]),
        .O(\s_axi_bid[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[14]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[14]),
        .O(\s_axi_bid[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[15]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[15]),
        .O(\s_axi_bid[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[1]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[1]),
        .O(\s_axi_bid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[2]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[2]),
        .O(\s_axi_bid[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[3]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[3]),
        .O(\s_axi_bid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[4]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[4]),
        .O(\s_axi_bid[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[5]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[5]),
        .O(\s_axi_bid[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[6]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[6]),
        .O(\s_axi_bid[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[7]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[7]),
        .O(\s_axi_bid[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[8]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[8]),
        .O(\s_axi_bid[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \s_axi_bid[9]_i_1 
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(axi_awid[9]),
        .O(\s_axi_bid[9]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[0] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[0]_i_1_n_0 ),
        .Q(s_axi_bid[0]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[10] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[10]_i_1_n_0 ),
        .Q(s_axi_bid[10]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[11] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[11]_i_1_n_0 ),
        .Q(s_axi_bid[11]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[12] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[12]_i_1_n_0 ),
        .Q(s_axi_bid[12]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[13] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[13]_i_1_n_0 ),
        .Q(s_axi_bid[13]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[14] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[14]_i_1_n_0 ),
        .Q(s_axi_bid[14]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[15] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[15]_i_1_n_0 ),
        .Q(s_axi_bid[15]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[1]_i_1_n_0 ),
        .Q(s_axi_bid[1]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[2] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[2]_i_1_n_0 ),
        .Q(s_axi_bid[2]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[3] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[3]_i_1_n_0 ),
        .Q(s_axi_bid[3]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[4] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[4]_i_1_n_0 ),
        .Q(s_axi_bid[4]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[5] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[5]_i_1_n_0 ),
        .Q(s_axi_bid[5]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[6] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[6]_i_1_n_0 ),
        .Q(s_axi_bid[6]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[7] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[7]_i_1_n_0 ),
        .Q(s_axi_bid[7]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[8] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[8]_i_1_n_0 ),
        .Q(s_axi_bid[8]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_bid_reg[9] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\s_axi_bid[9]_i_1_n_0 ),
        .Q(s_axi_bid[9]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFA8)) 
    \s_axi_bresp[1]_i_1 
       (.I0(s_axi_bready),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I3(Q),
        .O(\s_axi_bresp[1]_i_1_n_0 ));
  FDRE \s_axi_bresp_reg[1] 
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .Q(s_axi_bresp),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE0)) 
    s_axi_bvalid_i_1
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[4] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[3] ),
        .I2(s_axi_bready),
        .O(s_axi_bvalid_i_1_n_0));
  FDRE s_axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(\s_axi_bresp[1]_i_1_n_0 ),
        .D(s_axi_bvalid_i_1_n_0),
        .Q(s_axi_bvalid),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[0]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[0] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[10]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[10] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[11]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[11] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[12]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[12] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[13]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[13] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[14]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[14] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[15]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[15] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[1]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[1] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[2]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[2] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[3]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[3] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[4]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[4] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[5]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[5] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[6]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[6] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[7]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[7] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[8]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[8] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \s_axi_rid[9]_i_1 
       (.I0(axi_state_read),
        .I1(\axi_arid_reg_n_0_[9] ),
        .I2(s_axi_rready),
        .O(\s_axi_rid[9]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[0]_i_1_n_0 ),
        .Q(s_axi_rid[0]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[10]_i_1_n_0 ),
        .Q(s_axi_rid[10]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[11]_i_1_n_0 ),
        .Q(s_axi_rid[11]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[12]_i_1_n_0 ),
        .Q(s_axi_rid[12]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[13]_i_1_n_0 ),
        .Q(s_axi_rid[13]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[14]_i_1_n_0 ),
        .Q(s_axi_rid[14]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[15]_i_1_n_0 ),
        .Q(s_axi_rid[15]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[1]_i_1_n_0 ),
        .Q(s_axi_rid[1]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[2]_i_1_n_0 ),
        .Q(s_axi_rid[2]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[3]_i_1_n_0 ),
        .Q(s_axi_rid[3]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[4]_i_1_n_0 ),
        .Q(s_axi_rid[4]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[5]_i_1_n_0 ),
        .Q(s_axi_rid[5]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[6]_i_1_n_0 ),
        .Q(s_axi_rid[6]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[7]_i_1_n_0 ),
        .Q(s_axi_rid[7]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[8]_i_1_n_0 ),
        .Q(s_axi_rid[8]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  FDRE \s_axi_rid_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\s_axi_rid[9]_i_1_n_0 ),
        .Q(s_axi_rid[9]),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    s_axi_rvalid_i_1
       (.I0(s_axi_rready),
        .I1(axi_state_read),
        .I2(s_axi_rlast),
        .O(s_axi_rvalid_i_1_n_0));
  FDRE s_axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(s_axi_rvalid_i_1_n_0),
        .Q(s_axi_rlast),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    s_axi_wready_INST_0
       (.I0(\FSM_onehot_axi_state_write_reg_n_0_[1] ),
        .I1(\FSM_onehot_axi_state_write_reg_n_0_[2] ),
        .O(s_axi_wready));
  FDRE start_reg
       (.C(s_axi_aclk),
        .CE(auto_start_i_1_n_0),
        .D(s_axi_wdata[0]),
        .Q(start),
        .R(\FSM_onehot_axi_state_write[0]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "RFSoC_Main_blk_TimeController_0_0,TimeController,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "TimeController,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (s_axi_awaddr,
    s_axi_awid,
    s_axi_awburst,
    s_axi_awsize,
    s_axi_awlen,
    s_axi_awvalid,
    s_axi_awuser,
    s_axi_awready,
    s_axi_bready,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_wready,
    s_axi_arburst,
    s_axi_arlen,
    s_axi_araddr,
    s_axi_arsize,
    s_axi_arvalid,
    s_axi_arid,
    s_axi_aruser,
    s_axi_arready,
    s_axi_rid,
    s_axi_rready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rlast,
    s_axi_aclk,
    s_axi_aresetn,
    auto_start,
    counter);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) input [5:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWID" *) input [15:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWUSER" *) input [15:0]s_axi_awuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BID" *) output [15:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [127:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [15:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [5:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARID" *) input [15:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARUSER" *) input [15:0]s_axi_aruser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RID" *) output [15:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [127:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 16, ADDR_WIDTH 6, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN RFSoC_Main_blk_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN RFSoC_Main_blk_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  output auto_start;
  output [63:0]counter;

  wire \<const0> ;
  wire auto_start;
  wire [63:0]counter;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire [15:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:1]\^s_axi_bresp ;
  wire s_axi_bvalid;
  wire [15:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [127:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;

  assign s_axi_bresp[1] = \^s_axi_bresp [1];
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rdata[127] = \<const0> ;
  assign s_axi_rdata[126] = \<const0> ;
  assign s_axi_rdata[125] = \<const0> ;
  assign s_axi_rdata[124] = \<const0> ;
  assign s_axi_rdata[123] = \<const0> ;
  assign s_axi_rdata[122] = \<const0> ;
  assign s_axi_rdata[121] = \<const0> ;
  assign s_axi_rdata[120] = \<const0> ;
  assign s_axi_rdata[119] = \<const0> ;
  assign s_axi_rdata[118] = \<const0> ;
  assign s_axi_rdata[117] = \<const0> ;
  assign s_axi_rdata[116] = \<const0> ;
  assign s_axi_rdata[115] = \<const0> ;
  assign s_axi_rdata[114] = \<const0> ;
  assign s_axi_rdata[113] = \<const0> ;
  assign s_axi_rdata[112] = \<const0> ;
  assign s_axi_rdata[111] = \<const0> ;
  assign s_axi_rdata[110] = \<const0> ;
  assign s_axi_rdata[109] = \<const0> ;
  assign s_axi_rdata[108] = \<const0> ;
  assign s_axi_rdata[107] = \<const0> ;
  assign s_axi_rdata[106] = \<const0> ;
  assign s_axi_rdata[105] = \<const0> ;
  assign s_axi_rdata[104] = \<const0> ;
  assign s_axi_rdata[103] = \<const0> ;
  assign s_axi_rdata[102] = \<const0> ;
  assign s_axi_rdata[101] = \<const0> ;
  assign s_axi_rdata[100] = \<const0> ;
  assign s_axi_rdata[99] = \<const0> ;
  assign s_axi_rdata[98] = \<const0> ;
  assign s_axi_rdata[97] = \<const0> ;
  assign s_axi_rdata[96] = \<const0> ;
  assign s_axi_rdata[95] = \<const0> ;
  assign s_axi_rdata[94] = \<const0> ;
  assign s_axi_rdata[93] = \<const0> ;
  assign s_axi_rdata[92] = \<const0> ;
  assign s_axi_rdata[91] = \<const0> ;
  assign s_axi_rdata[90] = \<const0> ;
  assign s_axi_rdata[89] = \<const0> ;
  assign s_axi_rdata[88] = \<const0> ;
  assign s_axi_rdata[87] = \<const0> ;
  assign s_axi_rdata[86] = \<const0> ;
  assign s_axi_rdata[85] = \<const0> ;
  assign s_axi_rdata[84] = \<const0> ;
  assign s_axi_rdata[83] = \<const0> ;
  assign s_axi_rdata[82] = \<const0> ;
  assign s_axi_rdata[81] = \<const0> ;
  assign s_axi_rdata[80] = \<const0> ;
  assign s_axi_rdata[79] = \<const0> ;
  assign s_axi_rdata[78] = \<const0> ;
  assign s_axi_rdata[77] = \<const0> ;
  assign s_axi_rdata[76] = \<const0> ;
  assign s_axi_rdata[75] = \<const0> ;
  assign s_axi_rdata[74] = \<const0> ;
  assign s_axi_rdata[73] = \<const0> ;
  assign s_axi_rdata[72] = \<const0> ;
  assign s_axi_rdata[71] = \<const0> ;
  assign s_axi_rdata[70] = \<const0> ;
  assign s_axi_rdata[69] = \<const0> ;
  assign s_axi_rdata[68] = \<const0> ;
  assign s_axi_rdata[67] = \<const0> ;
  assign s_axi_rdata[66] = \<const0> ;
  assign s_axi_rdata[65] = \<const0> ;
  assign s_axi_rdata[64] = \<const0> ;
  assign s_axi_rdata[63] = \<const0> ;
  assign s_axi_rdata[62] = \<const0> ;
  assign s_axi_rdata[61] = \<const0> ;
  assign s_axi_rdata[60] = \<const0> ;
  assign s_axi_rdata[59] = \<const0> ;
  assign s_axi_rdata[58] = \<const0> ;
  assign s_axi_rdata[57] = \<const0> ;
  assign s_axi_rdata[56] = \<const0> ;
  assign s_axi_rdata[55] = \<const0> ;
  assign s_axi_rdata[54] = \<const0> ;
  assign s_axi_rdata[53] = \<const0> ;
  assign s_axi_rdata[52] = \<const0> ;
  assign s_axi_rdata[51] = \<const0> ;
  assign s_axi_rdata[50] = \<const0> ;
  assign s_axi_rdata[49] = \<const0> ;
  assign s_axi_rdata[48] = \<const0> ;
  assign s_axi_rdata[47] = \<const0> ;
  assign s_axi_rdata[46] = \<const0> ;
  assign s_axi_rdata[45] = \<const0> ;
  assign s_axi_rdata[44] = \<const0> ;
  assign s_axi_rdata[43] = \<const0> ;
  assign s_axi_rdata[42] = \<const0> ;
  assign s_axi_rdata[41] = \<const0> ;
  assign s_axi_rdata[40] = \<const0> ;
  assign s_axi_rdata[39] = \<const0> ;
  assign s_axi_rdata[38] = \<const0> ;
  assign s_axi_rdata[37] = \<const0> ;
  assign s_axi_rdata[36] = \<const0> ;
  assign s_axi_rdata[35] = \<const0> ;
  assign s_axi_rdata[34] = \<const0> ;
  assign s_axi_rdata[33] = \<const0> ;
  assign s_axi_rdata[32] = \<const0> ;
  assign s_axi_rdata[31] = \<const0> ;
  assign s_axi_rdata[30] = \<const0> ;
  assign s_axi_rdata[29] = \<const0> ;
  assign s_axi_rdata[28] = \<const0> ;
  assign s_axi_rdata[27] = \<const0> ;
  assign s_axi_rdata[26] = \<const0> ;
  assign s_axi_rdata[25] = \<const0> ;
  assign s_axi_rdata[24] = \<const0> ;
  assign s_axi_rdata[23] = \<const0> ;
  assign s_axi_rdata[22] = \<const0> ;
  assign s_axi_rdata[21] = \<const0> ;
  assign s_axi_rdata[20] = \<const0> ;
  assign s_axi_rdata[19] = \<const0> ;
  assign s_axi_rdata[18] = \<const0> ;
  assign s_axi_rdata[17] = \<const0> ;
  assign s_axi_rdata[16] = \<const0> ;
  assign s_axi_rdata[15] = \<const0> ;
  assign s_axi_rdata[14] = \<const0> ;
  assign s_axi_rdata[13] = \<const0> ;
  assign s_axi_rdata[12] = \<const0> ;
  assign s_axi_rdata[11] = \<const0> ;
  assign s_axi_rdata[10] = \<const0> ;
  assign s_axi_rdata[9] = \<const0> ;
  assign s_axi_rdata[8] = \<const0> ;
  assign s_axi_rdata[7] = \<const0> ;
  assign s_axi_rdata[6] = \<const0> ;
  assign s_axi_rdata[5] = \<const0> ;
  assign s_axi_rdata[4] = \<const0> ;
  assign s_axi_rdata[3] = \<const0> ;
  assign s_axi_rdata[2] = \<const0> ;
  assign s_axi_rdata[1] = \<const0> ;
  assign s_axi_rdata[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_rvalid = s_axi_rlast;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeController inst
       (.auto_start(auto_start),
        .counter(counter),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awid(s_axi_awid),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(\^s_axi_bresp ),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata[63:0]),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeController
   (counter,
    s_axi_wready,
    s_axi_awready,
    s_axi_bresp,
    s_axi_bid,
    s_axi_rid,
    auto_start,
    s_axi_arready,
    s_axi_bvalid,
    s_axi_rlast,
    s_axi_awvalid,
    s_axi_awid,
    s_axi_aclk,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wlast,
    s_axi_bready,
    s_axi_awaddr,
    s_axi_arid,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_aresetn);
  output [63:0]counter;
  output s_axi_wready;
  output s_axi_awready;
  output [0:0]s_axi_bresp;
  output [15:0]s_axi_bid;
  output [15:0]s_axi_rid;
  output auto_start;
  output s_axi_arready;
  output s_axi_bvalid;
  output s_axi_rlast;
  input s_axi_awvalid;
  input [15:0]s_axi_awid;
  input s_axi_aclk;
  input [63:0]s_axi_wdata;
  input s_axi_wvalid;
  input s_axi_wlast;
  input s_axi_bready;
  input [5:0]s_axi_awaddr;
  input [15:0]s_axi_arid;
  input s_axi_arvalid;
  input s_axi_rready;
  input s_axi_aresetn;

  wire auto_start;
  wire axi2com_0_n_10;
  wire axi2com_0_n_11;
  wire axi2com_0_n_12;
  wire axi2com_0_n_13;
  wire axi2com_0_n_14;
  wire axi2com_0_n_15;
  wire axi2com_0_n_16;
  wire axi2com_0_n_17;
  wire axi2com_0_n_18;
  wire axi2com_0_n_19;
  wire axi2com_0_n_20;
  wire axi2com_0_n_21;
  wire axi2com_0_n_22;
  wire axi2com_0_n_23;
  wire axi2com_0_n_24;
  wire axi2com_0_n_25;
  wire axi2com_0_n_26;
  wire axi2com_0_n_27;
  wire axi2com_0_n_28;
  wire axi2com_0_n_29;
  wire axi2com_0_n_30;
  wire axi2com_0_n_31;
  wire axi2com_0_n_32;
  wire axi2com_0_n_33;
  wire axi2com_0_n_34;
  wire axi2com_0_n_35;
  wire axi2com_0_n_36;
  wire axi2com_0_n_37;
  wire axi2com_0_n_38;
  wire axi2com_0_n_39;
  wire axi2com_0_n_40;
  wire axi2com_0_n_41;
  wire axi2com_0_n_42;
  wire axi2com_0_n_43;
  wire axi2com_0_n_44;
  wire axi2com_0_n_45;
  wire axi2com_0_n_46;
  wire axi2com_0_n_47;
  wire axi2com_0_n_48;
  wire axi2com_0_n_49;
  wire axi2com_0_n_5;
  wire axi2com_0_n_50;
  wire axi2com_0_n_51;
  wire axi2com_0_n_52;
  wire axi2com_0_n_53;
  wire axi2com_0_n_54;
  wire axi2com_0_n_55;
  wire axi2com_0_n_56;
  wire axi2com_0_n_57;
  wire axi2com_0_n_58;
  wire axi2com_0_n_59;
  wire axi2com_0_n_6;
  wire axi2com_0_n_60;
  wire axi2com_0_n_61;
  wire axi2com_0_n_62;
  wire axi2com_0_n_63;
  wire axi2com_0_n_64;
  wire axi2com_0_n_65;
  wire axi2com_0_n_66;
  wire axi2com_0_n_67;
  wire axi2com_0_n_68;
  wire axi2com_0_n_69;
  wire axi2com_0_n_7;
  wire axi2com_0_n_8;
  wire axi2com_0_n_9;
  wire [63:0]counter;
  wire reset;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [15:0]s_axi_arid;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [5:0]s_axi_awaddr;
  wire [15:0]s_axi_awid;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire [15:0]s_axi_bid;
  wire s_axi_bready;
  wire [0:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [15:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wvalid;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_AXI2COM axi2com_0
       (.O({axi2com_0_n_5,axi2com_0_n_6,axi2com_0_n_7,axi2com_0_n_8,axi2com_0_n_9,axi2com_0_n_10,axi2com_0_n_11,axi2com_0_n_12}),
        .Q(s_axi_awready),
        .auto_start(auto_start),
        .counter(counter),
        .\counter_offset_reg[15]_0 ({axi2com_0_n_13,axi2com_0_n_14,axi2com_0_n_15,axi2com_0_n_16,axi2com_0_n_17,axi2com_0_n_18,axi2com_0_n_19,axi2com_0_n_20}),
        .\counter_offset_reg[23]_0 ({axi2com_0_n_21,axi2com_0_n_22,axi2com_0_n_23,axi2com_0_n_24,axi2com_0_n_25,axi2com_0_n_26,axi2com_0_n_27,axi2com_0_n_28}),
        .\counter_offset_reg[31]_0 ({axi2com_0_n_29,axi2com_0_n_30,axi2com_0_n_31,axi2com_0_n_32,axi2com_0_n_33,axi2com_0_n_34,axi2com_0_n_35,axi2com_0_n_36}),
        .\counter_offset_reg[39]_0 ({axi2com_0_n_37,axi2com_0_n_38,axi2com_0_n_39,axi2com_0_n_40,axi2com_0_n_41,axi2com_0_n_42,axi2com_0_n_43,axi2com_0_n_44}),
        .\counter_offset_reg[47]_0 ({axi2com_0_n_45,axi2com_0_n_46,axi2com_0_n_47,axi2com_0_n_48,axi2com_0_n_49,axi2com_0_n_50,axi2com_0_n_51,axi2com_0_n_52}),
        .\counter_offset_reg[55]_0 ({axi2com_0_n_53,axi2com_0_n_54,axi2com_0_n_55,axi2com_0_n_56,axi2com_0_n_57,axi2com_0_n_58,axi2com_0_n_59,axi2com_0_n_60}),
        .\counter_offset_reg[63]_0 ({axi2com_0_n_61,axi2com_0_n_62,axi2com_0_n_63,axi2com_0_n_64,axi2com_0_n_65,axi2com_0_n_66,axi2com_0_n_67,axi2com_0_n_68}),
        .offset_en_reg_0(axi2com_0_n_69),
        .reset(reset),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arid(s_axi_arid),
        .s_axi_arready(s_axi_arready),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awid(s_axi_awid),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Timestamp_Counter timestamp_counter_0
       (.O({axi2com_0_n_5,axi2com_0_n_6,axi2com_0_n_7,axi2com_0_n_8,axi2com_0_n_9,axi2com_0_n_10,axi2com_0_n_11,axi2com_0_n_12}),
        .counter(counter),
        .\counter_reg_reg[15]_0 ({axi2com_0_n_13,axi2com_0_n_14,axi2com_0_n_15,axi2com_0_n_16,axi2com_0_n_17,axi2com_0_n_18,axi2com_0_n_19,axi2com_0_n_20}),
        .\counter_reg_reg[23]_0 ({axi2com_0_n_21,axi2com_0_n_22,axi2com_0_n_23,axi2com_0_n_24,axi2com_0_n_25,axi2com_0_n_26,axi2com_0_n_27,axi2com_0_n_28}),
        .\counter_reg_reg[31]_0 ({axi2com_0_n_29,axi2com_0_n_30,axi2com_0_n_31,axi2com_0_n_32,axi2com_0_n_33,axi2com_0_n_34,axi2com_0_n_35,axi2com_0_n_36}),
        .\counter_reg_reg[39]_0 ({axi2com_0_n_37,axi2com_0_n_38,axi2com_0_n_39,axi2com_0_n_40,axi2com_0_n_41,axi2com_0_n_42,axi2com_0_n_43,axi2com_0_n_44}),
        .\counter_reg_reg[47]_0 ({axi2com_0_n_45,axi2com_0_n_46,axi2com_0_n_47,axi2com_0_n_48,axi2com_0_n_49,axi2com_0_n_50,axi2com_0_n_51,axi2com_0_n_52}),
        .\counter_reg_reg[55]_0 ({axi2com_0_n_53,axi2com_0_n_54,axi2com_0_n_55,axi2com_0_n_56,axi2com_0_n_57,axi2com_0_n_58,axi2com_0_n_59,axi2com_0_n_60}),
        .\counter_reg_reg[63]_0 (axi2com_0_n_69),
        .\counter_reg_reg[63]_1 ({axi2com_0_n_61,axi2com_0_n_62,axi2com_0_n_63,axi2com_0_n_64,axi2com_0_n_65,axi2com_0_n_66,axi2com_0_n_67,axi2com_0_n_68}),
        .reset(reset),
        .s_axi_aclk(s_axi_aclk));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Timestamp_Counter
   (counter,
    reset,
    \counter_reg_reg[63]_0 ,
    O,
    s_axi_aclk,
    \counter_reg_reg[15]_0 ,
    \counter_reg_reg[23]_0 ,
    \counter_reg_reg[31]_0 ,
    \counter_reg_reg[39]_0 ,
    \counter_reg_reg[47]_0 ,
    \counter_reg_reg[55]_0 ,
    \counter_reg_reg[63]_1 );
  output [63:0]counter;
  input reset;
  input \counter_reg_reg[63]_0 ;
  input [7:0]O;
  input s_axi_aclk;
  input [7:0]\counter_reg_reg[15]_0 ;
  input [7:0]\counter_reg_reg[23]_0 ;
  input [7:0]\counter_reg_reg[31]_0 ;
  input [7:0]\counter_reg_reg[39]_0 ;
  input [7:0]\counter_reg_reg[47]_0 ;
  input [7:0]\counter_reg_reg[55]_0 ;
  input [7:0]\counter_reg_reg[63]_1 ;

  wire [7:0]O;
  wire [63:0]counter;
  wire [7:0]\counter_reg_reg[15]_0 ;
  wire [7:0]\counter_reg_reg[23]_0 ;
  wire [7:0]\counter_reg_reg[31]_0 ;
  wire [7:0]\counter_reg_reg[39]_0 ;
  wire [7:0]\counter_reg_reg[47]_0 ;
  wire [7:0]\counter_reg_reg[55]_0 ;
  wire \counter_reg_reg[63]_0 ;
  wire [7:0]\counter_reg_reg[63]_1 ;
  wire reset;
  wire s_axi_aclk;

  FDRE \counter_reg_reg[0] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[0]),
        .Q(counter[0]),
        .R(reset));
  FDRE \counter_reg_reg[10] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [2]),
        .Q(counter[10]),
        .R(reset));
  FDRE \counter_reg_reg[11] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [3]),
        .Q(counter[11]),
        .R(reset));
  FDRE \counter_reg_reg[12] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [4]),
        .Q(counter[12]),
        .R(reset));
  FDRE \counter_reg_reg[13] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [5]),
        .Q(counter[13]),
        .R(reset));
  FDRE \counter_reg_reg[14] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [6]),
        .Q(counter[14]),
        .R(reset));
  FDRE \counter_reg_reg[15] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [7]),
        .Q(counter[15]),
        .R(reset));
  FDRE \counter_reg_reg[16] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [0]),
        .Q(counter[16]),
        .R(reset));
  FDRE \counter_reg_reg[17] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [1]),
        .Q(counter[17]),
        .R(reset));
  FDRE \counter_reg_reg[18] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [2]),
        .Q(counter[18]),
        .R(reset));
  FDRE \counter_reg_reg[19] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [3]),
        .Q(counter[19]),
        .R(reset));
  FDRE \counter_reg_reg[1] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[1]),
        .Q(counter[1]),
        .R(reset));
  FDRE \counter_reg_reg[20] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [4]),
        .Q(counter[20]),
        .R(reset));
  FDRE \counter_reg_reg[21] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [5]),
        .Q(counter[21]),
        .R(reset));
  FDRE \counter_reg_reg[22] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [6]),
        .Q(counter[22]),
        .R(reset));
  FDRE \counter_reg_reg[23] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[23]_0 [7]),
        .Q(counter[23]),
        .R(reset));
  FDRE \counter_reg_reg[24] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [0]),
        .Q(counter[24]),
        .R(reset));
  FDRE \counter_reg_reg[25] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [1]),
        .Q(counter[25]),
        .R(reset));
  FDRE \counter_reg_reg[26] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [2]),
        .Q(counter[26]),
        .R(reset));
  FDRE \counter_reg_reg[27] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [3]),
        .Q(counter[27]),
        .R(reset));
  FDRE \counter_reg_reg[28] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [4]),
        .Q(counter[28]),
        .R(reset));
  FDRE \counter_reg_reg[29] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [5]),
        .Q(counter[29]),
        .R(reset));
  FDRE \counter_reg_reg[2] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[2]),
        .Q(counter[2]),
        .R(reset));
  FDRE \counter_reg_reg[30] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [6]),
        .Q(counter[30]),
        .R(reset));
  FDRE \counter_reg_reg[31] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[31]_0 [7]),
        .Q(counter[31]),
        .R(reset));
  FDRE \counter_reg_reg[32] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [0]),
        .Q(counter[32]),
        .R(reset));
  FDRE \counter_reg_reg[33] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [1]),
        .Q(counter[33]),
        .R(reset));
  FDRE \counter_reg_reg[34] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [2]),
        .Q(counter[34]),
        .R(reset));
  FDRE \counter_reg_reg[35] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [3]),
        .Q(counter[35]),
        .R(reset));
  FDRE \counter_reg_reg[36] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [4]),
        .Q(counter[36]),
        .R(reset));
  FDRE \counter_reg_reg[37] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [5]),
        .Q(counter[37]),
        .R(reset));
  FDRE \counter_reg_reg[38] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [6]),
        .Q(counter[38]),
        .R(reset));
  FDRE \counter_reg_reg[39] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[39]_0 [7]),
        .Q(counter[39]),
        .R(reset));
  FDRE \counter_reg_reg[3] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[3]),
        .Q(counter[3]),
        .R(reset));
  FDRE \counter_reg_reg[40] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [0]),
        .Q(counter[40]),
        .R(reset));
  FDRE \counter_reg_reg[41] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [1]),
        .Q(counter[41]),
        .R(reset));
  FDRE \counter_reg_reg[42] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [2]),
        .Q(counter[42]),
        .R(reset));
  FDRE \counter_reg_reg[43] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [3]),
        .Q(counter[43]),
        .R(reset));
  FDRE \counter_reg_reg[44] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [4]),
        .Q(counter[44]),
        .R(reset));
  FDRE \counter_reg_reg[45] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [5]),
        .Q(counter[45]),
        .R(reset));
  FDRE \counter_reg_reg[46] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [6]),
        .Q(counter[46]),
        .R(reset));
  FDRE \counter_reg_reg[47] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[47]_0 [7]),
        .Q(counter[47]),
        .R(reset));
  FDRE \counter_reg_reg[48] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [0]),
        .Q(counter[48]),
        .R(reset));
  FDRE \counter_reg_reg[49] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [1]),
        .Q(counter[49]),
        .R(reset));
  FDRE \counter_reg_reg[4] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[4]),
        .Q(counter[4]),
        .R(reset));
  FDRE \counter_reg_reg[50] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [2]),
        .Q(counter[50]),
        .R(reset));
  FDRE \counter_reg_reg[51] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [3]),
        .Q(counter[51]),
        .R(reset));
  FDRE \counter_reg_reg[52] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [4]),
        .Q(counter[52]),
        .R(reset));
  FDRE \counter_reg_reg[53] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [5]),
        .Q(counter[53]),
        .R(reset));
  FDRE \counter_reg_reg[54] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [6]),
        .Q(counter[54]),
        .R(reset));
  FDRE \counter_reg_reg[55] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[55]_0 [7]),
        .Q(counter[55]),
        .R(reset));
  FDRE \counter_reg_reg[56] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [0]),
        .Q(counter[56]),
        .R(reset));
  FDRE \counter_reg_reg[57] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [1]),
        .Q(counter[57]),
        .R(reset));
  FDRE \counter_reg_reg[58] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [2]),
        .Q(counter[58]),
        .R(reset));
  FDRE \counter_reg_reg[59] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [3]),
        .Q(counter[59]),
        .R(reset));
  FDRE \counter_reg_reg[5] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[5]),
        .Q(counter[5]),
        .R(reset));
  FDRE \counter_reg_reg[60] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [4]),
        .Q(counter[60]),
        .R(reset));
  FDRE \counter_reg_reg[61] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [5]),
        .Q(counter[61]),
        .R(reset));
  FDRE \counter_reg_reg[62] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [6]),
        .Q(counter[62]),
        .R(reset));
  FDRE \counter_reg_reg[63] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[63]_1 [7]),
        .Q(counter[63]),
        .R(reset));
  FDRE \counter_reg_reg[6] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[6]),
        .Q(counter[6]),
        .R(reset));
  FDRE \counter_reg_reg[7] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(O[7]),
        .Q(counter[7]),
        .R(reset));
  FDRE \counter_reg_reg[8] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [0]),
        .Q(counter[8]),
        .R(reset));
  FDRE \counter_reg_reg[9] 
       (.C(s_axi_aclk),
        .CE(\counter_reg_reg[63]_0 ),
        .D(\counter_reg_reg[15]_0 [1]),
        .Q(counter[9]),
        .R(reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
