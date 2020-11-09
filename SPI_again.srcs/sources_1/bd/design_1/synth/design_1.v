//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Nov  9 10:28:21 2020
//Host        : interestinghostname running 64-bit unknown
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_board_cnt=10,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (SPI_clock_0,
    in1_0,
    io_SPISignals_MOSI_0,
    io_SPISignals_SS_0,
    io_currentByte_0,
    io_isCurrentlyReading_0,
    reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SPI_CLOCK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SPI_CLOCK_0, CLK_DOMAIN design_1_SPI_clock_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input SPI_clock_0;
  input in1_0;
  input io_SPISignals_MOSI_0;
  input io_SPISignals_SS_0;
  output [7:0]io_currentByte_0;
  output io_isCurrentlyReading_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;

  wire [7:0]SPISlave_0_io_currentByte;
  wire SPISlave_0_io_isCurrentlyReading;
  wire SPI_clock_0_1;
  wire Splitter_0_out1;
  wire Splitter_0_out2;
  wire Synchronizer_0_SPI_clock_synced;
  wire in1_0_1;
  wire io_SPISignals_MOSI_0_1;
  wire io_SPISignals_SS_0_1;
  wire reset_0_1;

  assign SPI_clock_0_1 = SPI_clock_0;
  assign in1_0_1 = in1_0;
  assign io_SPISignals_MOSI_0_1 = io_SPISignals_MOSI_0;
  assign io_SPISignals_SS_0_1 = io_SPISignals_SS_0;
  assign io_currentByte_0[7:0] = SPISlave_0_io_currentByte;
  assign io_isCurrentlyReading_0 = SPISlave_0_io_isCurrentlyReading;
  assign reset_0_1 = reset_0;
  design_1_SPISlave_0_0 SPISlave_0
       (.clock(Splitter_0_out1),
        .io_SPISignals_MOSI(io_SPISignals_MOSI_0_1),
        .io_SPISignals_SCLK(Synchronizer_0_SPI_clock_synced),
        .io_SPISignals_SS(io_SPISignals_SS_0_1),
        .io_currentByte(SPISlave_0_io_currentByte),
        .io_isCurrentlyReading(SPISlave_0_io_isCurrentlyReading),
        .reset(reset_0_1));
  design_1_Splitter_0_0 Splitter_0
       (.in1(in1_0_1),
        .out1(Splitter_0_out1),
        .out2(Splitter_0_out2));
  design_1_Synchronizer_0_0 Synchronizer_0
       (.SPI_clock(SPI_clock_0_1),
        .SPI_clock_synced(Synchronizer_0_SPI_clock_synced),
        .clock(Splitter_0_out2));
endmodule
