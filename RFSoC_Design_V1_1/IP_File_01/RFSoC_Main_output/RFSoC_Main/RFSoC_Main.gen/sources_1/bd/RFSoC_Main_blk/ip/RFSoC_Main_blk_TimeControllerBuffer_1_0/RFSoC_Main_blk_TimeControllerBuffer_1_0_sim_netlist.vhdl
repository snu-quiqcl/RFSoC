-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Sep  3 18:43:51 2023
-- Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top RFSoC_Main_blk_TimeControllerBuffer_1_0 -prefix
--               RFSoC_Main_blk_TimeControllerBuffer_1_0_ RFSoC_Main_blk_TimeControllerBuffer_0_0_sim_netlist.vhdl
-- Design      : RFSoC_Main_blk_TimeControllerBuffer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RFSoC_Main_blk_TimeControllerBuffer_1_0_TimeControllerBuffer is
  port (
    counter3_O : out STD_LOGIC_VECTOR ( 63 downto 0 );
    auto_start3_O : out STD_LOGIC;
    counter_I : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    auto_start_I : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );
end RFSoC_Main_blk_TimeControllerBuffer_1_0_TimeControllerBuffer;

architecture STRUCTURE of RFSoC_Main_blk_TimeControllerBuffer_1_0_TimeControllerBuffer is
  signal p_0_in : STD_LOGIC;
begin
auto_start0_O_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => auto_start_I,
      Q => auto_start3_O,
      R => p_0_in
    );
\counter0_O[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => p_0_in
    );
\counter0_O_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(0),
      Q => counter3_O(0),
      R => p_0_in
    );
\counter0_O_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(10),
      Q => counter3_O(10),
      R => p_0_in
    );
\counter0_O_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(11),
      Q => counter3_O(11),
      R => p_0_in
    );
\counter0_O_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(12),
      Q => counter3_O(12),
      R => p_0_in
    );
\counter0_O_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(13),
      Q => counter3_O(13),
      R => p_0_in
    );
\counter0_O_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(14),
      Q => counter3_O(14),
      R => p_0_in
    );
\counter0_O_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(15),
      Q => counter3_O(15),
      R => p_0_in
    );
\counter0_O_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(16),
      Q => counter3_O(16),
      R => p_0_in
    );
\counter0_O_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(17),
      Q => counter3_O(17),
      R => p_0_in
    );
\counter0_O_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(18),
      Q => counter3_O(18),
      R => p_0_in
    );
\counter0_O_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(19),
      Q => counter3_O(19),
      R => p_0_in
    );
\counter0_O_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(1),
      Q => counter3_O(1),
      R => p_0_in
    );
\counter0_O_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(20),
      Q => counter3_O(20),
      R => p_0_in
    );
\counter0_O_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(21),
      Q => counter3_O(21),
      R => p_0_in
    );
\counter0_O_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(22),
      Q => counter3_O(22),
      R => p_0_in
    );
\counter0_O_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(23),
      Q => counter3_O(23),
      R => p_0_in
    );
\counter0_O_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(24),
      Q => counter3_O(24),
      R => p_0_in
    );
\counter0_O_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(25),
      Q => counter3_O(25),
      R => p_0_in
    );
\counter0_O_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(26),
      Q => counter3_O(26),
      R => p_0_in
    );
\counter0_O_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(27),
      Q => counter3_O(27),
      R => p_0_in
    );
\counter0_O_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(28),
      Q => counter3_O(28),
      R => p_0_in
    );
\counter0_O_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(29),
      Q => counter3_O(29),
      R => p_0_in
    );
\counter0_O_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(2),
      Q => counter3_O(2),
      R => p_0_in
    );
\counter0_O_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(30),
      Q => counter3_O(30),
      R => p_0_in
    );
\counter0_O_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(31),
      Q => counter3_O(31),
      R => p_0_in
    );
\counter0_O_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(32),
      Q => counter3_O(32),
      R => p_0_in
    );
\counter0_O_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(33),
      Q => counter3_O(33),
      R => p_0_in
    );
\counter0_O_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(34),
      Q => counter3_O(34),
      R => p_0_in
    );
\counter0_O_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(35),
      Q => counter3_O(35),
      R => p_0_in
    );
\counter0_O_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(36),
      Q => counter3_O(36),
      R => p_0_in
    );
\counter0_O_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(37),
      Q => counter3_O(37),
      R => p_0_in
    );
\counter0_O_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(38),
      Q => counter3_O(38),
      R => p_0_in
    );
\counter0_O_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(39),
      Q => counter3_O(39),
      R => p_0_in
    );
\counter0_O_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(3),
      Q => counter3_O(3),
      R => p_0_in
    );
