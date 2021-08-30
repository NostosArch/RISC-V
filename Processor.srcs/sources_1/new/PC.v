`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 02:22:34 PM
// Design Name: 
// Module Name: PC
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


module ProgramCounter(
                        input [31:0] pc_current,
                        input taken_br,
                        input is_jal,
                        input is_jalr, 
                        input [31:0] branch_target,
                        input [31:0] jump_target, 
                        output reg [31:0] pc_next
                        
                        );

//    reg [31:0] pc_next;
    
        
    
//    always@(posedge clock) begin
                  
//            pc <= reset ? 0 : pc_next;
            
                 
//    end
    
    always@(*) begin
        
            pc_next =  (taken_br | is_jal) ? branch_target : 
                        is_jalr ? jump_target : pc_current + 4;
            
    end           
        
    
endmodule
