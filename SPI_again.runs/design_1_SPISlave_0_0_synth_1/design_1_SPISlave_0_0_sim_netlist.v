// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Nov  9 10:29:08 2020
// Host        : interestinghostname running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SPISlave_0_0_sim_netlist.v
// Design      : design_1_SPISlave_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EdgeDetect
   (stateReg_reg_0,
    clock,
    io_SPISignals_SCLK,
    reset,
    io_SPISignals_SS);
  output stateReg_reg_0;
  input clock;
  input io_SPISignals_SCLK;
  input reset;
  input io_SPISignals_SS;

  wire clock;
  wire io_SPISignals_SCLK;
  wire io_SPISignals_SS;
  wire reset;
  wire stateReg;
  wire stateReg_i_1_n_0;
  wire stateReg_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    registers_7_i_1
       (.I0(stateReg),
        .I1(io_SPISignals_SCLK),
        .I2(io_SPISignals_SS),
        .O(stateReg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    stateReg_i_1
       (.I0(io_SPISignals_SCLK),
        .I1(reset),
        .O(stateReg_i_1_n_0));
  FDRE stateReg_reg
       (.C(clock),
        .CE(1'b1),
        .D(stateReg_i_1_n_0),
        .Q(stateReg),
        .R(1'b0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPISlave
   (io_currentByte,
    reset,
    io_SPISignals_MOSI,
    clock,
    io_SPISignals_SCLK,
    io_SPISignals_SS);
  output [7:0]io_currentByte;
  input reset;
  input io_SPISignals_MOSI;
  input clock;
  input io_SPISignals_SCLK;
  input io_SPISignals_SS;

  wire clock;
  wire edgeDetect_n_0;
  wire io_SPISignals_MOSI;
  wire io_SPISignals_SCLK;
  wire io_SPISignals_SS;
  wire [7:0]io_currentByte;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_EdgeDetect edgeDetect
       (.clock(clock),
        .io_SPISignals_SCLK(io_SPISignals_SCLK),
        .io_SPISignals_SS(io_SPISignals_SS),
        .reset(reset),
        .stateReg_reg_0(edgeDetect_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ShiftRegister shiftRegister
       (.clock(clock),
        .io_SPISignals_MOSI(io_SPISignals_MOSI),
        .io_currentByte(io_currentByte),
        .registers_7_reg_0(edgeDetect_n_0),
        .reset(reset));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ShiftRegister
   (io_currentByte,
    reset,
    registers_7_reg_0,
    io_SPISignals_MOSI,
    clock);
  output [7:0]io_currentByte;
  input reset;
  input registers_7_reg_0;
  input io_SPISignals_MOSI;
  input clock;

  wire clock;
  wire io_SPISignals_MOSI;
  wire [7:0]io_currentByte;
  wire registers_7_reg_0;
  wire reset;

  FDRE registers_0_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_SPISignals_MOSI),
        .Q(io_currentByte[0]),
        .R(reset));
  FDRE registers_1_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[0]),
        .Q(io_currentByte[1]),
        .R(reset));
  FDRE registers_2_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[1]),
        .Q(io_currentByte[2]),
        .R(reset));
  FDRE registers_3_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[2]),
        .Q(io_currentByte[3]),
        .R(reset));
  FDRE registers_4_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[3]),
        .Q(io_currentByte[4]),
        .R(reset));
  FDRE registers_5_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[4]),
        .Q(io_currentByte[5]),
        .R(reset));
  FDRE registers_6_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[5]),
        .Q(io_currentByte[6]),
        .R(reset));
  FDRE registers_7_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[6]),
        .Q(io_currentByte[7]),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_SPISlave_0_0,SPISlave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SPISlave,Vivado 2020.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clock,
    reset,
    io_SPISignals_SCLK,
    io_SPISignals_MOSI,
    io_SPISignals_SS,
    io_currentByte,
    io_isCurrentlyReading);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input io_SPISignals_SCLK;
  input io_SPISignals_MOSI;
  input io_SPISignals_SS;
  output [7:0]io_currentByte;
  output io_isCurrentlyReading;

  wire clock;
  wire io_SPISignals_MOSI;
  wire io_SPISignals_SCLK;
  wire io_SPISignals_SS;
  wire [7:0]io_currentByte;
  wire io_isCurrentlyReading;
  wire reset;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_SPISlave inst
       (.clock(clock),
        .io_SPISignals_MOSI(io_SPISignals_MOSI),
        .io_SPISignals_SCLK(io_SPISignals_SCLK),
        .io_SPISignals_SS(io_SPISignals_SS),
        .io_currentByte(io_currentByte),
        .reset(reset));
  LUT1 #(
    .INIT(2'h1)) 
    io_isCurrentlyReading_INST_0
       (.I0(io_SPISignals_SS),
        .O(io_isCurrentlyReading));
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
