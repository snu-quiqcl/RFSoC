`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/01/17 20:43:15
// Design Name: 
// Module Name: testbench_rfsoc_0
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


module testbench_rfsoc_0;

//////////////////////////////////////////////////////////////////////////////////
// AXI interface
//////////////////////////////////////////////////////////////////////////////////
reg[17:0]   s_axi_araddr;
wire        s_axi_arready;
reg         s_axi_arvalid;
reg[17:0]   s_axi_awaddr;
wire        s_axi_awready;
reg         s_axi_awvalid;
reg         s_axi_bready;
wire[1:0]   s_axi_bresp;
wire[31:0]  s_axi_rdata;
reg         s_axi_rready;
wire[1:0]   s_axi_rresp;
wire        s_axi_rvalid;
reg[31:0]   s_axi_wdata;
wire        s_axi_wready;
reg[3:0]    s_axi_wstrb;
reg         s_axi_wvalid;

//////////////////////////////////////////////////////////////////////////////////
// DAC AXI4 interface
//////////////////////////////////////////////////////////////////////////////////
reg[255:0]  s00_axis_tdata;
wire        s00_axis_tready;
reg         s00_axis_tvalid;

//////////////////////////////////////////////////////////////////////////////////
// DAC sampling clock
//////////////////////////////////////////////////////////////////////////////////
reg         dac0_clk_n;
reg         dac0_clk_p;

initial begin
    dac0_clk_n <= 1'b0;
    dac0_clk_p <= 1'b1;
end

always begin
    #78.125
    dac0_clk_n <= ~dac0_clk_n;
    dac0_clk_p <= ~dac0_clk_p;
end

//////////////////////////////////////////////////////////////////////////////////
// DAC mixer control
//////////////////////////////////////////////////////////////////////////////////
reg[47:0]   dac00_nco_freq;
reg[17:0]   dac00_nco_phase;
reg         dac00_nco_phase_rst;
reg[5:0]    dac00_nco_update_en;
wire[1:0]   dac0_nco_update_busy;
reg         dac0_nco_update_req;

//////////////////////////////////////////////////////////////////////////////////
// AXI interface clock & reset
// 100MHz Clock
//////////////////////////////////////////////////////////////////////////////////
reg         s_axi_aclk;
reg         s_axi_aresetn;
initial begin
    s_axi_aclk <= 1'b0;
end

always begin
    #5000
    s_axi_aclk <= ~s_axi_aclk;
end

//////////////////////////////////////////////////////////////////////////////////
// DAC AXI4 interface clock & reset
// 100MHz Clock
//////////////////////////////////////////////////////////////////////////////////
reg         s0_axis_aresetn;
reg         s0_axis_aclk;

initial begin
    s0_axis_aclk <= 1'b0;
end

always begin
    #5000
    s0_axis_aclk <= ~s0_axis_aclk;
end

//////////////////////////////////////////////////////////////////////////////////
// DAC output
//////////////////////////////////////////////////////////////////////////////////
real  vout00_n;
real  vout00_p;
real dac00_p;
real dac00_n;
reg[31:0] dac00_p_int;
reg[31:0] dac00_n_int;
always @ (*) begin
   dac00_p = rfdc.inst.usp_rf_data_converter_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_P;
   dac00_n = rfdc.inst.usp_rf_data_converter_0_rf_wrapper_i.tx0_u_dac.SIP_HSDAC_INST.VOUT0_N;
   dac00_p_int = dac00_p * (2 ** 31 - 1);
   dac00_n_int = dac00_n * (2 ** 31 - 1);
end

usp_rf_data_converter_0 rfdc(
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arready(s_axi_arready),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awready(s_axi_awready),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rready(s_axi_rready),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wready(s_axi_wready),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tready(s00_axis_tready),
    .s00_axis_tvalid(s00_axis_tvalid),
    .dac0_clk_n(dac0_clk_n),
    .dac0_clk_p(dac0_clk_p),
    .dac00_nco_freq(dac00_nco_freq),
    .dac00_nco_phase(dac00_nco_phase),
    .dac00_nco_phase_rst(dac00_nco_phase_rst),
    .dac00_nco_update_en(dac00_nco_update_en),
    .dac0_nco_update_busy(dac0_nco_update_busy),
    .dac0_nco_update_req(dac0_nco_update_req),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s0_axis_aresetn(s0_axis_aresetn),
    .s0_axis_aclk(s0_axis_aclk),
    .vout00_n(vout00_n),
    .vout00_p(vout00_p)
);

initial begin
    s_axi_araddr    <= 18'b000000000000000000;
    s_axi_arvalid   <= 1'b0;
    s_axi_awaddr    <= 18'b000000000000000000;
    s_axi_awvalid   <= 1'b0;
    s_axi_bready    <= 1'b0;
    s_axi_rready    <= 1'b0;
    s_axi_wdata[31:0] <= 32'b0;
    s_axi_wstrb     <=4'b0;
    s_axi_wvalid    <= 1'b0;

    s00_axis_tdata[255:0] <= 256'h00007fff00007fff00007fff00007fff00007fff00007fff00007fff00007fff;
    s00_axis_tvalid <= 1'b1;

    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_update_en <= 6'h0;
    dac0_nco_update_req <= 1'b0;
    
    ////////////////////
    // reset
    ////////////////////
    dac00_nco_phase_rst <= 1'b1;
    s_axi_aresetn <= 1'b0;
    s0_axis_aresetn <= 1'b0;
    
    
    #100000 // 10us
    dac00_nco_phase_rst <= 1'b0;
    s_axi_aresetn <= 1'b1;
    s0_axis_aresetn <= 1'b1;
    
    ////////////////////
    // restart machine
    ////////////////////
    #10000000 // 10us
    #40000 // 40ns
    s_axi_awaddr    <= 18'h04004;
    s_axi_awvalid <= 1'b1;
    s_axi_wvalid  <= 1'b1;
    s_axi_wdata[31:0] <= 32'h1;
    
    #10000 // 10ns
    s_axi_awvalid <= 1'b0;
    
    #10000 // 10ns
    s_axi_wvalid  <= 1'b0;

    #130000000 // 130us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h1;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h2;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h3;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h4;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    /////////////////////////////
    //rerun
    /////////////////////////////
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h0;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h1;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h2;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h3;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
    
    #1000000 // 1us
    dac00_nco_freq  <= 48'h00ffffffffff;
    dac00_nco_phase <=18'h0;
    dac00_nco_phase_rst <= 1'b0;
    dac00_nco_update_en <= 6'h4;
    dac0_nco_update_req <= 1'b1;
    
    #100000
    dac0_nco_update_req <= 1'b0;
end
endmodule
