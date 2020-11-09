// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Nov  9 11:54:10 2020
// Host        : interestinghostname running 64-bit unknown
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/ruben/SPI_again/SPI_again.sim/sim_1/impl/func/xsim/AsDocumented_func_impl.v
// Design      : design_1_wrapper
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (SPI_clock_0,
    in1_0,
    io_SPISignals_MOSI_0,
    io_SPISignals_SS_0,
    io_currentByte_0,
    io_isCurrentlyReading_0,
    reset_0,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SPI_CLOCK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SPI_CLOCK_0, CLK_DOMAIN design_1_SPI_clock_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input SPI_clock_0;
  input in1_0;
  input io_SPISignals_MOSI_0;
  input io_SPISignals_SS_0;
  output [7:0]io_currentByte_0;
  output io_isCurrentlyReading_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire SPI_clock_0;
  wire Splitter_0_out1;
  wire Splitter_0_out2;
  wire Synchronizer_0_SPI_clock_synced;
  wire in1_0;
  wire io_SPISignals_MOSI_0;
  wire io_SPISignals_SS_0;
  wire [7:0]io_currentByte_0;
  wire io_isCurrentlyReading_0;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire reset_0;

  (* IMPORTED_FROM = "/home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_SPISlave_0_0_2/design_1_SPISlave_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "SPISlave,Vivado 2020.1" *) 
  design_1_SPISlave_0_0 SPISlave_0
       (.clock(Splitter_0_out1),
        .io_SPISignals_MOSI(io_SPISignals_MOSI_0),
        .io_SPISignals_SCLK(Synchronizer_0_SPI_clock_synced),
        .io_SPISignals_SS(io_SPISignals_SS_0),
        .io_currentByte(io_currentByte_0),
        .io_isCurrentlyReading(io_isCurrentlyReading_0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .reset(reset_0));
  (* IMPORTED_FROM = "/home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_Splitter_0_0_2/design_1_Splitter_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "Splitter,Vivado 2020.1" *) 
  design_1_Splitter_0_0 Splitter_0
       (.in1(in1_0),
        .out1(Splitter_0_out1),
        .out2(Splitter_0_out2));
  (* IMPORTED_FROM = "/home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_Synchronizer_0_0_2/design_1_Synchronizer_0_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  (* X_CORE_INFO = "Synchronizer,Vivado 2020.1" *) 
  design_1_Synchronizer_0_0 Synchronizer_0
       (.SPI_clock(SPI_clock_0),
        .SPI_clock_synced(Synchronizer_0_SPI_clock_synced),
        .clock(Splitter_0_out2));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_SPISlave_0_0,SPISlave,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "SPISlave,Vivado 2020.1" *) 
module design_1_SPISlave_0_0
   (clock,
    reset,
    io_SPISignals_SCLK,
    io_SPISignals_MOSI,
    io_SPISignals_SS,
    io_currentByte,
    io_isCurrentlyReading,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input io_SPISignals_SCLK;
  input io_SPISignals_MOSI;
  input io_SPISignals_SS;
  output [7:0]io_currentByte;
  output io_isCurrentlyReading;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire clock;
  wire io_SPISignals_MOSI;
  wire io_SPISignals_SCLK;
  wire io_SPISignals_SS;
  wire [7:0]io_currentByte;
  wire io_isCurrentlyReading;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire reset;

  design_1_SPISlave_0_0_SPISlave inst
       (.clock(clock),
        .io_SPISignals_MOSI(io_SPISignals_MOSI),
        .io_SPISignals_SCLK(io_SPISignals_SCLK),
        .io_SPISignals_SS(io_SPISignals_SS),
        .io_currentByte(io_currentByte),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .reset(reset));
  LUT1 #(
    .INIT(2'h1)) 
    io_isCurrentlyReading_INST_0
       (.I0(io_SPISignals_SS),
        .O(io_isCurrentlyReading));
endmodule

(* ORIG_REF_NAME = "EdgeDetect" *) 
module design_1_SPISlave_0_0_EdgeDetect
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

  LUT3 #(
    .INIT(8'h02)) 
    registers_7_i_1
       (.I0(stateReg),
        .I1(io_SPISignals_SCLK),
        .I2(io_SPISignals_SS),
        .O(stateReg_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    stateReg_i_1
       (.I0(io_SPISignals_SCLK),
        .I1(reset),
        .O(stateReg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    stateReg_reg
       (.C(clock),
        .CE(1'b1),
        .D(stateReg_i_1_n_0),
        .Q(stateReg),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "SPISlave" *) 
module design_1_SPISlave_0_0_SPISlave
   (io_currentByte,
    reset,
    io_SPISignals_MOSI,
    clock,
    io_SPISignals_SCLK,
    io_SPISignals_SS,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [7:0]io_currentByte;
  input reset;
  input io_SPISignals_MOSI;
  input clock;
  input io_SPISignals_SCLK;
  input io_SPISignals_SS;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire clock;
  wire edgeDetect_n_0;
  wire io_SPISignals_MOSI;
  wire io_SPISignals_SCLK;
  wire io_SPISignals_SS;
  wire [7:0]io_currentByte;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire reset;

  design_1_SPISlave_0_0_EdgeDetect edgeDetect
       (.clock(clock),
        .io_SPISignals_SCLK(io_SPISignals_SCLK),
        .io_SPISignals_SS(io_SPISignals_SS),
        .reset(reset),
        .stateReg_reg_0(edgeDetect_n_0));
  design_1_SPISlave_0_0_ShiftRegister shiftRegister
       (.clock(clock),
        .io_SPISignals_MOSI(io_SPISignals_MOSI),
        .io_currentByte(io_currentByte),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .registers_7_reg_0(edgeDetect_n_0),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "ShiftRegister" *) 
module design_1_SPISlave_0_0_ShiftRegister
   (io_currentByte,
    reset,
    registers_7_reg_0,
    io_SPISignals_MOSI,
    clock,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [7:0]io_currentByte;
  input reset;
  input registers_7_reg_0;
  input io_SPISignals_MOSI;
  input clock;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire clock;
  wire io_SPISignals_MOSI;
  wire [7:0]io_currentByte;
  wire registers_1_reg_lopt_replica_1;
  wire registers_2_reg_lopt_replica_1;
  wire registers_3_reg_lopt_replica_1;
  wire registers_4_reg_lopt_replica_1;
  wire registers_5_reg_lopt_replica_1;
  wire registers_6_reg_lopt_replica_1;
  wire registers_7_reg_0;
  wire reset;

  assign lopt = registers_1_reg_lopt_replica_1;
  assign lopt_1 = registers_2_reg_lopt_replica_1;
  assign lopt_2 = registers_3_reg_lopt_replica_1;
  assign lopt_3 = registers_4_reg_lopt_replica_1;
  assign lopt_4 = registers_5_reg_lopt_replica_1;
  assign lopt_5 = registers_6_reg_lopt_replica_1;
  FDRE #(
    .INIT(1'b0)) 
    registers_0_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_SPISignals_MOSI),
        .Q(io_currentByte[0]),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    registers_1_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[0]),
        .Q(io_currentByte[1]),
        .R(reset));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_1_reg_lopt_replica
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[0]),
        .Q(registers_1_reg_lopt_replica_1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    registers_2_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[1]),
        .Q(io_currentByte[2]),
        .R(reset));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_2_reg_lopt_replica
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[1]),
        .Q(registers_2_reg_lopt_replica_1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    registers_3_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[2]),
        .Q(io_currentByte[3]),
        .R(reset));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_3_reg_lopt_replica
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[2]),
        .Q(registers_3_reg_lopt_replica_1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    registers_4_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[3]),
        .Q(io_currentByte[4]),
        .R(reset));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_4_reg_lopt_replica
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[3]),
        .Q(registers_4_reg_lopt_replica_1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    registers_5_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[4]),
        .Q(io_currentByte[5]),
        .R(reset));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_5_reg_lopt_replica
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[4]),
        .Q(registers_5_reg_lopt_replica_1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    registers_6_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[5]),
        .Q(io_currentByte[6]),
        .R(reset));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    registers_6_reg_lopt_replica
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[5]),
        .Q(registers_6_reg_lopt_replica_1),
        .R(reset));
  FDRE #(
    .INIT(1'b0)) 
    registers_7_reg
       (.C(clock),
        .CE(registers_7_reg_0),
        .D(io_currentByte[6]),
        .Q(io_currentByte[7]),
        .R(reset));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Splitter_0_0,Splitter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Splitter,Vivado 2020.1" *) 
module design_1_Splitter_0_0
   (in1,
    out1,
    out2);
  input in1;
  output out1;
  output out2;

  wire in1;

  assign out1 = in1;
  assign out2 = in1;
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Synchronizer_0_0,Synchronizer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "Synchronizer,Vivado 2020.1" *) 
module design_1_Synchronizer_0_0
   (SPI_clock,
    clock,
    SPI_clock_synced);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 SPI_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SPI_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_SPI_clock_0, INSERT_VIP 0" *) input SPI_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clock;
  output SPI_clock_synced;

  wire SPI_clock;
  wire SPI_clock_synced;
  wire clock;

  design_1_Synchronizer_0_0_Synchronizer inst
       (.SPI_clock(SPI_clock),
        .SPI_clock_synced(SPI_clock_synced),
        .clock(clock));
