-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Nov  9 10:29:08 2020
-- Host        : interestinghostname running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_Synchronizer_0_0_2/design_1_Synchronizer_0_0_sim_netlist.vhdl
-- Design      : design_1_Synchronizer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Synchronizer_0_0_Synchronizer is
  port (
    SPI_clock_synced : out STD_LOGIC;
    SPI_clock : in STD_LOGIC;
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_Synchronizer_0_0_Synchronizer : entity is "Synchronizer";
end design_1_Synchronizer_0_0_Synchronizer;

architecture STRUCTURE of design_1_Synchronizer_0_0_Synchronizer is
begin
\temp_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => SPI_clock,
      Q => SPI_clock_synced,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_Synchronizer_0_0 is
  port (
    SPI_clock : in STD_LOGIC;
    clock : in STD_LOGIC;
    SPI_clock_synced : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_Synchronizer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_Synchronizer_0_0 : entity is "design_1_Synchronizer_0_0,Synchronizer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_Synchronizer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_Synchronizer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_Synchronizer_0_0 : entity is "Synchronizer,Vivado 2020.1";
end design_1_Synchronizer_0_0;

architecture STRUCTURE of design_1_Synchronizer_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of SPI_clock : signal is "xilinx.com:signal:clock:1.0 SPI_clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of SPI_clock : signal is "XIL_INTERFACENAME SPI_clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_SPI_clock_0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
begin
inst: entity work.design_1_Synchronizer_0_0_Synchronizer
     port map (
      SPI_clock => SPI_clock,
      SPI_clock_synced => SPI_clock_synced,
      clock => clock
    );
end STRUCTURE;
