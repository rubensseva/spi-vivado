-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Nov  9 10:29:08 2020
-- Host        : interestinghostname running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_Splitter_0_0_2/design_1_Splitter_0_0_sim_netlist.vhdl
-- Design      : design_1_Splitter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Splitter_0_0 is
  port (
    in1 : in STD_LOGIC;
    out1 : out STD_LOGIC;
    out2 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Splitter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Splitter_0_0 : entity is "design_1_Splitter_0_0,Splitter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Splitter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Splitter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Splitter_0_0 : entity is "Splitter,Vivado 2020.1";
end design_1_Splitter_0_0;

architecture STRUCTURE of design_1_Splitter_0_0 is
  signal \^in1\ : STD_LOGIC;
begin
  \^in1\ <= in1;
  out1 <= \^in1\;
  out2 <= \^in1\;
end STRUCTURE;
