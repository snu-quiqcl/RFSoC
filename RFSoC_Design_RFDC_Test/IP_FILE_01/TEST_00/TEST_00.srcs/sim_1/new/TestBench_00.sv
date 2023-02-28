`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/23 14:33:20
// Design Name: 
// Module Name: TestBench_00
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


module TestBench_00;

parameter S00_AXIS_TDATA = 4'h0;
parameter S00_AXIS_TVALID = 4'h1;
parameter DAC00_FAST_SHUTDOWN = 4'h2;
parameter DAC00_PL_EVENT = 4'h3;
parameter DAC00_NCO_FREQ = 4'h4;
parameter DAC00_NCO_PHASE = 4'h5;
parameter DAC00_NCO_PHASE_RST = 4'h6;
parameter DAC00_NCO_UPDATE_EN = 4'h7;
parameter DAC0_NCO_UPDATE_REQ = 4'h8;
parameter DAC0_SYSREF_INT_GATING = 4'h9;
parameter DAC0_SYSREF_INT_REENABLE = 4'hA;
parameter UPDATE = 4'hF;

TEST_00_Block_wrapper tb(
);

assign tb.TEST_00_Block_i.DAC_Controller_0.dac0_nco_update_busy = 2'b00;
reg[1:0] resp;
reg[1:0] resp2;

initial begin
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #200;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b0);
    #200;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'hf);
    #400;
    //minimum 16 clock pulse width delay
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #400;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'h0);
    
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000001 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 1'b0, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000005 << 64) + ( DAC00_FAST_SHUTDOWN << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000010 << 64) + ( DAC00_PL_EVENT << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000020 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000030 << 64) + ( DAC00_NCO_PHASE << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000040 << 64) + ( DAC00_NCO_PHASE_RST << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000050 << 64) + ( DAC0_SYSREF_INT_GATING << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000060 << 64) + ( DAC0_SYSREF_INT_REENABLE << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000065 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000C0 << 64) + ( S00_AXIS_TDATA << 32 ) + ( 8'b11111111 << 40 ) + 32'h00007fff, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000D0 << 64) + ( S00_AXIS_TVALID << 32 ) + ( 8'b11111111 << 40 ) + 32'h00000001, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000E0 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000001 << 40 ) + 32'h00000000, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000F0 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000010 << 40 ) + 32'h00000010, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000100 << 64) + ( DAC00_NCO_UPDATE_EN << 32 ) + ( 8'b11111111 << 40 ) + 6'b000111, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000110 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 1'b1, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000120 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000130 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 1'b0, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000140 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000200 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000001 << 40 ) + 32'h00000000, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000210 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000010 << 40 ) + 32'h00000001, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000220 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 1'b1, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000230 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000240 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 1'b0, resp);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000250 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    
    //TimeController
    #1000;
    //tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0010000, 8'h10, 128'h00000000000000000000000000000000 + 4'b0010, resp2);
    #1000;
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0010000, 8'h10, 128'h00000000000000000000000000000000 + 4'b1001, resp2);
end

endmodule
