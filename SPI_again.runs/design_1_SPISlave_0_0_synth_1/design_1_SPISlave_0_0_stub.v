// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Nov  9 11:22:41 2020
// Host        : interestinghostname running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_SPISlave_0_0_stub.v
// Design      : design_1_SPISlave_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SPISlave,Vivado 2020.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clock, reset, io_SPISignals_SCLK, 
  io_SPISignals_MOSI, io_SPISignals_SS, io_currentByte, io_isCurrentlyReading)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,io_SPISignals_SCLK,io_SPISignals_MOSI,io_SPISignals_SS,io_currentByte[7:0],io_isCurrentlyReading" */;
  input clock;
  input reset;
  input io_SPISignals_SCLK;
  input io_SPISignals_MOSI;
  input io_SPISignals_SS;
  output [7:0]io_currentByte;
  output io_isCurrentlyReading;
endmodule
