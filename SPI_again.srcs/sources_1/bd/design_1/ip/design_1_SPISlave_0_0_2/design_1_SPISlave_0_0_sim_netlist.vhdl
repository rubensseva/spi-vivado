-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (lin64) Build 2902540 Wed May 27 19:54:35 MDT 2020
-- Date        : Mon Nov  9 11:22:41 2020
-- Host        : interestinghostname running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/ruben/SPI_again/SPI_again.srcs/sources_1/bd/design_1/ip/design_1_SPISlave_0_0_2/design_1_SPISlave_0_0_sim_netlist.vhdl
-- Design      : design_1_SPISlave_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPISlave_0_0_EdgeDetect is
  port (
    stateReg_reg_0 : out STD_LOGIC;
    clock : in STD_LOGIC;
    io_SPISignals_SCLK : in STD_LOGIC;
    reset : in STD_LOGIC;
    io_SPISignals_SS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPISlave_0_0_EdgeDetect : entity is "EdgeDetect";
end design_1_SPISlave_0_0_EdgeDetect;

architecture STRUCTURE of design_1_SPISlave_0_0_EdgeDetect is
  signal stateReg : STD_LOGIC;
  signal stateReg_i_1_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of registers_7_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of stateReg_i_1 : label is "soft_lutpair0";
begin
registers_7_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => stateReg,
      I1 => io_SPISignals_SCLK,
      I2 => io_SPISignals_SS,
      O => stateReg_reg_0
    );
stateReg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => io_SPISignals_SCLK,
      I1 => reset,
      O => stateReg_i_1_n_0
    );
stateReg_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => stateReg_i_1_n_0,
      Q => stateReg,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPISlave_0_0_ShiftRegister is
  port (
    io_currentByte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    registers_7_reg_0 : in STD_LOGIC;
    io_SPISignals_MOSI : in STD_LOGIC;
    clock : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPISlave_0_0_ShiftRegister : entity is "ShiftRegister";
end design_1_SPISlave_0_0_ShiftRegister;

architecture STRUCTURE of design_1_SPISlave_0_0_ShiftRegister is
  signal \^io_currentbyte\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  io_currentByte(7 downto 0) <= \^io_currentbyte\(7 downto 0);
registers_0_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => io_SPISignals_MOSI,
      Q => \^io_currentbyte\(0),
      R => reset
    );
registers_1_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => \^io_currentbyte\(0),
      Q => \^io_currentbyte\(1),
      R => reset
    );
registers_2_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => \^io_currentbyte\(1),
      Q => \^io_currentbyte\(2),
      R => reset
    );
registers_3_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => \^io_currentbyte\(2),
      Q => \^io_currentbyte\(3),
      R => reset
    );
registers_4_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => \^io_currentbyte\(3),
      Q => \^io_currentbyte\(4),
      R => reset
    );
registers_5_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => \^io_currentbyte\(4),
      Q => \^io_currentbyte\(5),
      R => reset
    );
registers_6_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => \^io_currentbyte\(5),
      Q => \^io_currentbyte\(6),
      R => reset
    );
registers_7_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => registers_7_reg_0,
      D => \^io_currentbyte\(6),
      Q => \^io_currentbyte\(7),
      R => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPISlave_0_0_SPISlave is
  port (
    io_currentByte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    io_SPISignals_MOSI : in STD_LOGIC;
    clock : in STD_LOGIC;
    io_SPISignals_SCLK : in STD_LOGIC;
    io_SPISignals_SS : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_SPISlave_0_0_SPISlave : entity is "SPISlave";
end design_1_SPISlave_0_0_SPISlave;

architecture STRUCTURE of design_1_SPISlave_0_0_SPISlave is
  signal edgeDetect_n_0 : STD_LOGIC;
begin
edgeDetect: entity work.design_1_SPISlave_0_0_EdgeDetect
     port map (
      clock => clock,
      io_SPISignals_SCLK => io_SPISignals_SCLK,
      io_SPISignals_SS => io_SPISignals_SS,
      reset => reset,
      stateReg_reg_0 => edgeDetect_n_0
    );
shiftRegister: entity work.design_1_SPISlave_0_0_ShiftRegister
     port map (
      clock => clock,
      io_SPISignals_MOSI => io_SPISignals_MOSI,
      io_currentByte(7 downto 0) => io_currentByte(7 downto 0),
      registers_7_reg_0 => edgeDetect_n_0,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_SPISlave_0_0 is
  port (
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    io_SPISignals_SCLK : in STD_LOGIC;
    io_SPISignals_MOSI : in STD_LOGIC;
    io_SPISignals_SS : in STD_LOGIC;
    io_currentByte : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_isCurrentlyReading : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_SPISlave_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_SPISlave_0_0 : entity is "design_1_SPISlave_0_0,SPISlave,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_SPISlave_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_SPISlave_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_SPISlave_0_0 : entity is "SPISlave,Vivado 2020.1";
end design_1_SPISlave_0_0;

architecture STRUCTURE of design_1_SPISlave_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME clock, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_SPISlave_0_0_SPISlave
     port map (
      clock => clock,
      io_SPISignals_MOSI => io_SPISignals_MOSI,
      io_SPISignals_SCLK => io_SPISignals_SCLK,
      io_SPISignals_SS => io_SPISignals_SS,
      io_currentByte(7 downto 0) => io_currentByte(7 downto 0),
      reset => reset
    );
io_isCurrentlyReading_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => io_SPISignals_SS,
      O => io_isCurrentlyReading
    );
end STRUCTURE;
