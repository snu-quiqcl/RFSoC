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

always begin
    #3125
    dac0_clk_n <= ~dac0_clk_n;
    dac0_clk_p <= ~dac0_clk_p;
end

wire vout00_0_v_n;
wire vout00_0_v_p;

RFSoC_Main_test_blk_wrapper tb(
    .RF3_CLKO_A_C_N(dac0_clk_n),
    .RF3_CLKO_A_C_P(dac0_clk_p),
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
   dac00_p = tb.RFSoC_Main_test_blk_i.usp_rf_data_converter_0.inst.RFSoC_Main_test_blk_usp_rf_data_converter_0_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_P;
   //rfdc.inst.usp_rf_data_converter_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_P;
   dac00_n = tb.RFSoC_Main_test_blk_i.usp_rf_data_converter_0.inst.RFSoC_Main_test_blk_usp_rf_data_converter_0_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_N;
   dac00_p_int = dac00_p * (2 ** 31 - 1);
   dac00_n_int = dac00_n * (2 ** 31 - 1);
end


reg[1:0] resp;
reg[1:0] resp2;

initial begin
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #2000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b0);
    #2000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'hf);
    #4000000;
    //minimum 16 clock pulse width delay
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #4000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'h0);
    
    //////////////////////////////////////////////////////////////////////////////////
    // Restart Machine
    //////////////////////////////////////////////////////////////////////////////////
    #10000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0004004, 8'h04, 32'h00000001, resp2);
    
    #1700000000;
    
    #10000000;
    //tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000001 << 64) + ( DAC0_NCO_UPDATE_REQ << 32 ) + ( 8'b11111111 << 40 ) + 16'h0000, resp);
    #10000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000000001 << 64) + (14'h3fff << 46) + (14'h0000 << 32) + 32'h10210, resp);
    #10000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000001000 << 64) + (14'h3fff << 46) + (14'h0000 << 32) + 32'h26210, resp);
    #10000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000000000 + (64'h0000000000002000 << 64) + (14'h00ff << 46) + (14'h0000 << 32) + 32'h26210, resp);
    #10000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h00000000000000000000000000003000 + (64'h0000000000003000 << 64) + (14'h3fff << 46) + (14'h0000 << 32) + 32'h26210, resp);
    #10000000;
    
    //TimeController
    #10000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0010000, 8'h10, 128'h00000000000000000000000000000000 + 4'b0010, resp2);
    #10000000;
    tb.RFSoC_Main_test_blk_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0010000, 8'h10, 128'h00000000000000000000000000000000 + 4'b1001, resp2);
end

endmodule
