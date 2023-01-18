//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Jan 17 16:58:30 2023
//Host        : LAPTOP-ETOV1IS0 running 64-bit major release  (build 9200)
//Command     : generate_target RFSoC_TEST_block_0_wrapper.bd
//Design      : RFSoC_TEST_block_0_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RFSoC_TEST_block_0_wrapper
   (dac0_clk_clk_n,
    dac0_clk_clk_p,
    sysref_in_diff_n,
    sysref_in_diff_p);
  input dac0_clk_clk_n;
  input dac0_clk_clk_p;
  input sysref_in_diff_n;
  input sysref_in_diff_p;

  wire dac0_clk_clk_n;
  wire dac0_clk_clk_p;
  wire sysref_in_diff_n;
  wire sysref_in_diff_p;

  RFSoC_TEST_block_0 RFSoC_TEST_block_0_i
       (.dac0_clk_clk_n(dac0_clk_clk_n),
        .dac0_clk_clk_p(dac0_clk_clk_p),
        .sysref_in_diff_n(sysref_in_diff_n),
        .sysref_in_diff_p(sysref_in_diff_p));
endmodule
