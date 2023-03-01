//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Wed Mar  1 16:48:45 2023
//Host        : LAPTOP-ETOV1IS0 running 64-bit major release  (build 9200)
//Command     : generate_target TEST_00_Block_wrapper.bd
//Design      : TEST_00_Block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TEST_00_Block_wrapper
   (dac0_clk_0_clk_n,
    dac0_clk_0_clk_p,
    vout00_0_v_n,
    vout00_0_v_p);
  input dac0_clk_0_clk_n;
  input dac0_clk_0_clk_p;
  output vout00_0_v_n;
  output vout00_0_v_p;

  wire dac0_clk_0_clk_n;
  wire dac0_clk_0_clk_p;
  wire vout00_0_v_n;
  wire vout00_0_v_p;

  TEST_00_Block TEST_00_Block_i
       (.dac0_clk_0_clk_n(dac0_clk_0_clk_n),
        .dac0_clk_0_clk_p(dac0_clk_0_clk_p),
        .vout00_0_v_n(vout00_0_v_n),
        .vout00_0_v_p(vout00_0_v_p));
endmodule
