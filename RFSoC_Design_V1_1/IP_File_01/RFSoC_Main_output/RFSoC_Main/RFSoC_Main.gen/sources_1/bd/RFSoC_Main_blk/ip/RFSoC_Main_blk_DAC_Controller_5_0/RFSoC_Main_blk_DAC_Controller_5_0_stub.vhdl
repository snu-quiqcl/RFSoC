-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Sep  2 21:56:54 2023
-- Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/RFSoC/GIT/RFSoC/RFSoC_Design_V1_1/IP_File_01/RFSoC_Main_output/RFSoC_Main/RFSoC_Main.gen/sources_1/bd/RFSoC_Main_blk/ip/RFSoC_Main_blk_DAC_Controller_5_0/RFSoC_Main_blk_DAC_Controller_5_0_stub.vhdl
-- Design      : RFSoC_Main_blk_DAC_Controller_5_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RFSoC_Main_blk_DAC_Controller_5_0 is
  Port ( 
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_awid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awuser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_awready : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axi_rready : in STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    m00_axis_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    auto_start : in STD_LOGIC;
    counter : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end RFSoC_Main_blk_DAC_Controller_5_0;

architecture stub of RFSoC_Main_blk_DAC_Controller_5_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_awaddr[5:0],s_axi_awid[15:0],s_axi_awburst[1:0],s_axi_awsize[2:0],s_axi_awlen[7:0],s_axi_awvalid,s_axi_awuser[15:0],s_axi_awready,s_axi_bready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bid[15:0],s_axi_wdata[127:0],s_axi_wstrb[15:0],s_axi_wvalid,s_axi_wlast,s_axi_wready,s_axi_arburst[1:0],s_axi_arlen[7:0],s_axi_araddr[5:0],s_axi_arsize[2:0],s_axi_arvalid,s_axi_arid[15:0],s_axi_aruser[15:0],s_axi_arready,s_axi_rid[15:0],s_axi_rready,s_axi_rdata[127:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rlast,s_axi_aclk,m00_axis_aclk,s_axi_aresetn,m00_axis_tdata[255:0],m00_axis_tvalid,m00_axis_tready,auto_start,counter[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "DAC_Controller_5,Vivado 2020.2";
begin
end;
