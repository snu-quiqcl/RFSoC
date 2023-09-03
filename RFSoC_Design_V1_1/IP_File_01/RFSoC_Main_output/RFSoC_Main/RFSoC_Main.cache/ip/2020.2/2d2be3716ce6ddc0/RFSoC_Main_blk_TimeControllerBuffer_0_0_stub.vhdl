-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Sep  3 18:43:50 2023
-- Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RFSoC_Main_blk_TimeControllerBuffer_0_0_stub.vhdl
-- Design      : RFSoC_Main_blk_TimeControllerBuffer_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "counter_I[63:0],auto_start_I,s_axi_aclk,s_axi_aresetn,counter0_O[63:0],auto_start0_O,counter1_O[63:0],auto_start1_O,counter2_O[63:0],auto_start2_O,counter3_O[63:0],auto_start3_O";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "TimeControllerBuffer,Vivado 2020.2";
begin
end;
