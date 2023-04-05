//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
//Date        : Tue Apr  4 19:08:47 2023
//Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
//Command     : generate_target TEST_02_Block_wrapper.bd
//Design      : TEST_02_Block_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module TEST_02_Block_wrapper
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

  TEST_02_Block TEST_02_Block_i
       (.RF3_CLKO_A_C_N(RF3_CLKO_A_C_N),
        .RF3_CLKO_A_C_P(RF3_CLKO_A_C_P),
        .RFMC_DAC_00_N(RFMC_DAC_00_N),
        .RFMC_DAC_00_P(RFMC_DAC_00_P));
endmodule
