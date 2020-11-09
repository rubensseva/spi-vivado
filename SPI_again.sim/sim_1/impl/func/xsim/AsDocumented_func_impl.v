// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Sun Nov  8 23:11:34 2020
// Host        : interestinghostname running 64-bit unknown
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/ruben/SPI_again/SPI_again.sim/sim_1/impl/func/xsim/AsDocumented_func_impl.v
// Design      : SPISlave
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module EdgeDetect
   (stateReg_reg_0,
    clock_IBUF_BUFG,
    io_SPISignals_SCLK_IBUF,
    io_SPISignals_SS_IBUF,
    reset_IBUF);
  output stateReg_reg_0;
  input clock_IBUF_BUFG;
  input io_SPISignals_SCLK_IBUF;
  input io_SPISignals_SS_IBUF;
  input reset_IBUF;

  wire clock_IBUF_BUFG;
  wire io_SPISignals_SCLK_IBUF;
  wire io_SPISignals_SS_IBUF;
  wire reset_IBUF;
  wire stateReg;
  wire stateReg_i_1_n_0;
  wire stateReg_reg_0;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h02)) 
    registers_0_i_1
       (.I0(stateReg),
        .I1(io_SPISignals_SCLK_IBUF),
        .I2(io_SPISignals_SS_IBUF),
        .O(stateReg_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    stateReg_i_1
       (.I0(io_SPISignals_SCLK_IBUF),
        .I1(reset_IBUF),
        .O(stateReg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stateReg_reg
       (.C(clock_IBUF_BUFG),
        .CE(1'b1),
        .D(stateReg_i_1_n_0),
        .Q(stateReg),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "106671fc" *) 
(* NotValidForBitStream *)
module SPISlave
   (clock,
    reset,
    io_SPISignals_SCLK,
    io_SPISignals_MOSI,
    io_SPISignals_SS,
    io_currentByte,
    io_isCurrentlyReading);
  input clock;
  input reset;
  input io_SPISignals_SCLK;
  input io_SPISignals_MOSI;
  input io_SPISignals_SS;
  output [7:0]io_currentByte;
  output io_isCurrentlyReading;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire edgeDetect_n_0;
  wire io_SPISignals_MOSI;
  wire io_SPISignals_MOSI_IBUF;
  wire io_SPISignals_SCLK;
  wire io_SPISignals_SCLK_IBUF;
  wire io_SPISignals_SS;
  wire io_SPISignals_SS_IBUF;
  wire [7:0]io_currentByte;
  wire [7:0]io_currentByte_OBUF;
  wire io_isCurrentlyReading;
  wire io_isCurrentlyReading_OBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire reset;
  wire reset_IBUF;
  wire [6:1]NLW_shiftRegister_io_currentByte_OBUF_UNCONNECTED;

  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  EdgeDetect edgeDetect
       (.clock_IBUF_BUFG(clock_IBUF_BUFG),
        .io_SPISignals_SCLK_IBUF(io_SPISignals_SCLK_IBUF),
        .io_SPISignals_SS_IBUF(io_SPISignals_SS_IBUF),
        .reset_IBUF(reset_IBUF),
        .stateReg_reg_0(edgeDetect_n_0));
  IBUF io_SPISignals_MOSI_IBUF_inst
       (.I(io_SPISignals_MOSI),
        .O(io_SPISignals_MOSI_IBUF));
  IBUF io_SPISignals_SCLK_IBUF_inst
       (.I(io_SPISignals_SCLK),
        .O(io_SPISignals_SCLK_IBUF));
  IBUF io_SPISignals_SS_IBUF_inst
       (.I(io_SPISignals_SS),
        .O(io_SPISignals_SS_IBUF));
  OBUF \io_currentByte_OBUF[0]_inst 
       (.I(io_currentByte_OBUF[0]),
        .O(io_currentByte[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_OBUF[1]_inst 
       (.I(lopt),
        .O(io_currentByte[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_OBUF[2]_inst 
       (.I(lopt_1),
        .O(io_currentByte[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_OBUF[3]_inst 
       (.I(lopt_2),
        .O(io_currentByte[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_OBUF[4]_inst 
       (.I(lopt_3),
        .O(io_currentByte[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_OBUF[5]_inst 
       (.I(lopt_4),
        .O(io_currentByte[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_OBUF[6]_inst 
       (.I(lopt_5),
        .O(io_currentByte[6]));
  OBUF \io_currentByte_OBUF[7]_inst 
       (.I(io_currentByte_OBUF[7]),
        .O(io_currentByte[7]));
  OBUF io_isCurrentlyReading_OBUF_inst
       (.I(io_isCurrentlyReading_OBUF),
        .O(io_isCurrentlyReading));
  LUT1 #(
    .INIT(2'h1)) 
    io_isCurrentlyReading_OBUF_inst_i_1
       (.I0(io_SPISignals_SS_IBUF),
        .O(io_isCurrentlyReading_OBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  ShiftRegister shiftRegister
       (.clock_IBUF_BUFG(clock_IBUF_BUFG),
        .io_SPISignals_MOSI_IBUF(io_SPISignals_MOSI_IBUF),
        .io_currentByte_OBUF({io_currentByte_OBUF[7],NLW_shiftRegister_io_currentByte_OBUF_UNCONNECTED[6:1],io_currentByte_OBUF[0]}),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .registers_7_reg_0(edgeDetect_n_0),
        .reset_IBUF(reset_IBUF));
endmodule

module ShiftRegister
   (io_currentByte_OBUF,
    reset_IBUF,
    registers_7_reg_0,
    io_SPISignals_MOSI_IBUF,
    clock_IBUF_BUFG,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [7:0]io_currentByte_OBUF;
  input reset_IBUF;
  input registers_7_reg_0;
  input io_SPISignals_MOSI_IBUF;
  input clock_IBUF_BUFG;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire clock_IBUF_BUFG;
  wire io_SPISignals_MOSI_IBUF;
  wire [7:0]io_currentByte_OBUF;
  wire registers_1_reg_lopt_replica_1;
  wire registers_2_reg_lopt_replica_1;
  wire registers_3_reg_lopt_replica_1;
  wire registers_4_reg_lopt_replica_1;
  wire registers_5_reg_lopt_replica_1;
  wire registers_6_reg_lopt_replica_1;
  wire registers_7_reg_0;
  wire reset_IBUF;

  assign lopt = registers_1_reg_lopt_replica_1;
  assign lopt_1 = registers_2_reg_lopt_replica_1;
  assign lopt_2 = registers_3_reg_lopt_replica_1;
  assign lopt_3 = registers_4_reg_lopt_replica_1;
  assign lopt_4 = registers_5_reg_lopt_replica_1;
  assign lopt_5 = registers_6_reg_lopt_replica_1;
  FDRE #(
    .INIT(1'b0)) 
    registers_0_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_SPISignals_MOSI_IBUF),
        .Q(io_currentByte_OBUF[0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    registers_1_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[0]),
        .Q(io_currentByte_OBUF[1]),
        .R(reset_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_1_reg_lopt_replica
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[0]),
        .Q(registers_1_reg_lopt_replica_1),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    registers_2_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[1]),
        .Q(io_currentByte_OBUF[2]),
        .R(reset_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_2_reg_lopt_replica
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[1]),
        .Q(registers_2_reg_lopt_replica_1),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    registers_3_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[2]),
        .Q(io_currentByte_OBUF[3]),
        .R(reset_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_3_reg_lopt_replica
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[2]),
        .Q(registers_3_reg_lopt_replica_1),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    registers_4_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[3]),
        .Q(io_currentByte_OBUF[4]),
        .R(reset_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_4_reg_lopt_replica
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[3]),
        .Q(registers_4_reg_lopt_replica_1),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    registers_5_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[4]),
        .Q(io_currentByte_OBUF[5]),
        .R(reset_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_5_reg_lopt_replica
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[4]),
        .Q(registers_5_reg_lopt_replica_1),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    registers_6_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[5]),
        .Q(io_currentByte_OBUF[6]),
        .R(reset_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_6_reg_lopt_replica
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[5]),
        .Q(registers_6_reg_lopt_replica_1),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    registers_7_reg
       (.C(clock_IBUF_BUFG),
        .CE(registers_7_reg_0),
        .D(io_currentByte_OBUF[6]),
        .Q(io_currentByte_OBUF[7]),
        .R(reset_IBUF));
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
