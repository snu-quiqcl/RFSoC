`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/17 17:28:13
// Design Name: 
// Module Name: testbench_RF_0
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testbench_RF_0;
reg dac0_clk_clk_n;
reg dac0_clk_clk_p;
reg sysref_in_diff_n;
reg sysref_in_diff_p;

RFSoC_TEST_block_0_wrapper RF_test(
    .dac0_clk_clk_n,
    .dac0_clk_clk_p,
    .sysref_in_diff_n,
    .sysref_in_diff_p
    );
endmodule
