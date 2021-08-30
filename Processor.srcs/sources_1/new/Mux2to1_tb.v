`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2021 11:51:24 PM
// Design Name: 
// Module Name: Mux2to1_tb
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


module Mux2to1_tb();

    reg a,b,sel;
    wire out;
    
    Mux2to1 DUT (.a(a), .b(b), .sel(sel), .out(out));
    
    initial begin
        
        a = 1'b0;
        b = 1'b0;
        sel = 1'b0;
        
        #10

        a = 1'b0;
        b = 1'b0;
        sel = 1'b1;
 
        #10       
        a = 1'b0;
        b = 1'b1;
        sel = 1'b0;
 
        #10   

        a = 1'b0;
        b = 1'b1;
        sel = 1'b1;
 
        #10   

        a = 1'b1;
        b = 1'b0;
        sel = 1'b0;
 
        #10   
        
        a = 1'b1;
        b = 1'b0;
        sel = 1'b1;
 
        #10           

        a = 1'b1;
        b = 1'b1;
        sel = 1'b0;
 
        #10   

        a = 1'b1;
        b = 1'b1;
        sel = 1'b1;
 
        #10
        
        $finish;
        
        end      
    
endmodule
