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

RFSoC_Simplified_block_04_wrapper tb(
);

wire [127:0] rto_core_fifo_din;
reg[1:0] resp;

assign rto_core_fifo_din = tb.RFSoC_Simplified_block_04_i.RTO_Core0_0.fifo_din;

initial begin
    tb.RFSoC_Simplified_block_04_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    #200;
    tb.RFSoC_Simplified_block_04_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b0);
    #200;
    tb.RFSoC_Simplified_block_04_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'hf);
    #400;
    //minimum 16 clock pulse width delay
    tb.RFSoC_Simplified_block_04_i.zynq_ultra_ps_e_0.inst.por_srstb_reset(1'b1);
    tb.RFSoC_Simplified_block_04_i.zynq_ultra_ps_e_0.inst.fpga_soft_reset(4'h0);
    
    #1000;
    tb.RFSoC_Simplified_block_04_i.zynq_ultra_ps_e_0.inst.write_data(32'ha0000000, 8'h08, 128'h11111111111111111111111111111111, resp);
end

endmodule
