`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/07/2021 06:48:12 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
            input [31:0] src1_value, 
            input [31:0] src2_value, 
            input [31:0] pc,
            input [31:0] imm,
 
            output [31:0] result,
            output taken_br,
            
            
            input is_lui, is_auipc, is_jal, is_jalr,
            input is_lb, is_lh, is_lw, is_lbu, is_lhu, is_sb, is_sh, is_sw,
            input is_addi,
            input is_slti, is_sltiu,
            input is_xori, is_ori, is_andi, is_slli, is_srli, is_srai,
            input is_add, is_sub, is_sll, is_slt, is_sltu,
            input is_xor, is_srl, is_sra, is_or, is_and,            
            input is_beq, is_bne, is_blt, is_bge, is_bltu, is_bgeu                                  
            );
        
        
        wire [31:0] sltu_rslt, sltiu_rslt;
        wire [63:0] sext_src1, sra_rslt, srai_rslt;
        
        
        assign sltu_rslt = {31'b0, src1_value < src2_value};
        
        assign sltiu_rslt = {31'b0, src1_value < imm};
        
        assign sext_src1 = { {32{src1_value[31]}}, src1_value};
        
        assign sra_rslt = sext_src1 >> src2_value[4:0];
        
        assign srai_rslt = sext_src1 >> imm[4:0];
        
        assign taken_br =   
                            is_beq ? src1_value == src2_value:

                            is_bne ? src1_value != src2_value:

                            is_blt ? ((src1_value < src2_value) ^ (src1_value[31] != src2_value[31])):

                            is_bge ? ((src1_value >= src2_value) ^ (src1_value[31] != src2_value[31])):

                            is_bltu ? (src1_value < src2_value):

                            is_bgeu ? (src1_value >= src2_value): 1'b0;
    
    
    
        assign result = is_andi ?  (src1_value & imm) :
        
                        is_ori ? (src1_value | imm) :
        
                        is_xori ? (src1_value ^ imm) :
        
                        is_addi ? (src1_value + imm) :
        
                        is_slli ? (src1_value << imm[5:0]) :
        
                        is_srli ? (src1_value >> imm[5:0]) :
        
                        is_and ? (src1_value & src2_value) :
        
                        is_or ? (src1_value | src2_value) :
        
                        is_xor ? (src1_value ^ src2_value) :
        
                        is_add ? (src1_value + src2_value):
        
                        is_sub ? (src1_value - src2_value) :
        
                        is_sll ? (src1_value << src2_value[4:0]) :
        
                        is_srl ? (src1_value >> src2_value[4:0]) :
        
                        is_sltu ? sltu_rslt :
        
                        is_sltiu ? sltiu_rslt :
        
                        is_lui ? {imm[31:12],12'b0} :
        
                        is_auipc ? pc + imm :
        
                        is_jal ? pc + 32'd4 : 
        
                        is_jalr ? pc + 32'd4 :
        
                        is_slt ? ( ($signed(src1_value) < $signed(src2_value)) ?
                                    31'b1 : 31'b0 ) :
                        
                        is_slti ? ( ($signed(src1_value) < $signed(imm)) ?
                                        31'b1 : 31'b0 ) :

                        is_sra ? sra_rslt[31:0] :
                        
                        is_srai ? srai_rslt[31:0] : 
                        
                        (is_lb | is_lh | is_lw | is_lbu | is_lhu | is_sb | is_sh | is_sw) ? (src1_value + imm ) : 32'b0;
    
                
endmodule
