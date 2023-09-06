// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Sep  5 21:13:37 2023
// Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RFSoC_Main_blk_DAC_Controller_7_0_stub.v
// Design      : RFSoC_Main_blk_DAC_Controller_7_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "DAC_Controller_7,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(s_axi_awaddr, s_axi_awid, s_axi_awburst, 
  s_axi_awsize, s_axi_awlen, s_axi_awvalid, s_axi_awuser, s_axi_awready, s_axi_bready, 
  s_axi_bresp, s_axi_bvalid, s_axi_bid, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wlast, 
  s_axi_wready, s_axi_arburst, s_axi_arlen, s_axi_araddr, s_axi_arsize, s_axi_arvalid, 
  s_axi_arid, s_axi_aruser, s_axi_arready, s_axi_rid, s_axi_rready, s_axi_rdata, s_axi_rresp, 
  s_axi_rvalid, s_axi_rlast, s_axi_aclk, m00_axis_aclk, s_axi_aresetn, m00_axis_tdata, 
  m00_axis_tvalid, m00_axis_tready, auto_start, counter)
/* synthesis syn_black_box black_box_pad_pin="s_axi_awaddr[5:0],s_axi_awid[15:0],s_axi_awburst[1:0],s_axi_awsize[2:0],s_axi_awlen[7:0],s_axi_awvalid,s_axi_awuser[15:0],s_axi_awready,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bid[15:0],s_axi_wdata[127:0],s_axi_wstrb[15:0],s_axi_wvalid,s_axi_wlast,s_axi_wready,s_axi_arburst[1:0],s_axi_arlen[7:0],s_axi_araddr[5:0],s_axi_arsize[2:0],s_axi_arvalid,s_axi_arid[15:0],s_axi_aruser[15:0],s_axi_arready,s_axi_rid[15:0],s_axi_rready,s_axi_rdata[127:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rlast,s_axi_aclk,m00_axis_aclk,s_axi_aresetn,m00_axis_tdata[255:0],m00_axis_tvalid,m00_axis_tready,auto_start,counter[63:0]" */;
  input [5:0]s_axi_awaddr;
  input [15:0]s_axi_awid;
  input [1:0]s_axi_awburst;
  input [2:0]s_axi_awsize;
  input [7:0]s_axi_awlen;
  input s_axi_awvalid;
  input [15:0]s_axi_awuser;
  output s_axi_awready;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  output [15:0]s_axi_bid;
  input [127:0]s_axi_wdata;
  input [15:0]s_axi_wstrb;
  input s_axi_wvalid;
  input s_axi_wlast;
  output s_axi_wready;
  input [1:0]s_axi_arburst;
  input [7:0]s_axi_arlen;
  input [5:0]s_axi_araddr;
  input [2:0]s_axi_arsize;
  input s_axi_arvalid;
  input [15:0]s_axi_arid;
  input [15:0]s_axi_aruser;
  output s_axi_arready;
  output [15:0]s_axi_rid;
  input s_axi_rready;
  output [127:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  output s_axi_rlast;
  input s_axi_aclk;
  input m00_axis_aclk;
  input s_axi_aresetn;
  output [255:0]m00_axis_tdata;
  output m00_axis_tvalid;
  input m00_axis_tready;
  input auto_start;
  input [63:0]counter;
endmodule
