`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2021 03:59:11 PM
// Design Name: 
// Module Name: RegisterFile
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


module RegisterFile(
    
    input clock,
    input reset,
    input wr_en,
    input [4:0] wr_index,
    input [31:0] wr_data,
    input [4:0] rd_index1,
    input [4:0] rd_index2,
    output [31:0] rd_data1,
    output [31:0] rd_data2
    
    );
    
    
    reg [31:0] regfile [31:0];
    
    always@(posedge clock) begin
    
        if(reset) begin
            
            regfile[0] <= 0;
            regfile[1] <= 0;
            regfile[2] <= 0;
            regfile[3] <= 0;
            regfile[4] <= 0;
            regfile[5] <= 0;
            regfile[6] <= 0;
            regfile[7] <= 0;
            regfile[8] <= 0;
            regfile[9] <= 0;
            regfile[10] <= 0;
            regfile[11] <= 0;
            regfile[12] <= 0;
            regfile[13] <= 0;
            regfile[14] <= 0;
            regfile[15] <= 0;
            regfile[16] <= 0;
            regfile[17] <= 0;
            regfile[18] <= 0;
            regfile[19] <= 0;
            regfile[20] <= 0;
            regfile[21] <= 0;
            regfile[22] <= 0;
            regfile[23] <= 0;
            regfile[24] <= 0;
            regfile[25] <= 0;
            regfile[26] <= 0;
            regfile[27] <= 0;
            regfile[28] <= 0;
            regfile[29] <= 0;
            regfile[30] <= 0;
            regfile[31] <= 0;
            
        end 
        
        else begin
        
            if(wr_en & wr_index!=0) begin
            
                regfile[wr_index] <= wr_data;
            
            end
        
        end
                
    end
    
        
    assign rd_data1 = regfile[rd_index1];

    assign rd_data2 = regfile[rd_index2];
    
endmodule
