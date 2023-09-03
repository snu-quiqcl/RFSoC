// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep  3 18:43:50 2023
// Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RFSoC_Main_blk_TimeControllerBuffer_0_0_stub.v
// Design      : RFSoC_Main_blk_TimeControllerBuffer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "TimeControllerBuffer,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(counter_I, auto_start_I, s_axi_aclk, 
  s_axi_aresetn, counter0_O, auto_start0_O, counter1_O, auto_start1_O, counter2_O, 
  auto_start2_O, counter3_O, auto_start3_O)
/* synthesis syn_black_box black_box_pad_pin="counter_I[63:0],auto_start_I,s_axi_aclk,s_axi_aresetn,counter0_O[63:0],auto_start0_O,counter1_O[63:0],auto_start1_O,counter2_O[63:0],auto_start2_O,counter3_O[63:0],auto_start3_O" */;
  input [63:0]counter_I;
  input auto_start_I;
  input s_axi_aclk;
  input s_axi_aresetn;
  output [63:0]counter0_O;
  output auto_start0_O;
  output [63:0]counter1_O;
  output auto_start1_O;
  output [63:0]counter2_O;
  output auto_start2_O;
  output [63:0]counter3_O;
  output auto_start3_O;
endmodule
