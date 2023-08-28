`timescale 1ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/26 16:55:21
// Design Name: 
// Module Name: RFDC_test_top
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


parameter AXI_ADDR_WIDTH = 6;
parameter AXI_DATA_WIDTH = 128;
parameter AXI_STROBE_WIDTH = 16;
parameter AXI_STROBE_LEN = 4;
parameter DEST_VAL = 16'h0;
parameter CHANNEL_LENGTH = 12;
parameter AXIS_DATA_WIDTH = 256;

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
wire        s00_axis_tready;

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
    #312.5
    dac0_clk_n <= ~dac0_clk_n;
    dac0_clk_p <= ~dac0_clk_p;
end

//////////////////////////////////////////////////////////////////////////////////
// DAC mixer control
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////
// AXI interface clock & reset
// 100MHz Clock
//////////////////////////////////////////////////////////////////////////////////
reg         s_axi_aclk;
reg         s_axi_aresetn;

//////////////////////////////////////////////////////////////////////////////////
// DAC0_Controller register
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
// AXI4 Address Write
//////////////////////////////////////////////////////////////////////////////////
reg [AXI_ADDR_WIDTH - 1:0] dac0_controller_0_s_axi_awaddr;
reg [1:0] dac0_controller_0_s_axi_awburst;
reg [2:0] dac0_controller_0_s_axi_awsize;
reg [7:0] dac0_controller_0_s_axi_awlen;
reg dac0_controller_0_s_axi_awvalid;
reg [15:0] dac0_controller_0_s_axi_awuser; // added to resolve wrapping error
wire dac0_controller_0_s_axi_awready;                                                        //Note that ready signal is wire

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Write Response
//////////////////////////////////////////////////////////////////////////////////
reg dac0_controller_0_s_axi_bready;
wire [1:0] dac0_controller_0_s_axi_bresp;
wire dac0_controller_0_s_axi_bvalid;
wire [15:0] dac0_controller_0_s_axi_bid; // added to resolve wrapping error

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Data Write
//////////////////////////////////////////////////////////////////////////////////
reg [AXI_DATA_WIDTH - 1:0] dac0_controller_0_s_axi_wdata;
reg [AXI_STROBE_WIDTH - 1:0] dac0_controller_0_s_axi_wstrb;
reg dac0_controller_0_s_axi_wvalid;
reg dac0_controller_0_s_axi_wlast;
wire dac0_controller_0_s_axi_wready;                                                        //Note that ready signal is wire

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Address Read
//////////////////////////////////////////////////////////////////////////////////
reg [1:0] dac0_controller_0_s_axi_arburst;
reg [7:0] dac0_controller_0_s_axi_arlen;
reg [AXI_ADDR_WIDTH - 1:0] dac0_controller_0_s_axi_araddr;
reg [2:0] dac0_controller_0_s_axi_arsize;
reg dac0_controller_0_s_axi_arvalid;
reg [15:0] dac0_controller_0_s_axi_arid; // added to resolve wrapping error
reg [15:0] dac0_controller_0_s_axi_aruser; // added to resolve wrapping error
wire dac0_controller_0_s_axi_arready;
wire [15:0] dac0_controller_0_s_axi_rid; // added to resolve wrapping error

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Data Read
//////////////////////////////////////////////////////////////////////////////////
reg dac0_controller_0_s_axi_rready;
wire [AXI_DATA_WIDTH - 1:0] dac0_controller_0_s_axi_rdata;
wire [1:0] dac0_controller_0_s_axi_rresp;
wire dac0_controller_0_s_axi_rvalid;
wire dac0_controller_0_s_axi_rlast;

//////////////////////////////////////////////////////////////////////////////////  
// AXIS declaration for RFDC DAC
//////////////////////////////////////////////////////////////////////////////////
wire [AXIS_DATA_WIDTH - 1:0] dac0_controller_0_s00_axis_tdata;
wire dac0_controller_0_s00_axis_tvalid;
wire dac0_controller_0_dac00_fast_shutdown;
wire dac0_controller_0_dac00_pl_event;
wire [47:0] dac0_controller_0_dac00_nco_freq;
wire [17:0] dac0_controller_0_dac00_nco_phase;
wire dac0_controller_0_dac00_nco_phase_rst;
wire [5:0] dac0_controller_0_dac00_nco_update_en;
wire dac0_controller_0_dac0_nco_update_req;
wire dac0_controller_0_dac0_sysref_int_gating;
wire dac0_controller_0_dac0_sysref_int_reenable;

reg dac0_controller_0_dac00_datapath_overflow;
reg [1:0] dac0_controller_0_dac0_nco_update_busy;


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

initial begin
    timestamp <= 64'h0;
    manual_valid <= 1'b0;
end

always begin
    #5000
    s0_axis_aclk <= ~s0_axis_aclk;
end

always @(posedge s0_axis_aclk) begin
    timestamp <= timestamp + 64'h1;
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

reg [47:0] freq;
reg [13:0] amp;
reg [13:0] phase;
reg [63:0] timestamp;
reg [13:0] amp_offset;
reg [63:0] time_offset;
reg manual_valid;
wire [255:0] m_axis_data_tdata;
wire m_axis_data_tvalid;

RFDC_DDS rfdc_dds(
    .CLK100MHz(s0_axis_aclk),
    .freq(freq),
    .amp(amp),
    .phase(amp),
    .timestamp(timestamp),
    .amp_offset(amp_offset),
    .time_offset(time_offset),
    .m_axis_data_tdata(m_axis_data_tdata),
    .m_axis_data_tvalid(m_axis_data_tvalid)
);

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
    .s00_axis_tdata(m_axis_data_tdata),
    .s00_axis_tready(s00_axis_tready),
    .s00_axis_tvalid(manual_valid),
    .dac0_clk_n(dac0_clk_n),
    .dac0_clk_p(dac0_clk_p),
    .s_axi_aclk(s_axi_aclk),
    .s_axi_aresetn(s_axi_aresetn),
    .s0_axis_aresetn(s0_axis_aresetn),
    .s0_axis_aclk(s0_axis_aclk),
    .vout00_n(vout00_n),
    .vout00_p(vout00_p)
);

initial begin
    freq <= 48'h003120000000;
    amp <= 14'h0;
    phase <= 14'h0;
    amp_offset <= 14'h0;
    time_offset <= 64'h0;
end

always @(posedge s00_axis_tready) begin    
    #10000
    manual_valid <= 1'b1;
end

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
    
    ////////////////////
    // reset
    ////////////////////
    s_axi_aresetn <= 1'b0;
    s0_axis_aresetn <= 1'b0;
    
    
    #100000 // 10us
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
end

endmodule
