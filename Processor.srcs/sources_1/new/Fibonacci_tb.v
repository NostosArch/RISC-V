`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 12:43:35 AM
// Design Name: 
// Module Name: Fibonacci_tb
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


module Fibonacci_tb();

    reg clock,reset;
    wire [31:0]out;
    
    Fibonacci DUT(.clock(clock),.reset(reset),.out(out));
    
    initial begin
        
        clock = 1'b0;
        
        repeat(20) #10 clock = ~clock;
        
        $finish;
    end
    
    initial begin
        
        reset = 1'b0;
        #10
        reset = 1'b1;
        #40
        reset = 1'b0;        
    
    end

endmodule
