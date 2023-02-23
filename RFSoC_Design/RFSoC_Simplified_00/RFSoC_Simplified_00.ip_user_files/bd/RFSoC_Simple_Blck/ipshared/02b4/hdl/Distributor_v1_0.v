
`timescale 1 ns / 1 ps

	module Distributor_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_ID_WIDTH	= 1,
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 6,
		parameter integer C_S00_AXI_AWUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_ARUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_WUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_RUSER_WIDTH	= 0,
		parameter integer C_S00_AXI_BUSER_WIDTH	= 0
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_awid,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [7 : 0] s00_axi_awlen,
		input wire [2 : 0] s00_axi_awsize,
		input wire [1 : 0] s00_axi_awburst,
		input wire  s00_axi_awlock,
		input wire [3 : 0] s00_axi_awcache,
		input wire [2 : 0] s00_axi_awprot,
		input wire [3 : 0] s00_axi_awqos,
		input wire [3 : 0] s00_axi_awregion,
		input wire [C_S00_AXI_AWUSER_WIDTH-1 : 0] s00_axi_awuser,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wlast,
		input wire [C_S00_AXI_WUSER_WIDTH-1 : 0] s00_axi_wuser,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_bid,
		output wire [1 : 0] s00_axi_bresp,
		output wire [C_S00_AXI_BUSER_WIDTH-1 : 0] s00_axi_buser,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_arid,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [7 : 0] s00_axi_arlen,
		input wire [2 : 0] s00_axi_arsize,
		input wire [1 : 0] s00_axi_arburst,
		input wire  s00_axi_arlock,
		input wire [3 : 0] s00_axi_arcache,
		input wire [2 : 0] s00_axi_arprot,
		input wire [3 : 0] s00_axi_arqos,
		input wire [3 : 0] s00_axi_arregion,
		input wire [C_S00_AXI_ARUSER_WIDTH-1 : 0] s00_axi_aruser,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_ID_WIDTH-1 : 0] s00_axi_rid,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rlast,
		output wire [C_S00_AXI_RUSER_WIDTH-1 : 0] s00_axi_ruser,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready,
		
        //////////////////////////////////////////////////////////////////////////////////
        // RTO_Core interface
        //////////////////////////////////////////////////////////////////////////////////
        output wire rto_core_reset,
        output wire rto_core_flush,
        output wire rto_core_write,
        output wire [127:0] rto_core_fifo_din,
        
        input wire rto_core_full,
        input wire rto_core_empty
	);
// Instantiation of Axi Bus Interface S00_AXI
    Distributor #(
        .AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
        .AXI_STROBE_WIDTH(C_S00_AXI_DATA_WIDTH >> 3),
        .AXI_STROBE_LEN(4) // LOG(AXI_STROBE_WDITH)
    )v_1_0_S00_AXI(
        //////////////////////////////////////////////////////////////////////////////////
        // AXI4 Address Write
        //////////////////////////////////////////////////////////////////////////////////
        .s_axi_awaddr(s00_axi_awaddr),
        .s_axi_awburst(s00_axi_awburst),
        .s_axi_awsize(s00_axi_awsize),
        .s_axi_awlen(s00_axi_awlen),
        .s_axi_awvalid(s00_axi_awvalid),
        .s_axi_awready(s00_axi_awready),
        
        //////////////////////////////////////////////////////////////////////////////////
        // AXI4 Write Response
        //////////////////////////////////////////////////////////////////////////////////
        .s_axi_bready(s00_axi_bready),
        .s_axi_bresp(s00_axi_bresp),
        .s_axi_bvalid(s00_axi_bvalid),
        
        //////////////////////////////////////////////////////////////////////////////////
        // AXI4 Data Write
        //////////////////////////////////////////////////////////////////////////////////
        .s_axi_wdata(s00_axi_wdata),
        .s_axi_wstrb(s00_axi_wstrb),
        .s_axi_wvalid(s00_axi_wvalid),
        .s_axi_wlast(s00_axi_wlast),
        .s_axi_wready(s00_axi_wready),
        
        //////////////////////////////////////////////////////////////////////////////////
        // AXI4 Address Read
        //////////////////////////////////////////////////////////////////////////////////
        .s_axi_arburst(s00_axi_arburst),
        .s_axi_arlen(s00_axi_arlen),
        .s_axi_araddr(s00_axi_araddr),
        .s_axi_arsize(s00_axi_arsize),
        .s_axi_arvalid(s00_axi_arvalid),
        .s_axi_arready(s00_axi_arready),
        
        //////////////////////////////////////////////////////////////////////////////////
        // AXI4 Data Read
        //////////////////////////////////////////////////////////////////////////////////
        .s_axi_rready(s00_axi_rready),
        .s_axi_rdata(s00_axi_rdata),
        .s_axi_rresp(s00_axi_rresp),
        .s_axi_rvalid(s00_axi_rvalid),
        .s_axi_rlast(s00_axi_rlast),
        
        //////////////////////////////////////////////////////////////////////////////////
        // AXI4 Clock
        //////////////////////////////////////////////////////////////////////////////////
        .s_axi_aclk(s00_axi_aclk),
        
        //////////////////////////////////////////////////////////////////////////////////
        // AXI4 Reset
        //////////////////////////////////////////////////////////////////////////////////
        .s_axi_aresetn(s00_axi_aresetn),
        
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
/*
	Distributor_v1_0_S00_AXI # ( 
		.C_S_AXI_ID_WIDTH(C_S00_AXI_ID_WIDTH),
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH),
		.C_S_AXI_AWUSER_WIDTH(C_S00_AXI_AWUSER_WIDTH),
		.C_S_AXI_ARUSER_WIDTH(C_S00_AXI_ARUSER_WIDTH),
		.C_S_AXI_WUSER_WIDTH(C_S00_AXI_WUSER_WIDTH),
		.C_S_AXI_RUSER_WIDTH(C_S00_AXI_RUSER_WIDTH),
		.C_S_AXI_BUSER_WIDTH(C_S00_AXI_BUSER_WIDTH)
	) Distributor_v1_0_S00_AXI_inst (
		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWID(s00_axi_awid),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWLEN(s00_axi_awlen),
		.S_AXI_AWSIZE(s00_axi_awsize),
		.S_AXI_AWBURST(s00_axi_awburst),
		.S_AXI_AWLOCK(s00_axi_awlock),
		.S_AXI_AWCACHE(s00_axi_awcache),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWQOS(s00_axi_awqos),
		.S_AXI_AWREGION(s00_axi_awregion),
		.S_AXI_AWUSER(s00_axi_awuser),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WLAST(s00_axi_wlast),
		.S_AXI_WUSER(s00_axi_wuser),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BID(s00_axi_bid),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BUSER(s00_axi_buser),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARID(s00_axi_arid),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARLEN(s00_axi_arlen),
		.S_AXI_ARSIZE(s00_axi_arsize),
		.S_AXI_ARBURST(s00_axi_arburst),
		.S_AXI_ARLOCK(s00_axi_arlock),
		.S_AXI_ARCACHE(s00_axi_arcache),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARQOS(s00_axi_arqos),
		.S_AXI_ARREGION(s00_axi_arregion),
		.S_AXI_ARUSER(s00_axi_aruser),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RID(s00_axi_rid),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RLAST(s00_axi_rlast),
		.S_AXI_RUSER(s00_axi_ruser),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);
	*/

	// Add user logic here

	// User logic ends

	endmodule
