`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/12/2021 07:40:09 PM
// Design Name: 
// Module Name: BranchLogic
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


module BranchTarget(
    input [31:0] pc,
    input [31:0] imm,
    output [31:0] branch_target
    );
    
    assign branch_target = pc + imm;  
                                         
endmodule