endmodule

(* ORIG_REF_NAME = "Synchronizer" *) 
module design_1_Synchronizer_0_0_Synchronizer
   (SPI_clock_synced,
    SPI_clock,
    clock);
  output SPI_clock_synced;
  input SPI_clock;
  input clock;

  wire SPI_clock;
  wire SPI_clock_synced;
  wire clock;

  FDRE #(
    .INIT(1'b0)) 
    \temp_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(SPI_clock),
        .Q(SPI_clock_synced),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "dc22c786" *) 
(* NotValidForBitStream *)
module design_1_wrapper
   (SPI_clock_0,
    in1_0,
    io_SPISignals_MOSI_0,
    io_SPISignals_SS_0,
    io_currentByte_0,
    io_isCurrentlyReading_0,
    reset_0);
  input SPI_clock_0;
  input in1_0;
  input io_SPISignals_MOSI_0;
  input io_SPISignals_SS_0;
  output [7:0]io_currentByte_0;
  output io_isCurrentlyReading_0;
  input reset_0;

  wire SPI_clock_0;
  wire SPI_clock_0_IBUF;
  wire in1_0;
  wire in1_0_IBUF;
  wire io_SPISignals_MOSI_0;
  wire io_SPISignals_MOSI_0_IBUF;
  wire io_SPISignals_SS_0;
  wire io_SPISignals_SS_0_IBUF;
  wire [7:0]io_currentByte_0;
  wire [7:0]io_currentByte_0_OBUF;
  wire io_isCurrentlyReading_0;
  wire io_isCurrentlyReading_0_OBUF;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire reset_0;
  wire reset_0_IBUF;
  wire [6:1]NLW_design_1_i_io_currentByte_0_UNCONNECTED;

  IBUF SPI_clock_0_IBUF_inst
       (.I(SPI_clock_0),
        .O(SPI_clock_0_IBUF));
  (* HW_HANDOFF = "design_1.hwdef" *) 
  design_1 design_1_i
       (.SPI_clock_0(SPI_clock_0_IBUF),
        .in1_0(in1_0_IBUF),
        .io_SPISignals_MOSI_0(io_SPISignals_MOSI_0_IBUF),
        .io_SPISignals_SS_0(io_SPISignals_SS_0_IBUF),
        .io_currentByte_0({io_currentByte_0_OBUF[7],NLW_design_1_i_io_currentByte_0_UNCONNECTED[6:1],io_currentByte_0_OBUF[0]}),
        .io_isCurrentlyReading_0(io_isCurrentlyReading_0_OBUF),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .reset_0(reset_0_IBUF));
  IBUF in1_0_IBUF_inst
       (.I(in1_0),
        .O(in1_0_IBUF));
  IBUF io_SPISignals_MOSI_0_IBUF_inst
       (.I(io_SPISignals_MOSI_0),
        .O(io_SPISignals_MOSI_0_IBUF));
  IBUF io_SPISignals_SS_0_IBUF_inst
       (.I(io_SPISignals_SS_0),
        .O(io_SPISignals_SS_0_IBUF));
  OBUF \io_currentByte_0_OBUF[0]_inst 
       (.I(io_currentByte_0_OBUF[0]),
        .O(io_currentByte_0[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_0_OBUF[1]_inst 
       (.I(lopt),
        .O(io_currentByte_0[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_0_OBUF[2]_inst 
       (.I(lopt_1),
        .O(io_currentByte_0[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_0_OBUF[3]_inst 
       (.I(lopt_2),
        .O(io_currentByte_0[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_0_OBUF[4]_inst 
       (.I(lopt_3),
        .O(io_currentByte_0[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_0_OBUF[5]_inst 
       (.I(lopt_4),
        .O(io_currentByte_0[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \io_currentByte_0_OBUF[6]_inst 
       (.I(lopt_5),
        .O(io_currentByte_0[6]));
  OBUF \io_currentByte_0_OBUF[7]_inst 
       (.I(io_currentByte_0_OBUF[7]),
        .O(io_currentByte_0[7]));
  OBUF io_isCurrentlyReading_0_OBUF_inst
       (.I(io_isCurrentlyReading_0_OBUF),
        .O(io_isCurrentlyReading_0));
  IBUF reset_0_IBUF_inst
       (.I(reset_0),
        .O(reset_0_IBUF));
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
