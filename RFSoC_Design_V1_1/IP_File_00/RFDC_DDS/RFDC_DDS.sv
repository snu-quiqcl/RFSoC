`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: SNU QuIQCL
// Engineer: Jeonghyun Park
// 
// Create Date: 2023/08/24 16:55:51
// Design Name: 
// Module Name: RFDC_DDS
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


module RFDC_DDS(
    input wire CLK100MHz,
    input wire [39:0] freq,
    input wire [13:0] amp,
    input wire [39:0] phase,
    input wire [13:0] offset,
    output wire [255:0] m_axis_data_tdata,
    output wire m_axis_data_tvalid
);

wire [15:0] dds_output_wire[0:15];
wire [15:0] dds_output_valid; 

// Generate loop to assign dds_output_wire slices to m_axis_data_tdata
genvar i;
generate
    for (i = 0; i < 16; i = i + 1) begin : ASSIGN_GEN
        assign m_axis_data_tdata[16*i +: 16] = dds_output_wire[i];
    end
endgenerate

dds_compiler_0 dds_0(
    .s_axis_phase_tdata(),
    .s_axis_phase_tvalid(),
    .m_axis_data_tdata(dds_output_wire[0]),
    .m_axis_data_tvalid(dds_output_valid[0]),
    .aclk(CLK100MHz)
);
endmodule
