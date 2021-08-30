`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/02/2021 07:00:13 PM
// Design Name: 
// Module Name: decode_tb
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


module decode_tb();

    reg [31:0]inst;
    wire [6:0] funct7;
    wire [4:0] rs2, rs1, rd;
    wire [6:0] opcode;
    wire [2:0] funct3;
    wire [31:0] imm;
    wire funct7_valid,rs2_valid,rs1_valid,funct3_valid,rd_valid,imm_valid; 

    wire is_lui, is_auipc, is_jal, is_jalr;
    wire is_beq, is_bne, is_blt, is_bge, is_bltu, is_bgeu;
    wire is_lb, is_lh, is_lw, is_lbu, is_lhu;
    wire is_sb, is_sh, is_sw;
    wire is_addi;
    wire is_slti, is_sltiu;
    wire is_xori, is_ori, is_andi, is_slli, is_srli, is_srai;
    wire is_add, is_sub, is_sll, is_slt, is_sltu;
    wire is_xor, is_srl, is_sra, is_or, is_and;    
       
    decode DUT(.inst(inst),
                .funct7(funct7),
                .rs2(rs2),
                .rs1(rs1),
                .rd(rd),
                .opcode(opcode),
                .funct3(funct3),
                .imm(imm),
                .funct7_valid(funct7_valid),
                .rs2_valid(rs2_valid),
                .rs1_valid(rs1_valid),
                .funct3_valid(funct3_valid),
                .rd_valid(rd_valid),
                .imm_valid(imm_valid),
                .is_lui(is_lui), 
                .is_auipc(is_auipc), 
                .is_jal(is_jal), 
                .is_jalr(is_jalr),
                .is_beq(is_beq), 
                .is_bne(is_bne), 
                .is_blt(is_blt), 
                .is_bge(is_bge), 
                .is_bltu(is_bltu), 
                .is_bgeu(is_bgeu),
                .is_load(is_load),
                .is_addi(is_addi),
                .is_slti(is_slti), 
                .is_sltiu(is_sltiu),
                .is_xori(is_xori), 
                .is_ori(is_ori), 
                .is_andi(is_andi), 
                .is_slli(is_slli), 
                .is_srli(is_srli), 
                .is_srai(is_srai),
                .is_add(is_add), 
                .is_sub(is_sub), 
                .is_sll(is_sll), 
                .is_slt(is_slt), 
                .is_sltu(is_sltu),
                .is_xor(is_xor), 
                .is_srl(is_srl), 
                .is_sra(is_sra), 
                .is_or(is_or), 
                .is_and(is_and)                                
                
                );
    
    initial begin
    
    inst = 32'h00000713;
    #10 inst = 32'h00A00613;
    #10 inst = 32'h00100693;
    #10 inst = 32'h00E68733;
    #10 inst = 32'h00168693;
    #10 inst = 32'h7cc6cbe3;
    #10 inst = 32'hfd370f13;
    #10 inst = 32'h00005063;
    #10
    $finish;
    
    end

endmodule
