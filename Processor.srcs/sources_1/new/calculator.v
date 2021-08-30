`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2021 11:59:10 PM
// Design Name: 
// Module Name: calculator
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


module calculator(
    input [31:0] a,
    input [31:0] b,
    input [1:0] sel,
    output reg [31:0] out
    );
    
    always @(a,b,sel) begin
        case(sel)
        
            2'b00 : out = a + b;
            2'b01 : out = a - b;
            2'b10 : out = a * b;
            2'b11 : out = a / b;
    
        endcase 
    end
            
endmodule
