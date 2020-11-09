`timescale 1us / 1ps

module testbench;

reg         clock = 0;
reg         reset = 0;
reg         io_SPISignals_SCLK = 0;
reg         io_SPISignals_MOSI = 0;
reg         io_SPISignals_SS = 0;
wire [7:0]  io_currentByte;
wire        io_isCurrentlyReading;


SPISlave uut (
    .clock(clock),
    .reset(reset),
    .io_SPISignals_SCLK(io_SPISignals_SCLK),
    .io_SPISignals_MOSI(io_SPISignals_MOSI),
    .io_SPISignals_SS(io_SPISignals_SS),
    .io_currentByte(io_currentByte),
    .io_isCurrentlyReading(io_isCurrentlyReading)
 );

initial
   begin 
     clock = 0; 
     reset = 0;
     io_SPISignals_SCLK = 0;
     io_SPISignals_MOSI = 0;
     io_SPISignals_SS = 1;
  
     #10
     io_SPISignals_SS = 0;
     io_SPISignals_MOSI = 0;
     
     #10
     io_SPISignals_MOSI = 0;
     
     #20
     io_SPISignals_MOSI = 1;
     
     #10
     io_SPISignals_MOSI = 0;
     
     #50
     io_SPISignals_SS = 1;
     
     if (io_currentByte !== 32) $display("Failed! Result not equal 20");
     
   end 
     
   always 
      #1  clock =  ! clock;
   always
      #5 io_SPISignals_SCLK = ! io_SPISignals_SCLK;
      
    
endmodule
