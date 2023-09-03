//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Sun Sep  3 18:40:24 2023
//Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
//Command     : generate_target RFSoC_Main_blk_wrapper.bd
//Design      : RFSoC_Main_blk_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RFSoC_Main_blk_wrapper
   (RF3_CLKO_A_C_N_228,
    RF3_CLKO_A_C_N_229,
    RF3_CLKO_A_C_P_228,
    RF3_CLKO_A_C_P_229,
    RFMC_DAC_00_N,
    RFMC_DAC_00_P,
    RFMC_DAC_01_N,
    RFMC_DAC_01_P,
    RFMC_DAC_02_N,
    RFMC_DAC_02_P,
    RFMC_DAC_03_N,
    RFMC_DAC_03_P,
    RFMC_DAC_04_N,
    RFMC_DAC_04_P,
    RFMC_DAC_05_N,
    RFMC_DAC_05_P,
    RFMC_DAC_06_N,
    RFMC_DAC_06_P,
    RFMC_DAC_07_N,
    RFMC_DAC_07_P);
  input RF3_CLKO_A_C_N_228;
  input RF3_CLKO_A_C_N_229;
  input RF3_CLKO_A_C_P_228;
  input RF3_CLKO_A_C_P_229;
  output RFMC_DAC_00_N;
  output RFMC_DAC_00_P;
  output RFMC_DAC_01_N;
  output RFMC_DAC_01_P;
  output RFMC_DAC_02_N;
  output RFMC_DAC_02_P;
  output RFMC_DAC_03_N;
  output RFMC_DAC_03_P;
  output RFMC_DAC_04_N;
  output RFMC_DAC_04_P;
  output RFMC_DAC_05_N;
  output RFMC_DAC_05_P;
  output RFMC_DAC_06_N;
  output RFMC_DAC_06_P;
  output RFMC_DAC_07_N;
  output RFMC_DAC_07_P;

  wire RF3_CLKO_A_C_N_228;
  wire RF3_CLKO_A_C_N_229;
  wire RF3_CLKO_A_C_P_228;
  wire RF3_CLKO_A_C_P_229;
  wire RFMC_DAC_00_N;
  wire RFMC_DAC_00_P;
  wire RFMC_DAC_01_N;
  wire RFMC_DAC_01_P;
  wire RFMC_DAC_02_N;
  wire RFMC_DAC_02_P;
  wire RFMC_DAC_03_N;
  wire RFMC_DAC_03_P;
  wire RFMC_DAC_04_N;
  wire RFMC_DAC_04_P;
  wire RFMC_DAC_05_N;
  wire RFMC_DAC_05_P;
  wire RFMC_DAC_06_N;
  wire RFMC_DAC_06_P;
  wire RFMC_DAC_07_N;
  wire RFMC_DAC_07_P;

  RFSoC_Main_blk RFSoC_Main_blk_i
       (.RF3_CLKO_A_C_N_228(RF3_CLKO_A_C_N_228),
        .RF3_CLKO_A_C_N_229(RF3_CLKO_A_C_N_229),
        .RF3_CLKO_A_C_P_228(RF3_CLKO_A_C_P_228),
        .RF3_CLKO_A_C_P_229(RF3_CLKO_A_C_P_229),
        .RFMC_DAC_00_N(RFMC_DAC_00_N),
        .RFMC_DAC_00_P(RFMC_DAC_00_P),
        .RFMC_DAC_01_N(RFMC_DAC_01_N),
        .RFMC_DAC_01_P(RFMC_DAC_01_P),
        .RFMC_DAC_02_N(RFMC_DAC_02_N),
        .RFMC_DAC_02_P(RFMC_DAC_02_P),
        .RFMC_DAC_03_N(RFMC_DAC_03_N),
        .RFMC_DAC_03_P(RFMC_DAC_03_P),
        .RFMC_DAC_04_N(RFMC_DAC_04_N),
        .RFMC_DAC_04_P(RFMC_DAC_04_P),
        .RFMC_DAC_05_N(RFMC_DAC_05_N),
        .RFMC_DAC_05_P(RFMC_DAC_05_P),
        .RFMC_DAC_06_N(RFMC_DAC_06_N),
        .RFMC_DAC_06_P(RFMC_DAC_06_P),
        .RFMC_DAC_07_N(RFMC_DAC_07_N),
        .RFMC_DAC_07_P(RFMC_DAC_07_P));
endmodule
