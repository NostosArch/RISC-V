`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2021 11:07:20 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input a_in,
    input b_in,
    input c_in,
    output sum,
    output c_out
    );
    
    wire AxorB;
    
    assign AxorB = a_in ^ b_in;
    
    assign sum = AxorB ^ c_in;
    
    assign c_out = (a_in & b_in) | (AxorB & c_in);
    
endmodule
