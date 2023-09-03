-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Sep  3 18:43:50 2023
-- Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top RFSoC_Main_blk_TimeControllerBuffer_2_0 -prefix
--               RFSoC_Main_blk_TimeControllerBuffer_2_0_ RFSoC_Main_blk_TimeControllerBuffer_0_0_stub.vhdl
-- Design      : RFSoC_Main_blk_TimeControllerBuffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity RFSoC_Main_blk_TimeControllerBuffer_2_0 is
  Port ( 
    counter_I : in STD_LOGIC_VECTOR ( 63 downto 0 );
    auto_start_I : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    counter0_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    auto_start0_O : out STD_LOGIC;
    counter1_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    auto_start1_O : out STD_LOGIC;
    counter2_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    auto_start2_O : out STD_LOGIC;
    counter3_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    auto_start3_O : out STD_LOGIC
  );

end RFSoC_Main_blk_TimeControllerBuffer_2_0;

architecture stub of RFSoC_Main_blk_TimeControllerBuffer_2_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "counter_I[63:0],auto_start_I,s_axi_aclk,s_axi_aresetn,counter0_O[63:0],auto_start0_O,counter1_O[63:0],auto_start1_O,counter2_O[63:0],auto_start2_O,counter3_O[63:0],auto_start3_O";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "TimeControllerBuffer,Vivado 2020.2";
begin
end;
