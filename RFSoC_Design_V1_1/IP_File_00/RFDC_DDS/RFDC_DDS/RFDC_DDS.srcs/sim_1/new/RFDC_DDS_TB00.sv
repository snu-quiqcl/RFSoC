`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/25 18:02:23
// Design Name: 
// Module Name: RFDC_DDS_TB00
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


module RFDC_DDS_TB00;
reg CLK100MHz;
reg [47:0] freq;
reg [13:0] amp;
reg [13:0] phase;
reg [63:0] timestamp;
reg [13:0] amp_offset;
reg [63:0] time_offset;
wire [255:0] m_axis_data_tdata;
wire m_axis_data_tvalid;

initial begin
    CLK100MHz <= 1'b0;
    timestamp <= 64'h0;
end

always begin
    #5
    CLK100MHz <= ~CLK100MHz;
    #5
    timestamp <= timestamp + 64'h1;
end

initial begin
    freq <= 48'h003120000000;
    amp <= 14'h0;
    phase <= 14'h0;
    amp_offset <= 14'h0;
    time_offset <= 64'h0;
end

RFDC_DDS rfdc_dds_0(
    .CLK100MHz(CLK100MHz),
    .freq(freq),
    .amp(amp),
    .phase(phase),
    .timestamp(timestamp),
    .amp_offset(amp_offset),
    .time_offset(time_offset),
    .m_axis_data_tdata(m_axis_data_tdata),
    .m_axis_data_tvalid(m_axis_data_tvalid)
);

endmodule
