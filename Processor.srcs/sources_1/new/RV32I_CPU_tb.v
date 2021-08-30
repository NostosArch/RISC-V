`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 04:23:53 PM
// Design Name: 
// Module Name: RV32I_CPU_tb
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


module RV32I_CPU_tb();

    reg reset;
    reg clock;
    wire [2:0] count;
    wire [6:0] inst_count;
    
    RV32I_CPU DUT(.inst_count(inst_count),.clock(clock),.reset(reset), .count(count));
    
    initial begin
    
        clock = 1'b0;
        reset = 1'b0;
        
        repeat (4) #5 clock = ~clock;
        
        reset = 1'b1;
        
        repeat (4) #5  clock = ~clock;
        
        reset = 1'b0;
        
        repeat (620) #5 clock = ~clock;
        
        $finish;
    
    end

endmodule
