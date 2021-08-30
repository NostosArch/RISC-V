`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 01:54:10 AM
// Design Name: 
// Module Name: accumulator_calculator
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


module accum_calculator(
    input [31:0] value2,
    input clock,
    input reset,
    input [1:0] op,
    output reg [31:0] out
    );
    
    reg [31:0] value1;
    
    always@(value1,value2,op) begin
    
        case(op)
        
            2'b00 : out = value1 + value2;
            2'b01 : out = value1 - value2;
            2'b10 : out = value1 * value2;
            2'b11 : out = value1 / value2;
        
        endcase
    end
    
    always@(posedge clock or posedge reset) begin
    
        if(reset) begin
            
            value1 <= 32'b0;

        end
        
        else begin 
            
            value1 <= out;
    
        end

    end 
    
endmodule
