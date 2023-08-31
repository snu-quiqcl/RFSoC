`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/08/31 14:26:48
// Design Name: 
// Module Name: RFSoC_Main
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


module RFSoC_Main;
//////////////////////////////////////////////////////////////////////////////////
// Wire declaration for Zynq
//////////////////////////////////////////////////////////////////////////////////

wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB;
wire zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID;
wire zynq_ultra_ps_e_0_pl_clk0;
wire zynq_ultra_ps_e_0_pl_clk0;
wire zynq_ultra_ps_e_0_pl_resetn0;

zynq_ultra_ps_e_0 zynq_ultra_ps_e_0
(
    .maxigp0_araddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARADDR),
    .maxigp0_arburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARBURST),
    .maxigp0_arcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARCACHE),
    .maxigp0_arid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARID),
    .maxigp0_arlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLEN),
    .maxigp0_arlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARLOCK),
    .maxigp0_arprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARPROT),
    .maxigp0_arqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARQOS),
    .maxigp0_arready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARREADY),
    .maxigp0_arsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARSIZE),
    .maxigp0_aruser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARUSER),
    .maxigp0_arvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_ARVALID),
    .maxigp0_awaddr(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWADDR),
    .maxigp0_awburst(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWBURST),
    .maxigp0_awcache(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWCACHE),
    .maxigp0_awid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWID),
    .maxigp0_awlen(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLEN),
    .maxigp0_awlock(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWLOCK),
    .maxigp0_awprot(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWPROT),
    .maxigp0_awqos(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWQOS),
    .maxigp0_awready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWREADY),
    .maxigp0_awsize(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWSIZE),
    .maxigp0_awuser(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWUSER),
    .maxigp0_awvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_AWVALID),
    .maxigp0_bid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BID),
    .maxigp0_bready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BREADY),
    .maxigp0_bresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BRESP),
    .maxigp0_bvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_BVALID),
    .maxigp0_rdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RDATA),
    .maxigp0_rid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RID),
    .maxigp0_rlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RLAST),
    .maxigp0_rready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RREADY),
    .maxigp0_rresp(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RRESP),
    .maxigp0_rvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_RVALID),
    .maxigp0_wdata(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WDATA),
    .maxigp0_wlast(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WLAST),
    .maxigp0_wready(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WREADY),
    .maxigp0_wstrb(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WSTRB),
    .maxigp0_wvalid(zynq_ultra_ps_e_0_M_AXI_HPM0_FPD_WVALID),
    .maxihpm0_fpd_aclk(zynq_ultra_ps_e_0_pl_clk0),
    .pl_clk0(zynq_ultra_ps_e_0_pl_clk0),
    .pl_resetn0(zynq_ultra_ps_e_0_pl_resetn0)
);
endmodule
