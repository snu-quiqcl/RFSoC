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

TEST_00_Block_wrapper tb(
);

reg[1:0] resp;

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
    tb.TEST_00_Block_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h10, 128'h11111111111111111111111111111111, resp);
end

endmodule
