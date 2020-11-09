//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
//Date        : Mon Nov  9 10:28:21 2020
//Host        : interestinghostname running 64-bit unknown
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  wire in1_0;
  wire io_SPISignals_MOSI_0;
  wire io_SPISignals_SS_0;
  wire [7:0]io_currentByte_0;
  wire io_isCurrentlyReading_0;
  wire reset_0;

  design_1 design_1_i
       (.SPI_clock_0(SPI_clock_0),
        .in1_0(in1_0),
        .io_SPISignals_MOSI_0(io_SPISignals_MOSI_0),
        .io_SPISignals_SS_0(io_SPISignals_SS_0),
        .io_currentByte_0(io_currentByte_0),
        .io_isCurrentlyReading_0(io_isCurrentlyReading_0),
        .reset_0(reset_0));
endmodule
