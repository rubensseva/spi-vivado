-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Nov  9 10:29:08 2020
-- Host        : interestinghostname running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_Splitter_0_0_2/design_1_Splitter_0_0_stub.vhdl
-- Design      : design_1_Splitter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_Splitter_0_0 is
  Port ( 
    in1 : in STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC
  );

end design_1_Splitter_0_0;

architecture stub of design_1_Splitter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in1,out1,out2";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Splitter,Vivado 2020.1";
begin
end;
