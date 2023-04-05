-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Apr  4 19:14:15 2023
-- Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/RFSoC/GIT/RFSoC/RFSoC_Design_RFDC_Test/IP_FILE_06/TEST_05/TEST_02.gen/sources_1/bd/TEST_02_Block/ip/TEST_02_Block_usp_rf_data_converter_0_0/TEST_02_Block_usp_rf_data_converter_0_0_stub.vhdl
-- Design      : TEST_02_Block_usp_rf_data_converter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity TEST_02_Block_usp_rf_data_converter_0_0 is
  Port ( 
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 17 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    sysref_in_p : in STD_LOGIC;
    sysref_in_n : in STD_LOGIC;
    dac0_clk_p : in STD_LOGIC;
    dac0_clk_n : in STD_LOGIC;
    clk_dac0 : out STD_LOGIC;
    s0_axis_aclk : in STD_LOGIC;
    s0_axis_aresetn : in STD_LOGIC;
    vout00_p : out STD_LOGIC;
    vout00_n : out STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    dac00_nco_freq : in STD_LOGIC_VECTOR ( 47 downto 0 );
    dac00_nco_phase : in STD_LOGIC_VECTOR ( 17 downto 0 );
    dac00_nco_phase_rst : in STD_LOGIC;
    dac00_nco_update_en : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dac0_nco_update_req : in STD_LOGIC;
    dac0_nco_update_busy : out STD_LOGIC_VECTOR ( 1 downto 0 );
    irq : out STD_LOGIC
  );

end TEST_02_Block_usp_rf_data_converter_0_0;

architecture stub of TEST_02_Block_usp_rf_data_converter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_aclk,s_axi_aresetn,s_axi_awaddr[17:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[17:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,sysref_in_p,sysref_in_n,dac0_clk_p,dac0_clk_n,clk_dac0,s0_axis_aclk,s0_axis_aresetn,vout00_p,vout00_n,s00_axis_tdata[255:0],s00_axis_tvalid,s00_axis_tready,dac00_nco_freq[47:0],dac00_nco_phase[17:0],dac00_nco_phase_rst,dac00_nco_update_en[5:0],dac0_nco_update_req,dac0_nco_update_busy[1:0],irq";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "usp_rf_data_converter_v2_4_0,Vivado 2020.2";
begin
end;
