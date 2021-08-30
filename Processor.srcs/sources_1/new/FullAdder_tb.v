`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2021 11:10:55 PM
// Design Name: 
// Module Name: FullAdder_tb
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


module FullAdder_tb();
    
    reg a_in,b_in,c_in;
    wire sum,c_out;
    
    FullAdder DUT ( .a_in(a_in), .b_in(b_in), .c_in(c_in), .sum(sum), .c_out(c_out));
    
    initial begin
        
        a_in = 1'b0;
        b_in = 1'b0;
        c_in = 1'b0;
        
        #10
        
        a_in = 1'b0;
        b_in = 1'b0;
        c_in = 1'b1;
        
        #10

        a_in = 1'b0;
        b_in = 1'b1;
        c_in = 1'b0;
        
        #10
        
        a_in = 1'b0;
        b_in = 1'b1;
        c_in = 1'b1;
        
        #10

        a_in = 1'b1;
        b_in = 1'b0;
        c_in = 1'b0;
        
        #10

        a_in = 1'b1;
        b_in = 1'b0;
        c_in = 1'b1;
        
        #10
        
        a_in = 1'b1;
        b_in = 1'b1;
        c_in = 1'b0;
        
        #10

        a_in = 1'b1;
        b_in = 1'b1;
        c_in = 1'b1;
        
        #10
        
        $finish;  
        
        end              
                
endmodule
