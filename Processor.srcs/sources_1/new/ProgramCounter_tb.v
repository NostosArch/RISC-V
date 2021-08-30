`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 02:26:26 PM
// Design Name: 
// Module Name: ProgramCounter_tb
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


module ProgramCounter_tb();
    
    reg reset,clock;
    wire [31:0]pc;
    
    ProgramCounter DUT(.reset(reset), .clock(clock), .pc(pc));
    
    initial begin
        
       // $display("Hello Hi");
        
        reset = 1'b1;
        clock = 1'b0;
        
        repeat(4) #5 clock = ~clock;
        
        reset = 1'b0;
        
        repeat(10) #5 clock = ~clock;
        
        $finish; 
        
    end

endmodule
