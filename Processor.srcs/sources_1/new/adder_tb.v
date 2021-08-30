`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2021 09:55:51 PM
// Design Name: 
// Module Name: adder_tb
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


module adder_tb();

    reg [31:0]a_i,b_i;
    wire [31:0]sum_o;
    wire carry_o;
    
    Adder DUT(.a_in(a_i),.b_in(b_i),.sum_o(sum_o),.carry_o(carry_o));
    
    /*initial begin
    
        a_i = 32'h00000023;
        b_i = 32'h00003400;
        
        #10
        
        a_i = 32'hFFFFFFFF;
        b_i = 32'hFFFFFFFF;
        
        #10
        
        $finish;
        
    end*/
        
endmodule
