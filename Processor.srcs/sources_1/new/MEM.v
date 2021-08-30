`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/13/2021 04:16:02 PM
// Design Name: 
// Module Name: MEM
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


module DMEM(
            input clock,
            input is_load,
            input is_store,
            input [31:0] Dmem_address,
            output reg [31:0] ld_data
            
            );
           
            reg DMem
            
            initial begin 
            
            always@(posedge clock) begin
                
                ld_data <= 
            
endmodule
