`timescale 0.1ps / 0.1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/09/01 15:13:26
// Design Name: 
// Module Name: DDS_Controller_TB00
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


module DDS_Controller_TB00;
//////////////////////////////////////////////////////////////////////////////////
// DDS_Controller to RFDC_DDS
//////////////////////////////////////////////////////////////////////////////////
reg [47:0] freq;
reg [13:0] amp;
reg [13:0] phase;
reg [13:0] amp_offset;
reg [63:0] time_offset;
reg s_axi_aclk;
reg [63:0] counter;

wire [255:0] m00_axis_tdata_dds;
wire m00_axis_tvalid_dds;

RFDC_DDS rfdc_dds(
    .CLK100MHz(s_axi_aclk),
    .freq(freq),
    .amp(amp),              // unsigned value
    .phase(phase),
    .timestamp(counter),
    .amp_offset(amp_offset),
    .time_offset(time_offset),
    .m_axis_data_tdata(m00_axis_tdata_dds),
    .m_axis_data_tvalid(m00_axis_tvalid_dds)
);


always begin
    #50000
    s_axi_aclk <= ~s_axi_aclk;
    
    #50000
    counter <= counter + 64'h1;
    s_axi_aclk <= ~s_axi_aclk;
end


initial begin
    freq <= 48'h001230000000;
    amp <= 14'h00ff;
    phase <= 14'h0;
    counter <= 64'h0;
    amp_offset <= 14'h0;
    time_offset <= 64'h0;
    s_axi_aclk <= 1'b0;
end

endmodule
