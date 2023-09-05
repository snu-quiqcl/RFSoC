`timescale 0.1ps / 0.1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/31 16:33:57
// Design Name: 
// Module Name: RFSoC_Main_TB00
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


module RFSoC_Main_TB00;
reg         dac0_clk_n;
reg         dac0_clk_p;

initial begin
    dac0_clk_n <= 1'b0;
    dac0_clk_p <= 1'b1;
end

wire [255:0]m00_axis_0_tdata;
wire m00_axis_0_tready;
wire m00_axis_0_tvalid;

RFSoC_Main_blk_wrapper tb(
    .m00_axis_0_tdata(m00_axis_0_tdata),
    .m00_axis_0_tready(m00_axis_0_tready),
    .m00_axis_0_tvalid(m00_axis_0_tvalid)
);


//////////////////////////////////////////////////////////////////////////////////
// DAC output
//////////////////////////////////////////////////////////////////////////////////

reg[1:0] resp;
reg[1:0] resp2;

initial begin
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #2000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b0);
    #2000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'hf);
    #4000000;
    //minimum 16 clock pulse width delay
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #4000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'h0);
    
    //////////////////////////////////////////////////////////////////////////////////
    // Restart Machine
    //////////////////////////////////////////////////////////////////////////////////
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0004004, 8'h04, 32'h00000001, resp2);
    
    #17000000;
    
    #10000000;
    //tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000001 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 16'h0000, resp);
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000001 << 64) + (14'h3fff << 46) + (14'h0000 << 32) + 32'h00110210, resp);
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000001000 << 64) + (14'h3fff << 46) + (14'h0000 << 32) + 32'h00226210, resp);
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000002000 << 64) + (14'h00ff << 46) + (14'h0000 << 32) + 32'h00226210, resp);
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000003000 << 64) + (14'h3fff << 46) + (14'h0000 << 32) + 32'h00226210, resp);
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000004000 << 64) + (14'h0000 << 46) + (14'h0000 << 32) + 32'h00226210, resp);
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000005000 << 64) + (14'h3fff << 46) + (14'h0000 << 32) + 32'h00226210, resp);
    #10000000;
    
    //TimeController
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0008000, 8'h10, 128'h00000000000000000000000000000000 + 4'b0010, resp2);
    #10000000;
    tb.RFSoC_Main_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0008000, 8'h10, 128'h00000000000000000000000000000000 + 4'b1001, resp2);
end

endmodule
