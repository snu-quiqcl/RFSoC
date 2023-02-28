`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/24 10:36:41
// Design Name: 
// Module Name: DAC0_Controller
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


module DAC_Controller#(
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Configuraiton
    //////////////////////////////////////////////////////////////////////////////////
    parameter AXI_ADDR_WIDTH = 6,
    parameter AXI_DATA_WIDTH = 128,
    parameter AXI_STROBE_WIDTH = AXI_DATA_WIDTH >> 3,
    parameter AXI_STROBE_LEN = 4, // LOG(AXI_STROBE_WDITH)
    
    //////////////////////////////////////////////////////////////////////////////////
    // RTO_Core Index
    //////////////////////////////////////////////////////////////////////////////////
    parameter INDEX = 0,
    
    //////////////////////////////////////////////////////////////////////////////////
    // RFDC & GPO Configuration
    //////////////////////////////////////////////////////////////////////////////////
    parameter DEST_VAL = 16'h0,
    parameter CHANNEL_LENGTH = 12,
    parameter AXIS_DATA_WIDTH = 256
)
(
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Address Write
    //////////////////////////////////////////////////////////////////////////////////
    input wire [AXI_ADDR_WIDTH - 1:0] s_axi_awaddr,
    input wire [15:0] s_axi_awid, 
    input wire [1:0] s_axi_awburst,
    input wire [2:0] s_axi_awsize,
    input wire [7:0] s_axi_awlen,
    input wire s_axi_awvalid,
    input wire [15:0] s_axi_awuser, // added to resolve wrapping error
    output wire s_axi_awready,                                                        //Note that ready signal is wire
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Write Response
    //////////////////////////////////////////////////////////////////////////////////
    input wire s_axi_bready,
    output wire [1:0] s_axi_bresp,
    output wire s_axi_bvalid,
    output wire [15:0] s_axi_bid, // added to resolve wrapping error
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Data Write
    //////////////////////////////////////////////////////////////////////////////////
    input wire [AXI_DATA_WIDTH - 1:0] s_axi_wdata,
    input wire [AXI_STROBE_WIDTH - 1:0] s_axi_wstrb,
    input wire s_axi_wvalid,
    input wire s_axi_wlast,
    output wire s_axi_wready,                                                        //Note that ready signal is wire
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Address Read
    //////////////////////////////////////////////////////////////////////////////////
    input wire [1:0] s_axi_arburst,
    input wire [7:0] s_axi_arlen,
    input wire [AXI_ADDR_WIDTH - 1:0] s_axi_araddr,
    input wire [2:0] s_axi_arsize,
    input wire s_axi_arvalid,
    input wire [15:0] s_axi_arid, // added to resolve wrapping error
    input wire [15:0] s_axi_aruser, // added to resolve wrapping error
    output wire s_axi_arready,
    output wire [15:0] s_axi_rid, // added to resolve wrapping error
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Data Read
    //////////////////////////////////////////////////////////////////////////////////
    input wire s_axi_rready,
    output wire [AXI_DATA_WIDTH - 1:0] s_axi_rdata,
    output wire [1:0] s_axi_rresp,
    output wire s_axi_rvalid,
    output wire s_axi_rlast,
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Clock
    //////////////////////////////////////////////////////////////////////////////////
    input wire s_axi_aclk,
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Reset
    //////////////////////////////////////////////////////////////////////////////////
    input wire s_axi_aresetn,
    
    //////////////////////////////////////////////////////////////////////////////////  
    // AXIS declaration for RFDC DAC
    //////////////////////////////////////////////////////////////////////////////////
    output wire [AXIS_DATA_WIDTH - 1:0] s00_axis_tdata,
    output wire s00_axis_tvalid,
    output wire dac00_fast_shutdown,
    output wire dac00_pl_event,
    output wire [47:0] dac00_nco_freq,
    output wire [17:0] dac00_nco_phase,
    output wire dac00_nco_phase_rst,
    output wire [5:0] dac00_nco_update_en,
    output wire dac0_nco_update_req,
    output wire dac0_sysref_int_gating,
    output wire dac0_sysref_int_reenable,
    
    input wire s00_axis_tready,
    input wire dac00_datapath_overflow,
    input wire [1:0] dac0_nco_update_busy,
    
    //////////////////////////////////////////////////////////////////////////////////  
    // TimeController interface
    //////////////////////////////////////////////////////////////////////////////////
    input wire auto_start,
    input wire [63:0] counter
);
//////////////////////////////////////////////////////////////////////////////////
// AXI2FIFO to RTO_Core wire
//////////////////////////////////////////////////////////////////////////////////

wire rto_core_reset;
wire rto_core_flush;
wire rto_core_write;
wire [127:0] rto_core_fifo_din;
    
wire rto_core_full;
wire rto_core_empty;

//////////////////////////////////////////////////////////////////////////////////
// AXI2FIFO Declaration
//////////////////////////////////////////////////////////////////////////////////

AXI2FIFO
#(
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Configuraiton
    //////////////////////////////////////////////////////////////////////////////////
    .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
    .AXI_DATA_WIDTH(AXI_DATA_WIDTH),
    .AXI_STROBE_WIDTH(AXI_STROBE_WIDTH ),
    .AXI_STROBE_LEN(AXI_STROBE_LEN)
)
axi2fifo_0
(
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Address Write
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awid(s_axi_awid),
    .s_axi_awburst(s_axi_awburst),
    .s_axi_awsize(s_axi_awsize),
    .s_axi_awlen(s_axi_awlen),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awuser(s_axi_awuser), // added to resolve wrapping error
    .s_axi_awready(s_axi_awready),                                                        //Note that ready signal is wire
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Write Response
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_bready(s_axi_bready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bid(s_axi_bid), // added to resolve wrapping error
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Data Write
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wlast(s_axi_wlast),
    .s_axi_wready(s_axi_wready),                                                        //Note that ready signal is wire
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Address Read
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_arburst(s_axi_arburst),
    .s_axi_arlen(s_axi_arlen),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arsize(s_axi_arsize),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arid(s_axi_arid), // added to resolve wrapping error
    .s_axi_aruser(s_axi_aruser), // added to resolve wrapping error
    .s_axi_arready(s_axi_arready),
    .s_axi_rid(s_axi_rid), // added to resolve wrapping error
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Data Read
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_rready(s_axi_rready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rlast(s_axi_rlast),
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Clock
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_aclk(s_axi_aclk),
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Reset
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_aresetn(s_axi_aresetn),
    
    //////////////////////////////////////////////////////////////////////////////////
    // RTO_Core interface
    //////////////////////////////////////////////////////////////////////////////////
    .rto_core_reset(rto_core_reset),
    .rto_core_flush(rto_core_flush),
    .rto_core_write(rto_core_write),
    .rto_core_fifo_din(rto_core_fifo_din),
    
    .rto_core_full(rto_core_full),
    .rto_core_empty(rto_core_empty)
);

//////////////////////////////////////////////////////////////////////////////////
// RTO Core Declaration
//////////////////////////////////////////////////////////////////////////////////
wire counter_matched;
wire [127:0] rto_out;

RTO_Core
#(
    .INDEX(INDEX)
)
rto_core_0(
    .clk(s_axi_aclk),
    .auto_start(auto_start),// need to be connected
    .reset(rto_core_reset),
    .flush(rto_core_flush),
    .write(rto_core_write),
    .fifo_din(rto_core_fifo_din),
    .counter(counter), // need to be connected
    .counter_matched(counter_matched),
    .rto_out(rto_out), 
    .timestamp_error_data(),
    .overflow_error_data(),
    .timestamp_error(),
    .overflow_error(),
    .full(rto_core_full),
    .empty(rto_core_empty)
);

//////////////////////////////////////////////////////////////////////////////////
// RFDC_Controller Declaration
//////////////////////////////////////////////////////////////////////////////////

RFDC_Contoller
#(
    .DEST_VAL(DEST_VAL),
    .CHANNEL_LENGTH(CHANNEL_LENGTH),
    .AXIS_DATA_WIDTH(AXIS_DATA_WIDTH)
)
rfdc_controller_0
(
    //////////////////////////////////////////////////////////////////////////////////  
    // IO declaration for GPO_Core
    //////////////////////////////////////////////////////////////////////////////////
    .CLK100MHZ(s_axi_aclk),
    .reset(rto_core_reset),
    .override_en(1'b0),
    .selected_en(1'b1),
    .override_value(64'h0),
    .counter_matched(counter_matched),
    .gpo_in(rto_out),
    .busy(dac0_nco_update_busy[0]),    // should be connected to RFDC busy line
    .error_data(),
    .overrided(),
    .busy_error(),
    
    //////////////////////////////////////////////////////////////////////////////////  
    // AXIS declaration for RFDC DAC
    //////////////////////////////////////////////////////////////////////////////////
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tvalid(s00_axis_tvalid),
    .dac00_fast_shutdown(dac00_fast_shutdown),
    .dac00_pl_event(dac00_pl_event),
    .dac00_nco_freq(dac00_nco_freq),
    .dac00_nco_phase(dac00_nco_phase),
    .dac00_nco_phase_rst(dac00_nco_phase_rst),
    .dac00_nco_update_en(dac00_nco_update_en),
    .dac0_nco_update_req(dac0_nco_update_req),
    .dac0_sysref_int_gating(dac0_sysref_int_gating),
    .dac0_sysref_int_reenable(dac0_sysref_int_reenable),
    
    .s00_axis_tready(s00_axis_tready),
    .dac00_datapath_overflow(dac00_datapath_overflow),
    .dac0_nco_update_busy(dac0_nco_update_busy)
);
    
endmodule
