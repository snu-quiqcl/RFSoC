//----------------------------------------------------------------------------
// Title : ROM for tile configuration
// Project : Ultrascale+ RF Data Converter Subsystem
//----------------------------------------------------------------------------
//
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 

`timescale 1ps/1ps

module RFSoC_Main_blk_usp_rf_data_converter_0_0_device_rom (
    aux_clk,
    data_index,
    data_out,
    addr_out,
    tile_out
  );

    input aux_clk;

    input [10:0] data_index;

    output [15:0] data_out;
    output [10:0] addr_out;
    output [2:0]  tile_out;

    reg [29:0] data;

    // The 30-bit data in the array follows the format below:
    // 29:27 |  26:24  |    23:16    |    15:0
    // Tile  |  Slice  | DRP Address |  DRP Data

    (* rom_style = "distributed" *) reg [29:0] data_array [0:134] = '{
       30'h07280280,  // SYSREF Distribution (ADC0)
       30'h0f280600,  // SYSREF Distribution (ADC1)
       30'h17288880,  // SYSREF Distribution (ADC2)
       30'h1f281700,  // SYSREF Distribution (ADC3)
       30'h27230000,  // Clock Network Control 0 (DAC0)
       30'h27240000,  // Clock Network Control 1 (DAC0)
       30'h272c0012,  // CLK_DIV (DAC0)
       30'h2728c980,  // SYSREF Distribution (DAC0)
       30'h272df242,  // HSCOM_PWR_MASK (DAC0)
       30'h20020810,  // DAC00 Data Width
       30'h20100001,  // DAC00 Interpolation Control
       30'h20110000,  // DAC00 Interpolation Data
       30'h20200000,  // DAC00 Mixer Config 0
       30'h20210924,  // DAC00 Mixer Config 1
       30'h20300000,  // DAC00 Inv Sinc Filter
       30'h20310040,  // DAC00 Multiband Config
       30'h20600001,  // DAC00 Decoder Control
       30'h20610001,  // DAC00 Decoder Clock Enable
       30'h20710000,  // DAC00 MC_CONFIG0
       30'h2073a0d8,  // DAC00 MC_CONFIG2
       30'h2074ffc0,  // DAC00 MC_CONFIG3
       30'h2006000f,  // DAC00 FABRIC_IMR
       30'h200f0fff,  // DAC00 DATAPATH_IMR
       30'h20070008,  // DAC00 FABRIC_DEBUG
       30'h21020810,  // DAC01 Data Width
       30'h21100001,  // DAC01 Interpolation Control
       30'h21110000,  // DAC01 Interpolation Data
       30'h21200000,  // DAC01 Mixer Config 0
       30'h21210924,  // DAC01 Mixer Config 1
       30'h21300000,  // DAC01 Inv Sinc Filter
       30'h21310040,  // DAC01 Multiband Config
       30'h21600001,  // DAC01 Decoder Control
       30'h21610001,  // DAC01 Decoder Clock Enable
       30'h21710000,  // DAC01 MC_CONFIG0
       30'h2173a0d8,  // DAC01 MC_CONFIG2
       30'h2174ffc0,  // DAC01 MC_CONFIG3
       30'h2106000f,  // DAC01 FABRIC_IMR
       30'h210f0fff,  // DAC01 DATAPATH_IMR
       30'h21070008,  // DAC01 FABRIC_DEBUG
       30'h22020810,  // DAC02 Data Width
       30'h22100001,  // DAC02 Interpolation Control
       30'h22110000,  // DAC02 Interpolation Data
       30'h22200000,  // DAC02 Mixer Config 0
       30'h22210924,  // DAC02 Mixer Config 1
       30'h22300000,  // DAC02 Inv Sinc Filter
       30'h22310040,  // DAC02 Multiband Config
       30'h22600001,  // DAC02 Decoder Control
       30'h22610001,  // DAC02 Decoder Clock Enable
       30'h22710000,  // DAC02 MC_CONFIG0
       30'h2273a0d8,  // DAC02 MC_CONFIG2
       30'h2274ffc0,  // DAC02 MC_CONFIG3
       30'h2206000f,  // DAC02 FABRIC_IMR
       30'h220f0fff,  // DAC02 DATAPATH_IMR
       30'h22070008,  // DAC02 FABRIC_DEBUG
       30'h23020810,  // DAC03 Data Width
       30'h23100001,  // DAC03 Interpolation Control
       30'h23110000,  // DAC03 Interpolation Data
       30'h23200000,  // DAC03 Mixer Config 0
       30'h23210924,  // DAC03 Mixer Config 1
       30'h23300000,  // DAC03 Inv Sinc Filter
       30'h23310040,  // DAC03 Multiband Config
       30'h23600001,  // DAC03 Decoder Control
       30'h23610001,  // DAC03 Decoder Clock Enable
       30'h23710000,  // DAC03 MC_CONFIG0
       30'h2373a0d8,  // DAC03 MC_CONFIG2
       30'h2374ffc0,  // DAC03 MC_CONFIG3
       30'h2306000f,  // DAC03 FABRIC_IMR
       30'h230f0fff,  // DAC03 DATAPATH_IMR
       30'h23070008,  // DAC03 FABRIC_DEBUG
       30'h2f230000,  // Clock Network Control 0 (DAC1)
       30'h2f240000,  // Clock Network Control 1 (DAC1)
       30'h2f2c0012,  // CLK_DIV (DAC1)
       30'h2f280100,  // SYSREF Distribution (DAC1)
       30'h2f2df242,  // HSCOM_PWR_MASK (DAC1)
       30'h28020810,  // DAC10 Data Width
       30'h28100001,  // DAC10 Interpolation Control
       30'h28110000,  // DAC10 Interpolation Data
       30'h28200000,  // DAC10 Mixer Config 0
       30'h28210924,  // DAC10 Mixer Config 1
       30'h28300000,  // DAC10 Inv Sinc Filter
       30'h28310040,  // DAC10 Multiband Config
       30'h28600001,  // DAC10 Decoder Control
       30'h28610001,  // DAC10 Decoder Clock Enable
       30'h28710000,  // DAC10 MC_CONFIG0
       30'h2873a0d8,  // DAC10 MC_CONFIG2
       30'h2874ffc0,  // DAC10 MC_CONFIG3
       30'h2806000f,  // DAC10 FABRIC_IMR
       30'h280f0fff,  // DAC10 DATAPATH_IMR
       30'h28070008,  // DAC10 FABRIC_DEBUG
       30'h29020810,  // DAC11 Data Width
       30'h29100001,  // DAC11 Interpolation Control
       30'h29110000,  // DAC11 Interpolation Data
       30'h29200000,  // DAC11 Mixer Config 0
       30'h29210924,  // DAC11 Mixer Config 1
       30'h29300000,  // DAC11 Inv Sinc Filter
       30'h29310040,  // DAC11 Multiband Config
       30'h29600001,  // DAC11 Decoder Control
       30'h29610001,  // DAC11 Decoder Clock Enable
       30'h29710000,  // DAC11 MC_CONFIG0
       30'h2973a0d8,  // DAC11 MC_CONFIG2
       30'h2974ffc0,  // DAC11 MC_CONFIG3
       30'h2906000f,  // DAC11 FABRIC_IMR
       30'h290f0fff,  // DAC11 DATAPATH_IMR
       30'h29070008,  // DAC11 FABRIC_DEBUG
       30'h2a020810,  // DAC12 Data Width
       30'h2a100001,  // DAC12 Interpolation Control
       30'h2a110000,  // DAC12 Interpolation Data
       30'h2a200000,  // DAC12 Mixer Config 0
       30'h2a210924,  // DAC12 Mixer Config 1
       30'h2a300000,  // DAC12 Inv Sinc Filter
       30'h2a310040,  // DAC12 Multiband Config
       30'h2a600001,  // DAC12 Decoder Control
       30'h2a610001,  // DAC12 Decoder Clock Enable
       30'h2a710000,  // DAC12 MC_CONFIG0
       30'h2a73a0d8,  // DAC12 MC_CONFIG2
       30'h2a74ffc0,  // DAC12 MC_CONFIG3
       30'h2a06000f,  // DAC12 FABRIC_IMR
       30'h2a0f0fff,  // DAC12 DATAPATH_IMR
       30'h2a070008,  // DAC12 FABRIC_DEBUG
       30'h2b020810,  // DAC13 Data Width
       30'h2b100001,  // DAC13 Interpolation Control
       30'h2b110000,  // DAC13 Interpolation Data
       30'h2b200000,  // DAC13 Mixer Config 0
       30'h2b210924,  // DAC13 Mixer Config 1
       30'h2b300000,  // DAC13 Inv Sinc Filter
       30'h2b310040,  // DAC13 Multiband Config
       30'h2b600001,  // DAC13 Decoder Control
       30'h2b610001,  // DAC13 Decoder Clock Enable
       30'h2b710000,  // DAC13 MC_CONFIG0
       30'h2b73a0d8,  // DAC13 MC_CONFIG2
       30'h2b74ffc0,  // DAC13 MC_CONFIG3
       30'h2b06000f,  // DAC13 FABRIC_IMR
       30'h2b0f0fff,  // DAC13 DATAPATH_IMR
       30'h2b070008,  // DAC13 FABRIC_DEBUG
       30'h00000000};

    //-------------------------------------------------------------------------
    // Output the tile number, address and data for the DRP writes
    // depending on the data_index input
    //-------------------------------------------------------------------------
    always @(posedge aux_clk)
    begin
      data <= data_array[data_index];
    end

    assign data_out = data[15:0];
    assign addr_out = data[26:16];
    assign tile_out = data[29:27];

endmodule
