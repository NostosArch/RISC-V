`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2021 02:45:52 PM
// Design Name: 
// Module Name: JumpLogic
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


module JumpTarget(
                    input [31:0] src1_value, 
                    input [31:0] imm,
                    output [31:0] jump_target
                    
                    );
                    
                    assign jump_target = src1_value + imm;
                    
endmodule
