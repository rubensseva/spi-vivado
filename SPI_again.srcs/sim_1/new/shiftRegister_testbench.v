`timescale 1ns / 1ps

module shiftRegister_testbench;

reg        clock = 0;
reg        reset = 0;
reg        io_in = 0;
reg        io_enable = 0;

wire [7:0] io_out;

ShiftRegister uut (
    .clock(clock),
    .reset(reset),
    .io_in(io_in),
    .io_enable(io_enable),
    .io_out(io_out)
 );

initial
   begin 
     clock = 0; 
     reset = 0;
     io_enable = 0;
    
     # 100
     io_enable = 1;
     io_in = 1;
     # 100
     io_in = 0;
      # 100
     io_in = 1;
     # 100
     io_in = 0;

   end 
     
   always 
      #10  clock =  ! clock;
    

endmodule
