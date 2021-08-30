`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 02:03:39 AM
// Design Name: 
// Module Name: accumulator_calculator_tb
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


module accumulator_calculator_tb();

    reg [31:0] value2;
    reg reset,clock;
    reg [1:0] op;
    wire [31:0] out;
    
    accum_calculator DUT(.value2(value2), .reset(reset), .clock(clock), .op(op), .out(out));
    
    initial begin
        
        reset = 1'b0;
        clock = 1'b0;
        
        repeat (3) #5 clock = ~clock;
        
        reset = 1'b1;
        
        repeat (3) #5 clock = ~clock;
        
        reset = 1'b0;
        
        forever #5 clock = ~clock;
        
    end
    
    initial begin
    
        value2 = 32'd0;
        op = 2'b00;
    
        #40
        
        value2 = 32'd10;
        op = 2'b00;
        
        #10
        
        value2 = 32'd5;
        op = 2'b01;
        
        #10
        
        value2 = 32'd30;
        op = 2'b10;
        
        
        #10
        
        value2 = 32'd10;
        op = 2'b11;
        
        #10
        
        $finish;

    end
        
endmodule
