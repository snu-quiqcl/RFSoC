//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Fri Sep  1 15:39:28 2023
//Host        : LAPTOP-ETOV1IS0 running 64-bit major release  (build 9200)
//Command     : generate_target RFSoC_Main_test_blk_wrapper.bd
//Design      : RFSoC_Main_test_blk_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RFSoC_Main_test_blk_wrapper
   (RF3_CLKO_A_C_N,
    RF3_CLKO_A_C_P,
    RFMC_DAC_00_N,
    RFMC_DAC_00_P);
  input RF3_CLKO_A_C_N;
  input RF3_CLKO_A_C_P;
  output RFMC_DAC_00_N;
  output RFMC_DAC_00_P;

  wire RF3_CLKO_A_C_N;
  wire RF3_CLKO_A_C_P;
  wire RFMC_DAC_00_N;
  wire RFMC_DAC_00_P;

  RFSoC_Main_test_blk RFSoC_Main_test_blk_i
       (.RF3_CLKO_A_C_N(RF3_CLKO_A_C_N),
        .RF3_CLKO_A_C_P(RF3_CLKO_A_C_P),
        .RFMC_DAC_00_N(RFMC_DAC_00_N),
        .RFMC_DAC_00_P(RFMC_DAC_00_P));
endmodule
