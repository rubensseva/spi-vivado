`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/09/2020 10:07:18 AM
// Design Name: 
// Module Name: Splitter
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Splitter(
    input in1,
    
    output out1,
    output out2
    );
    
    assign out1 = in1;
    assign out2 = in1;
endmodule
