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
            input is_lb, is_lh, is_lw, is_lbu, is_lhu, is_sb, is_sh, is_sw,
            input [31:0] src2_value,
            input [31:0] Dmem_address,
            output  [31:0] ld_data
            
            );
           
            reg [31:0] data_mem [31:0];
            
            initial begin 
               
               $readmemh("data.mem",data_mem);
            
            end                
/*            
            always@(posedge clock) begin
            
            if(is_sb | is_sh | is_sw) begin
             
                data_mem[Dmem_address] <= src2_value[7:0];
                
                end 
                                        
            end

            always@(posedge clock) begin
            
            if(is_sh | is_sw) begin
            
                data_mem[Dmem_address+1] <= src2_value[15:8];
                
                end
                                        
            end

            always@(posedge clock) begin
            
            if(is_sw) begin
            
                data_mem[Dmem_address+2] <= src2_value[23:16];
                data_mem[Dmem_address+3] <= src2_value[31:24];                        
                
                end
            
            end
*/

            always@(posedge clock) begin
            
            if(is_sb | is_sh | is_sw) begin
                data_mem[Dmem_address] <= is_sb ? { {24{1'b0}}, src2_value[7:0]}:
                                            is_sh ? { {16{1'b0}}, src2_value[15:0]}:
                                            src2_value; 
                
                end
                                        
            end
            
/*            assign ld_data = is_lb ? { {24{1'b0}}, data_mem[Dmem_address]} : 
                             is_lbu ? { {24{data_mem[Dmem_address][7]}}, data_mem[Dmem_address]} :
                             is_lhu ? { {16{data_mem[Dmem_address+1][7]}}, data_mem[Dmem_address+1], data_mem[Dmem_address]} :
                             is_lh ? { {16{1'b0}}, data_mem[Dmem_address+1], data_mem[Dmem_address]} :
                             is_lw ? { data_mem[Dmem_address+3],data_mem[Dmem_address+2],data_mem[Dmem_address+1],data_mem[Dmem_address]} :
                           32'b0;                         
*/


            assign ld_data = is_lb ? { {24{1'b0}}, data_mem[Dmem_address][7:0]} : 
                             is_lbu ? { {24{data_mem[Dmem_address][7]}}, data_mem[Dmem_address][7:0]} :
                             is_lhu ? { {16{data_mem[Dmem_address][15]}},data_mem[Dmem_address][15:0]} :
                             is_lh ? { {16{1'b0}}, data_mem[Dmem_address][15:0]} :
                             is_lw ? { data_mem[Dmem_address]} :
                             32'b0;  
endmodule
