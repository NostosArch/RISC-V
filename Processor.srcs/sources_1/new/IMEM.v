`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 04:46:41 PM
// Design Name: 
// Module Name: IMEM
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


module IMEM(
    input [31:0] address,
    output [31:0] inst
    );
    
    reg [7:0] mem [1024:0];
    
    initial begin
    
        $readmemh("ram.mem",mem);
    
    end
    
    assign inst = {mem[address],mem[address+1],mem[address+2],mem[address+3]};   
    
endmodule
