// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Sep  3 18:43:51 2023
// Host        : DESKTOP-MCBJ7EB running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RFSoC_Main_blk_TimeControllerBuffer_0_0_sim_netlist.v
// Design      : RFSoC_Main_blk_TimeControllerBuffer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RFSoC_Main_blk_TimeControllerBuffer_0_0,TimeControllerBuffer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "TimeControllerBuffer,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (counter_I,
    auto_start_I,
    s_axi_aclk,
    s_axi_aresetn,
    counter0_O,
    auto_start0_O,
    counter1_O,
    auto_start1_O,
    counter2_O,
    auto_start2_O,
    counter3_O,
    auto_start3_O);
  input [63:0]counter_I;
  input auto_start_I;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN RFSoC_Main_blk_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
  output [63:0]counter0_O;
  output auto_start0_O;
  output [63:0]counter1_O;
  output auto_start1_O;
  output [63:0]counter2_O;
  output auto_start2_O;
  output [63:0]counter3_O;
  output auto_start3_O;

  wire auto_start3_O;
  wire auto_start_I;
  wire [63:0]counter3_O;
  wire [63:0]counter_I;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  assign auto_start0_O = auto_start3_O;
  assign auto_start1_O = auto_start3_O;
  assign auto_start2_O = auto_start3_O;
  assign counter0_O[63:0] = counter3_O;
  assign counter1_O[63:0] = counter3_O;
  assign counter2_O[63:0] = counter3_O;
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeControllerBuffer inst
       (.auto_start3_O(auto_start3_O),
        .auto_start_I(auto_start_I),
        .counter3_O(counter3_O),
        .counter_I(counter_I),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_TimeControllerBuffer
   (counter3_O,
    auto_start3_O,
    counter_I,
    s_axi_aclk,
    auto_start_I,
    s_axi_aresetn);
  output [63:0]counter3_O;
  output auto_start3_O;
  input [63:0]counter_I;
  input s_axi_aclk;
  input auto_start_I;
  input s_axi_aresetn;

  wire auto_start3_O;
  wire auto_start_I;
  wire [63:0]counter3_O;
  wire [63:0]counter_I;
  wire p_0_in;
  wire s_axi_aclk;
  wire s_axi_aresetn;

  FDRE auto_start0_O_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(auto_start_I),
        .Q(auto_start3_O),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \counter0_O[63]_i_1 
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  FDRE \counter0_O_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[0]),
        .Q(counter3_O[0]),
        .R(p_0_in));
  FDRE \counter0_O_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[10]),
        .Q(counter3_O[10]),
        .R(p_0_in));
  FDRE \counter0_O_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[11]),
        .Q(counter3_O[11]),
        .R(p_0_in));
  FDRE \counter0_O_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[12]),
        .Q(counter3_O[12]),
        .R(p_0_in));
  FDRE \counter0_O_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[13]),
        .Q(counter3_O[13]),
        .R(p_0_in));
  FDRE \counter0_O_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[14]),
        .Q(counter3_O[14]),
        .R(p_0_in));
  FDRE \counter0_O_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[15]),
        .Q(counter3_O[15]),
        .R(p_0_in));
  FDRE \counter0_O_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[16]),
        .Q(counter3_O[16]),
        .R(p_0_in));
  FDRE \counter0_O_reg[17] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[17]),
        .Q(counter3_O[17]),
        .R(p_0_in));
  FDRE \counter0_O_reg[18] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[18]),
        .Q(counter3_O[18]),
        .R(p_0_in));
  FDRE \counter0_O_reg[19] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[19]),
        .Q(counter3_O[19]),
        .R(p_0_in));
  FDRE \counter0_O_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[1]),
        .Q(counter3_O[1]),
        .R(p_0_in));
  FDRE \counter0_O_reg[20] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[20]),
        .Q(counter3_O[20]),
        .R(p_0_in));
  FDRE \counter0_O_reg[21] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[21]),
        .Q(counter3_O[21]),
        .R(p_0_in));
  FDRE \counter0_O_reg[22] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[22]),
        .Q(counter3_O[22]),
        .R(p_0_in));
  FDRE \counter0_O_reg[23] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[23]),
        .Q(counter3_O[23]),
        .R(p_0_in));
  FDRE \counter0_O_reg[24] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[24]),
        .Q(counter3_O[24]),
        .R(p_0_in));
  FDRE \counter0_O_reg[25] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[25]),
        .Q(counter3_O[25]),
        .R(p_0_in));
  FDRE \counter0_O_reg[26] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[26]),
        .Q(counter3_O[26]),
        .R(p_0_in));
  FDRE \counter0_O_reg[27] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[27]),
        .Q(counter3_O[27]),
        .R(p_0_in));
  FDRE \counter0_O_reg[28] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[28]),
        .Q(counter3_O[28]),
        .R(p_0_in));
  FDRE \counter0_O_reg[29] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[29]),
        .Q(counter3_O[29]),
        .R(p_0_in));
  FDRE \counter0_O_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[2]),
        .Q(counter3_O[2]),
        .R(p_0_in));
  FDRE \counter0_O_reg[30] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[30]),
        .Q(counter3_O[30]),
        .R(p_0_in));
  FDRE \counter0_O_reg[31] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[31]),
        .Q(counter3_O[31]),
        .R(p_0_in));
  FDRE \counter0_O_reg[32] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[32]),
        .Q(counter3_O[32]),
        .R(p_0_in));
  FDRE \counter0_O_reg[33] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[33]),
        .Q(counter3_O[33]),
        .R(p_0_in));
  FDRE \counter0_O_reg[34] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[34]),
        .Q(counter3_O[34]),
        .R(p_0_in));
  FDRE \counter0_O_reg[35] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[35]),
        .Q(counter3_O[35]),
        .R(p_0_in));
  FDRE \counter0_O_reg[36] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[36]),
        .Q(counter3_O[36]),
        .R(p_0_in));
  FDRE \counter0_O_reg[37] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[37]),
        .Q(counter3_O[37]),
        .R(p_0_in));
  FDRE \counter0_O_reg[38] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[38]),
        .Q(counter3_O[38]),
        .R(p_0_in));
  FDRE \counter0_O_reg[39] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[39]),
        .Q(counter3_O[39]),
        .R(p_0_in));
  FDRE \counter0_O_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[3]),
        .Q(counter3_O[3]),
        .R(p_0_in));
  FDRE \counter0_O_reg[40] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[40]),
        .Q(counter3_O[40]),
        .R(p_0_in));
  FDRE \counter0_O_reg[41] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[41]),
        .Q(counter3_O[41]),
        .R(p_0_in));
  FDRE \counter0_O_reg[42] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[42]),
        .Q(counter3_O[42]),
        .R(p_0_in));
  FDRE \counter0_O_reg[43] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[43]),
        .Q(counter3_O[43]),
        .R(p_0_in));
  FDRE \counter0_O_reg[44] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[44]),
        .Q(counter3_O[44]),
        .R(p_0_in));
  FDRE \counter0_O_reg[45] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[45]),
        .Q(counter3_O[45]),
        .R(p_0_in));
  FDRE \counter0_O_reg[46] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[46]),
        .Q(counter3_O[46]),
        .R(p_0_in));
  FDRE \counter0_O_reg[47] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[47]),
        .Q(counter3_O[47]),
        .R(p_0_in));
  FDRE \counter0_O_reg[48] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[48]),
        .Q(counter3_O[48]),
        .R(p_0_in));
  FDRE \counter0_O_reg[49] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[49]),
        .Q(counter3_O[49]),
        .R(p_0_in));
  FDRE \counter0_O_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[4]),
        .Q(counter3_O[4]),
        .R(p_0_in));
  FDRE \counter0_O_reg[50] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[50]),
        .Q(counter3_O[50]),
        .R(p_0_in));
  FDRE \counter0_O_reg[51] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[51]),
        .Q(counter3_O[51]),
        .R(p_0_in));
  FDRE \counter0_O_reg[52] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[52]),
        .Q(counter3_O[52]),
        .R(p_0_in));
  FDRE \counter0_O_reg[53] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[53]),
        .Q(counter3_O[53]),
        .R(p_0_in));
  FDRE \counter0_O_reg[54] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[54]),
        .Q(counter3_O[54]),
        .R(p_0_in));
  FDRE \counter0_O_reg[55] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[55]),
        .Q(counter3_O[55]),
        .R(p_0_in));
  FDRE \counter0_O_reg[56] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[56]),
        .Q(counter3_O[56]),
        .R(p_0_in));
  FDRE \counter0_O_reg[57] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[57]),
        .Q(counter3_O[57]),
        .R(p_0_in));
  FDRE \counter0_O_reg[58] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[58]),
        .Q(counter3_O[58]),
        .R(p_0_in));
  FDRE \counter0_O_reg[59] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[59]),
        .Q(counter3_O[59]),
        .R(p_0_in));
  FDRE \counter0_O_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[5]),
        .Q(counter3_O[5]),
        .R(p_0_in));
  FDRE \counter0_O_reg[60] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[60]),
        .Q(counter3_O[60]),
        .R(p_0_in));
  FDRE \counter0_O_reg[61] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[61]),
        .Q(counter3_O[61]),
        .R(p_0_in));
  FDRE \counter0_O_reg[62] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[62]),
        .Q(counter3_O[62]),
        .R(p_0_in));
  FDRE \counter0_O_reg[63] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[63]),
        .Q(counter3_O[63]),
        .R(p_0_in));
  FDRE \counter0_O_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[6]),
        .Q(counter3_O[6]),
        .R(p_0_in));
  FDRE \counter0_O_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[7]),
        .Q(counter3_O[7]),
        .R(p_0_in));
  FDRE \counter0_O_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[8]),
        .Q(counter3_O[8]),
        .R(p_0_in));
  FDRE \counter0_O_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(counter_I[9]),
        .Q(counter3_O[9]),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
