
#
#
# ONLY SPI SLAVE
#
#

#set_property -dict {PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports {clock}];
##create_clock -add -name sys_clk_pin -period 10000.00 -waveform {0 5} [get_ports {clock}];
#create_clock -period 100 [get_ports {clock}];
#set_property -dict {PACKAGE_PIN D9  IOSTANDARD LVCMOS33} [get_ports {reset}];
##set_property -dict {PACKAGE_PIN D10  IOSTANDARD LVCMOS33} [get_ports {reset_0}];


### set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { ck_miso }]; #IO_L17N_T2_35 Sch=ck_miso
#set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { io_SPISignals_MOSI }]; #IO_L17P_T2_35 Sch=ck_mosi
#set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { io_SPISignals_SCLK }]; #IO_L18P_T2_35 Sch=ck_sck
#set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { io_SPISignals_SS }]; #IO_L16N_T2_35 Sch=ck_ss


### ChipKit Outer Digital Header
##set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[0]  }]; #IO_L16P_T2_CSI_B_14          Sch=ck_io[0]
##set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[1]  }]; #IO_L18P_T2_A12_D28_14        Sch=ck_io[1]
##set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[2]  }]; #IO_L8N_T1_D12_14             Sch=ck_io[2]
##set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[3]  }]; #IO_L19P_T3_A10_D26_14        Sch=ck_io[3]
##set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[4]  }]; #IO_L5P_T0_D06_14             Sch=ck_io[4]
##set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[5]  }]; #IO_L14P_T2_SRCC_14           Sch=ck_io[5]
##set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[6]  }]; #IO_L14N_T2_SRCC_14           Sch=ck_io[6]
##set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[7]  }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]

##set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[0] }]; #IO_L18N_T2_35 Sch=led0_b
###set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { RGB0_Green }]; #IO_L19N_T3_VREF_35 Sch=led0_g
###set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { RGB0_Red }]; #IO_L19P_T3_35 Sch=led0_r
##set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[1] }]; #IO_L20P_T3_35 Sch=led1_b
###set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { RGB1_Green }]; #IO_L21P_T3_DQS_35 Sch=led1_g
###set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { RGB1_Red }]; #IO_L20N_T3_35 Sch=led1_r
##set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[2] }]; #IO_L21N_T3_DQS_35 Sch=led2_b
###set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { RGB2_Green }]; #IO_L22N_T3_35 Sch=led2_g
###set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { RGB2_Red }]; #IO_L22P_T3_35 Sch=led2_r
##set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[3] }]; #IO_L23P_T3_35 Sch=led3_b
###set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { RGB3_Green }]; #IO_L24P_T3_35 Sch=led3_g
###set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { RGB3_Red }]; #IO_L23N_T3_35 Sch=led3_r
##set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[4] }]; #IO_L24N_T3_35 Sch=led[4]
##set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[5] }]; #IO_25_35 Sch=led[5]
##set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[6] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
##set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[7] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]


###Pmod Header JD ?
##set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[0] }];
##set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[1] }];
##set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[2] }];
##set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[3] }];
##set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[4] }];
##set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[5] }];
##set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[6] }];
##set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[7] }];

##Pmod Header JD
#set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[0] }]; #IO_L11N_T1_SRCC_35 Sch=jd[1]
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[1] }]; #IO_L12N_T1_MRCC_35 Sch=jd[2]
#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[2] }]; #IO_L13P_T2_MRCC_35 Sch=jd[3]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[3] }]; #IO_L13N_T2_MRCC_35 Sch=jd[4]
#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[4] }]; #IO_L14P_T2_SRCC_35 Sch=jd[7]
#set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[5] }]; #IO_L14N_T2_SRCC_35 Sch=jd[8]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[6] }]; #IO_L15P_T2_DQS_35 Sch=jd[9]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[7] }]; #IO_L15N_T2_DQS_35 Sch=jd[10]



##set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { ck_io8  }]; #IO_L11P_T1_SRCC_14           Sch=ck_io[8]
##set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { ck_io9  }]; #IO_L10P_T1_D14_14            Sch=ck_io[9]
##set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io10 }]; #IO_L18N_T2_A11_D27_14        Sch=ck_io[10]
##set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { ck_io11 }]; #IO_L17N_T2_A13_D29_14        Sch=ck_io[11]
##set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io12 }]; #IO_L12N_T1_MRCC_14           Sch=ck_io[12]
##set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { ck_io13 }]; #IO_L12P_T1_MRCC_14           Sch=ck_io[13]

#set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { io_isCurrentlyReading }];







#
#
#  WHOLE DESIGN
#
#

set_property -dict {PACKAGE_PIN E3  IOSTANDARD LVCMOS33} [get_ports {in1_0}];
#create_clock -add -name sys_clk_pin -period 10000.00 -waveform {0 5} [get_ports {clock}];
create_clock -period 100 [get_ports {in1_0}];
set_property -dict {PACKAGE_PIN D9  IOSTANDARD LVCMOS33} [get_ports {reset_0}];
#set_property -dict {PACKAGE_PIN D10  IOSTANDARD LVCMOS33} [get_ports {reset_0}];


