// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
// Date        : Mon Nov  9 10:29:08 2020
// Host        : interestinghostname running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_Synchronizer_0_0_2/design_1_Synchronizer_0_0_stub.v
// Design      : design_1_Synchronizer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Synchronizer,Vivado 2020.1" *)
module design_1_Synchronizer_0_0(SPI_clock, clock, SPI_clock_synced)
/* synthesis syn_black_box black_box_pad_pin="SPI_clock,clock,SPI_clock_synced" */;
  input SPI_clock;
  input clock;
  output SPI_clock_synced;
endmodule
