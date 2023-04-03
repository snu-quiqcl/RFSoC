`timescale 1ps / 1ps
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

//////////////////////////////////////////////////////////////////////////////////
// DAC sampling clock
//////////////////////////////////////////////////////////////////////////////////

//assign tb.TEST_00_Block_i.DAC_Controller_0.dac0_nco_update_busy = 2'b00;
/*
reg         dac0_clk_n;
reg         dac0_clk_p;

initial begin
    dac0_clk_n <= 1'b0;
    dac0_clk_p <= 1'b1;
end

always begin
    #312.5
    dac0_clk_n <= ~dac0_clk_n;
    dac0_clk_p <= ~dac0_clk_p;
end
*/

wire vout00_0_v_n;
wire vout00_0_v_p;

TEST_02_Block_wrapper tb(
    .RFMC_DAC_00_N(vout00_0_v_n),
    .RFMC_DAC_00_P(vout00_0_v_p)
);


//////////////////////////////////////////////////////////////////////////////////
// DAC output
//////////////////////////////////////////////////////////////////////////////////

real dac00_p;
real dac00_n;

reg[31:0] dac00_p_int;
reg[31:0] dac00_n_int;

always @ (*) begin
   //TestBench_00/tb/TEST_00_Block_i/usp_rf_data_converter_0/inst/TEST_00_Block_usp_rf_data_converter_0_0_rf_wrapper_i
   dac00_p = tb.TEST_02_Block_i.usp_rf_data_converter_0.inst.TEST_02_Block_usp_rf_data_converter_0_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_P;
   //rfdc.inst.usp_rf_data_converter_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_P;
   dac00_n = tb.TEST_02_Block_i.usp_rf_data_converter_0.inst.TEST_02_Block_usp_rf_data_converter_0_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_N;
   dac00_p_int = dac00_p * (2 ** 31 - 1);
   dac00_n_int = dac00_n * (2 ** 31 - 1);
end


reg[1:0] resp;
reg[1:0] resp2;

initial begin
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #200000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b0);
    #200000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'hf);
    #400000;
    //minimum 16 clock pulse width delay
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #400000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'h0);
    
    //////////////////////////////////////////////////////////////////////////////////
    // Restart Machine
    //////////////////////////////////////////////////////////////////////////////////
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0004004, 8'h04, 32'h00000001, resp2);
    
    #170000000;
    
    #1000000;
    //tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000001 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 16'h0000, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000005 << 64) + ( DAC00_FAST_SHUTDOWN << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000010 << 64) + ( DAC00_PL_EVENT << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000020 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000030 << 64) + ( DAC00_NCO_PHASE << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000040 << 64) + ( DAC00_NCO_PHASE_RST << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000050 << 64) + ( DAC0_SYSREF_INT_GATING << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000060 << 64) + ( DAC0_SYSREF_INT_REENABLE << 32 ) + ( 8'b11111111 << 40 ), resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000065 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000C0 << 64) + ( S00_AXIS_TDATA << 32 ) + ( 8'b11111111 << 40 ) + 32'h00007fff, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000D0 << 64) + ( S00_AXIS_TVALID << 32 ) + ( 8'b11111111 << 40 ) + 32'h00000001, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000E0 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000001 << 40 ) + 32'h00000000, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h00000000000000F0 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000010 << 40 ) + 32'h00000010, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000100 << 64) + ( DAC00_NCO_UPDATE_EN << 32 ) + ( 8'b11111111 << 40 ) + 6'b000111, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000110 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 16'h0020, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000140 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000600 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000001 << 40 ) + 32'h00000000, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000610 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000010 << 40 ) + 32'h00000001, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000620 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 16'h0020, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000630 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    
    //Change frequency
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000A00 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000001 << 40 ) + 32'h00000000, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000A10 << 64) + ( DAC00_NCO_FREQ << 32 ) + ( 8'b00000010 << 40 ) + 32'h00001000, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000A20 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 16'h0020, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000A30 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    
    //Change Amplitude
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000B00 << 64) + ( S00_AXIS_TDATA << 32 ) + ( 8'b11111111 << 40 ) + 32'h00000000, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000B10 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000D00 << 64) + ( S00_AXIS_TDATA << 32 ) + ( 8'b11111111 << 40 ) + 32'h00007fff, resp);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000D10 << 64) + ( UPDATE << 32 ) + ( 8'b11111111 << 40 ) + ( 1'b1 << 36 ) + 1'b1, resp);
    
    //TimeController
    #100000000;
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0010000, 8'h10, 128'h00000000000000000000000000000000 + 4'b0010, resp2);
    #1000000;
    tb.TEST_02_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0010000, 8'h10, 128'h00000000000000000000000000000000 + 4'b1001, resp2);
end

endmodule