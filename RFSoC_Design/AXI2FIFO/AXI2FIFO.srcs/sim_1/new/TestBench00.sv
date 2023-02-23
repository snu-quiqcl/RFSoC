`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/02/23 09:49:33
// Design Name: 
// Module Name: TestBench00
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


module TestBench00;
parameter AXI_ADDR_WIDTH = 6;
parameter AXI_DATA_WIDTH = 128;
parameter AXI_STROBE_WIDTH = AXI_DATA_WIDTH >> 3;
parameter AXI_STROBE_LEN = 4; // LOG(AXI_STROBE_WDITH)

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Address Write
//////////////////////////////////////////////////////////////////////////////////

reg [AXI_ADDR_WIDTH - 1:0] s_axi_awaddr;
reg [1:0] s_axi_awburst;
reg [2:0] s_axi_awsize;
reg [7:0] s_axi_awlen;
reg s_axi_awvalid;
reg [15:0] s_axi_awuser; // added to resolve wrapping error
wire s_axi_awready;                                                        //Note that ready signal is wire

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Write Response
//////////////////////////////////////////////////////////////////////////////////
reg s_axi_bready;
wire [1:0] s_axi_bresp;
wire s_axi_bvalid;
wire [15:0] s_axi_bid; // added to resolve wrapping error

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Data Write
//////////////////////////////////////////////////////////////////////////////////
reg [AXI_DATA_WIDTH - 1:0] s_axi_wdata;
reg [AXI_STROBE_WIDTH - 1:0] s_axi_wstrb;
reg s_axi_wvalid;
reg s_axi_wlast;
wire s_axi_wready;                                                        //Note that ready signal is wire

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Address Read
//////////////////////////////////////////////////////////////////////////////////
reg [1:0] s_axi_arburst;
reg [7:0] s_axi_arlen;
reg [AXI_ADDR_WIDTH - 1:0] s_axi_araddr;
reg [2:0] s_axi_arsize;
reg s_axi_arvalid;
reg [15:0] s_axi_arid; // added to resolve wrapping error
reg [15:0] s_axi_aruser; // added to resolve wrapping error
wire s_axi_arready;
wire [15:0] s_axi_rid; // added to resolve wrapping error

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Data Read
//////////////////////////////////////////////////////////////////////////////////
reg s_axi_rready;
wire [AXI_DATA_WIDTH - 1:0] s_axi_rdata;
wire [1:0] s_axi_rresp;
wire s_axi_rvalid;
wire s_axi_rlast;

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Clock
//////////////////////////////////////////////////////////////////////////////////
reg s_axi_aclk;

//////////////////////////////////////////////////////////////////////////////////
// AXI4 Reset
//////////////////////////////////////////////////////////////////////////////////
reg s_axi_aresetn;

//////////////////////////////////////////////////////////////////////////////////
// RTO_Core interface
//////////////////////////////////////////////////////////////////////////////////
wire rto_core_reset;
wire rto_core_flush;
wire rto_core_write;
wire [127:0] rto_core_fifo_din;

reg rto_core_full;
reg rto_core_empty;


AXI2FIFO #(
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Configuraiton
    //////////////////////////////////////////////////////////////////////////////////
    //parameter AXI_ADDR_WIDTH = 6,
    //parameter AXI_DATA_WIDTH = 128,
    //parameter AXI_STROBE_WIDTH = AXI_DATA_WIDTH >> 3,
    //parameter AXI_STROBE_LEN = 4 // LOG(AXI_STROBE_WDITH)
)
tb(
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Address Write
    //////////////////////////////////////////////////////////////////////////////////
    .s_axi_awaddr(s_axi_awaddr),
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

always begin
    #5
    s_axi_aclk <= ~s_axi_aclk;
end

initial begin
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Address Write
    //////////////////////////////////////////////////////////////////////////////////
    s_axi_awaddr <= {AXI_ADDR_WIDTH{1'b0}};
    s_axi_awburst <= 2'b0;
    s_axi_awsize <= 3'b0;
    s_axi_awlen <= 8'h0;
    s_axi_awvalid <= 1'b0;
    s_axi_awuser <= 16'h0; 
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Write Response
    //////////////////////////////////////////////////////////////////////////////////
    s_axi_bready <= 1'b0;
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Data Write
    //////////////////////////////////////////////////////////////////////////////////
    s_axi_wdata <= {AXI_DATA_WIDTH{1'b0}};
    s_axi_wstrb <= {AXI_STROBE_WIDTH{1'b0}};
    s_axi_wvalid <= 1'b0;;
    s_axi_wlast <= 1'b0;
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Address Read
    //////////////////////////////////////////////////////////////////////////////////
    s_axi_arburst <= 2'h0;
    s_axi_arlen <= 8'h0;
    s_axi_araddr <= {AXI_ADDR_WIDTH{1'b0}};
    s_axi_arsize <= 3'b0;
    s_axi_arvalid <= 1'b0;
    s_axi_arid <= 16'h0;
    s_axi_aruser <= 16'h0;
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Data Read
    //////////////////////////////////////////////////////////////////////////////////
    s_axi_rready <= 1'b0;
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Clock
    //////////////////////////////////////////////////////////////////////////////////
    s_axi_aclk <= 1'b0;
    
    //////////////////////////////////////////////////////////////////////////////////
    // AXI4 Reset
    //////////////////////////////////////////////////////////////////////////////////
    s_axi_aresetn <= 1'b0;
    
    //////////////////////////////////////////////////////////////////////////////////
    // RTO_Core interface
    //////////////////////////////////////////////////////////////////////////////////
    rto_core_full <= 1'b0;
    rto_core_empty <= 1'b0;
    
    #1000
    s_axi_aresetn <= 1'b1;
    
    #1000
    s_axi_awaddr <= {AXI_ADDR_WIDTH{1'b0}};
    s_axi_awburst <= 2'b0;
    s_axi_awsize <= 3'b0;
    s_axi_awlen <= 8'h1;
    s_axi_awvalid <= 1'b1;
    s_axi_awuser <= 16'h0; 
    
    #10
    s_axi_awvalid <= 1'b0;
    
    #1000
    s_axi_wdata <= {AXI_DATA_WIDTH{1'b1}};
    s_axi_wstrb <= {AXI_STROBE_WIDTH{1'b1}};
    s_axi_wvalid <= 1'b1;;
    s_axi_wlast <= 1'b0;
    
    #10
    s_axi_wdata <= {AXI_DATA_WIDTH{1'b0}};
    s_axi_wstrb <= {AXI_STROBE_WIDTH{1'b0}};
    s_axi_wvalid <= 1'b0;
    s_axi_wlast <= 1'b0;
    
    #1000
    s_axi_wdata <= {AXI_DATA_WIDTH{1'b0}};
    s_axi_wstrb <= {AXI_STROBE_WIDTH{1'b1}};
    s_axi_wvalid <= 1'b1;
    s_axi_wlast <= 1'b1;
    
    #10
    s_axi_wdata <= {AXI_DATA_WIDTH{1'b0}};
    s_axi_wstrb <= {AXI_STROBE_WIDTH{1'b0}};
    s_axi_wvalid <= 1'b0;
    s_axi_wlast <= 1'b0;
end

endmodule
