`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 12:29:32 AM
// Design Name: 
// Module Name: Fibonacci
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


module Fibonacci(
    input reset,
    input clock,
    output reg [31:0] out
    );
    
    reg [31:0]tmp;    
    
    always@(posedge clock or posedge reset) begin
        
        if(reset) begin
            
            tmp <= 32'd1;
            out <= 32'd0;
        
        end
        
        else begin
            
            tmp <= tmp + out;
            out <= tmp;
        
        end
        
    end
        
endmodule
