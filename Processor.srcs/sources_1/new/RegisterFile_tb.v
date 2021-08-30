`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2021 04:44:03 PM
// Design Name: 
// Module Name: RegisterFile_tb
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


module RegisterFile_tb();

    reg clock;
    reg reset;
    reg wr_en;
    reg [4:0] wr_index;
    reg [31:0] wr_data;
    reg rd_en1;
    reg [4:0] rd_index1;
    reg rd_en2;
    reg [4:0] rd_index2;
    wire [31:0] rd_data1;
    wire [31:0] rd_data2;
    
  /* RegisterFile DUT(   .clock(clock),
                        .reset(reset),
                        .wr_en(wr_en),
                        .wr_index(wr_index),
                        .wr_data(wr_data),
                        .rd_en1(rd_en1),
                        .rd_index1(rd_index1),
                        .rd_en2(rd_en2),
                        .rd_index2(rd_index2),
                        .rd_data1(rd_data1),
                        .rd_data2(rd_data2)
                        
                        );*/
    
    initial begin
        
        clock = 1'b0;
        reset = 1'b0;
        wr_en = 1'b0;
        rd_en1 = 1'b0;
        rd_en2 = 1'b0;
        
        repeat(4) #5 clock = ~clock;
        
        reset = 1'b1;
        
        repeat(4) #5 clock = ~clock;
        
        reset = 1'b0;
        
        forever #5 clock = ~clock;

    end
    
    initial begin
        
        #40
        
        wr_en = 1'b1;
        
        wr_index = 5'b00001;
        
        wr_data = 32'hABCDEF01;
        
        #10
        
        wr_index = 5'b00010;
        
        wr_data = 32'hBCDEFA01;        
        
        #10
        
        wr_index = 5'b00011;
        
        wr_data = 32'hCDEFAB01;        
                
        #10
        
        wr_index = 1'b0;
        
        rd_en1 = 1'b1;
        
        rd_index1 = 5'b00010;
        
        #10
        
        rd_en2 = 1'b1;
        
        rd_index2 = 5'b00010;
        
        #10
        
        rd_en1 = 1'b0;
        
        rd_index2 = 5'b00011;        
        
        #10

        rd_index1 = 5'b00001; 
        
        #10
        
        rd_en1 = 1'b1;
        
        #20;
        
        $finish;               
                
    end 

endmodule