## set_property -dict { PACKAGE_PIN G1    IOSTANDARD LVCMOS33 } [get_ports { ck_miso }]; #IO_L17N_T2_35 Sch=ck_miso
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { io_SPISignals_MOSI_0 }]; #IO_L17P_T2_35 Sch=ck_mosi
set_property -dict { PACKAGE_PIN F1    IOSTANDARD LVCMOS33 } [get_ports { SPI_clock_0 }]; #IO_L18P_T2_35 Sch=ck_sck
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { io_SPISignals_SS_0 }]; #IO_L16N_T2_35 Sch=ck_ss


## ChipKit Outer Digital Header
#set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[0]  }]; #IO_L16P_T2_CSI_B_14          Sch=ck_io[0]
#set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[1]  }]; #IO_L18P_T2_A12_D28_14        Sch=ck_io[1]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[2]  }]; #IO_L8N_T1_D12_14             Sch=ck_io[2]
#set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[3]  }]; #IO_L19P_T3_A10_D26_14        Sch=ck_io[3]
#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[4]  }]; #IO_L5P_T0_D06_14             Sch=ck_io[4]
#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[5]  }]; #IO_L14P_T2_SRCC_14           Sch=ck_io[5]
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[6]  }]; #IO_L14N_T2_SRCC_14           Sch=ck_io[6]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[7]  }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]

set_property -dict { PACKAGE_PIN E1    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[0] }]; #IO_L18N_T2_35 Sch=led0_b
#set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { RGB0_Green }]; #IO_L19N_T3_VREF_35 Sch=led0_g
#set_property -dict { PACKAGE_PIN G6    IOSTANDARD LVCMOS33 } [get_ports { RGB0_Red }]; #IO_L19P_T3_35 Sch=led0_r
set_property -dict { PACKAGE_PIN G4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[1] }]; #IO_L20P_T3_35 Sch=led1_b
#set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { RGB1_Green }]; #IO_L21P_T3_DQS_35 Sch=led1_g
#set_property -dict { PACKAGE_PIN G3    IOSTANDARD LVCMOS33 } [get_ports { RGB1_Red }]; #IO_L20N_T3_35 Sch=led1_r
set_property -dict { PACKAGE_PIN H4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[2] }]; #IO_L21N_T3_DQS_35 Sch=led2_b
#set_property -dict { PACKAGE_PIN J2    IOSTANDARD LVCMOS33 } [get_ports { RGB2_Green }]; #IO_L22N_T3_35 Sch=led2_g
#set_property -dict { PACKAGE_PIN J3    IOSTANDARD LVCMOS33 } [get_ports { RGB2_Red }]; #IO_L22P_T3_35 Sch=led2_r
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[3] }]; #IO_L23P_T3_35 Sch=led3_b
#set_property -dict { PACKAGE_PIN H6    IOSTANDARD LVCMOS33 } [get_ports { RGB3_Green }]; #IO_L24P_T3_35 Sch=led3_g
#set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { RGB3_Red }]; #IO_L23N_T3_35 Sch=led3_r
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[4] }]; #IO_L24N_T3_35 Sch=led[4]
set_property -dict { PACKAGE_PIN J5    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[5] }]; #IO_25_35 Sch=led[5]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[6] }]; #IO_L24P_T3_A01_D17_14 Sch=led[6]
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte_0[7] }]; #IO_L24N_T3_A00_D16_14 Sch=led[7]


##Pmod Header JD ?
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[0] }];
#set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[1] }];
#set_property -dict { PACKAGE_PIN A11   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[2] }];
#set_property -dict { PACKAGE_PIN D12   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[3] }];
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[4] }];
#set_property -dict { PACKAGE_PIN B18   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[5] }];
#set_property -dict { PACKAGE_PIN A18   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[6] }];
#set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[7] }];

##Pmod Header JD
#set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[0] }]; #IO_L11N_T1_SRCC_35 Sch=jd[1]
#set_property -dict { PACKAGE_PIN D3    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[1] }]; #IO_L12N_T1_MRCC_35 Sch=jd[2]
#set_property -dict { PACKAGE_PIN F4    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[2] }]; #IO_L13P_T2_MRCC_35 Sch=jd[3]
#set_property -dict { PACKAGE_PIN F3    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[3] }]; #IO_L13N_T2_MRCC_35 Sch=jd[4]
#set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[4] }]; #IO_L14P_T2_SRCC_35 Sch=jd[7]
#set_property -dict { PACKAGE_PIN D2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[5] }]; #IO_L14N_T2_SRCC_35 Sch=jd[8]
#set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[6] }]; #IO_L15P_T2_DQS_35 Sch=jd[9]
#set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { io_currentByte[7] }]; #IO_L15N_T2_DQS_35 Sch=jd[10]



#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { ck_io8  }]; #IO_L11P_T1_SRCC_14           Sch=ck_io[8]
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { ck_io9  }]; #IO_L10P_T1_D14_14            Sch=ck_io[9]
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io10 }]; #IO_L18N_T2_A11_D27_14        Sch=ck_io[10]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { ck_io11 }]; #IO_L17N_T2_A13_D29_14        Sch=ck_io[11]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io12 }]; #IO_L12N_T1_MRCC_14           Sch=ck_io[12]
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { ck_io13 }]; #IO_L12P_T1_MRCC_14           Sch=ck_io[13]

set_property -dict { PACKAGE_PIN E15   IOSTANDARD LVCMOS33 } [get_ports { io_isCurrentlyReading_0 }];