\counter0_O_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(40),
      Q => counter3_O(40),
      R => p_0_in
    );
\counter0_O_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(41),
      Q => counter3_O(41),
      R => p_0_in
    );
\counter0_O_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(42),
      Q => counter3_O(42),
      R => p_0_in
    );
\counter0_O_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(43),
      Q => counter3_O(43),
      R => p_0_in
    );
\counter0_O_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(44),
      Q => counter3_O(44),
      R => p_0_in
    );
\counter0_O_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(45),
      Q => counter3_O(45),
      R => p_0_in
    );
\counter0_O_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(46),
      Q => counter3_O(46),
      R => p_0_in
    );
\counter0_O_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(47),
      Q => counter3_O(47),
      R => p_0_in
    );
\counter0_O_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(48),
      Q => counter3_O(48),
      R => p_0_in
    );
\counter0_O_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(49),
      Q => counter3_O(49),
      R => p_0_in
    );
\counter0_O_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(4),
      Q => counter3_O(4),
      R => p_0_in
    );
\counter0_O_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(50),
      Q => counter3_O(50),
      R => p_0_in
    );
\counter0_O_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(51),
      Q => counter3_O(51),
      R => p_0_in
    );
\counter0_O_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(52),
      Q => counter3_O(52),
      R => p_0_in
    );
\counter0_O_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(53),
      Q => counter3_O(53),
      R => p_0_in
    );
\counter0_O_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(54),
      Q => counter3_O(54),
      R => p_0_in
    );
\counter0_O_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(55),
      Q => counter3_O(55),
      R => p_0_in
    );
\counter0_O_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(56),
      Q => counter3_O(56),
      R => p_0_in
    );
\counter0_O_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(57),
      Q => counter3_O(57),
      R => p_0_in
    );
\counter0_O_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(58),
      Q => counter3_O(58),
      R => p_0_in
    );
\counter0_O_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(59),
      Q => counter3_O(59),
      R => p_0_in
    );
\counter0_O_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(5),
      Q => counter3_O(5),
      R => p_0_in
    );
\counter0_O_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(60),
      Q => counter3_O(60),
      R => p_0_in
    );
\counter0_O_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(61),
      Q => counter3_O(61),
      R => p_0_in
    );
\counter0_O_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(62),
      Q => counter3_O(62),
      R => p_0_in
    );
\counter0_O_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(63),
      Q => counter3_O(63),
      R => p_0_in
    );
\counter0_O_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(6),
      Q => counter3_O(6),
      R => p_0_in
    );
\counter0_O_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(7),
      Q => counter3_O(7),
      R => p_0_in
    );
\counter0_O_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(8),
      Q => counter3_O(8),
      R => p_0_in
    );
\counter0_O_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => counter_I(9),
      Q => counter3_O(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity RFSoC_Main_blk_TimeControllerBuffer_1_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of RFSoC_Main_blk_TimeControllerBuffer_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of RFSoC_Main_blk_TimeControllerBuffer_1_0 : entity is "RFSoC_Main_blk_TimeControllerBuffer_0_0,TimeControllerBuffer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of RFSoC_Main_blk_TimeControllerBuffer_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of RFSoC_Main_blk_TimeControllerBuffer_1_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of RFSoC_Main_blk_TimeControllerBuffer_1_0 : entity is "TimeControllerBuffer,Vivado 2020.2";
end RFSoC_Main_blk_TimeControllerBuffer_1_0;

architecture STRUCTURE of RFSoC_Main_blk_TimeControllerBuffer_1_0 is
  signal \^auto_start3_o\ : STD_LOGIC;
  signal \^counter3_o\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN RFSoC_Main_blk_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  auto_start0_O <= \^auto_start3_o\;
  auto_start1_O <= \^auto_start3_o\;
  auto_start2_O <= \^auto_start3_o\;
  auto_start3_O <= \^auto_start3_o\;
  counter0_O(63 downto 0) <= \^counter3_o\(63 downto 0);
  counter1_O(63 downto 0) <= \^counter3_o\(63 downto 0);
  counter2_O(63 downto 0) <= \^counter3_o\(63 downto 0);
  counter3_O(63 downto 0) <= \^counter3_o\(63 downto 0);
inst: entity work.RFSoC_Main_blk_TimeControllerBuffer_1_0_TimeControllerBuffer
     port map (
      auto_start3_O => \^auto_start3_o\,
      auto_start_I => auto_start_I,
      counter3_O(63 downto 0) => \^counter3_o\(63 downto 0),
      counter_I(63 downto 0) => counter_I(63 downto 0),
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn
    );
end STRUCTURE;
