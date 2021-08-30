`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 06:45:54 PM
// Design Name: 
// Module Name: decode
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


module decode
(
    input [31:0] inst,
    
    //output [6:0] funct7,
    output [4:0] rs2, rs1, rd,
    //output [2:0] funct3,
    output [31:0] imm,
    output rd_valid,
    //output funct7_valid, funct3_valid,imm_valid,
    //rs2_valid,rs1_valid,
   
    
    output is_lui, is_auipc, is_jal, is_jalr,
    output is_beq, is_bne, is_blt, is_bge, is_bltu, is_bgeu,
    //output is_load, is_store,
    output is_lb, is_lh, is_lw, is_lbu, is_lhu, is_sb, is_sh, is_sw,
    output is_addi,
    output is_slti, is_sltiu,
    output is_xori, is_ori, is_andi, is_slli, is_srli, is_srai,
    output is_add, is_sub, is_sll, is_slt, is_sltu,
    output is_xor, is_srl, is_sra, is_or, is_and    
    
    );

    wire is_u_inst, is_r_inst, is_i_inst,is_s_inst,is_b_inst,is_j_inst;
    wire funct7_valid, funct3_valid,imm_valid;
    
    wire [10:0]dec_bits;
    
    wire [6:0] opcode;
    
    wire [6:0] funct7;
    
    wire [2:0] funct3;
    

   
    assign is_u_inst = inst[6:2] == 5'b00101 || inst[6:2] == 5'b01101;
    assign is_r_inst = inst[6:2] == 5'b01011 || inst[6:2] == 5'b01100 || inst[6:2] == 5'b01110 || inst[6:2] == 5'b10100;
    assign is_i_inst = inst[6:2] == 5'b00000 || inst[6:2] == 5'b00001 || inst[6:2] == 5'b00100 || inst[6:2] == 5'b00110 || inst[6:2] == 5'b11001;
    assign is_s_inst = inst[6:2] == 5'b01000 || inst[6:2] == 5'b01001;
    assign is_b_inst = inst[6:2] == 5'b11000;
    assign is_j_inst = inst[6:2] == 5'b11011;
    
    assign opcode = inst[6:0];
    assign rd = inst[11:7];
    assign funct3 = inst[14:12];
    assign rs1 = inst[19:15];
    assign rs2 = inst[24:20];
    assign funct7 = inst[31:25];
    
    
    assign imm_valid = ~(is_r_inst);
    
    assign funct7_valid = is_r_inst;
    
    //assign rs2_valid = is_r_inst || is_s_inst || is_b_inst;
    
    //assign rs1_valid = ~(is_u_inst || is_j_inst);
    
    assign funct3_valid = ~(is_u_inst || is_j_inst);
    
    assign rd_valid = ~(is_s_inst || is_b_inst); 
    
    
    assign imm = is_i_inst ? { {21 {inst[31]} },inst[30:20]} : 
                 is_s_inst ? { {21 {inst[31]} },inst[30:25],inst[11:8],inst[7]} :
                 is_b_inst ? { {20 {inst[31]} },inst[7],inst[30:25],inst[11:8],1'b0} :
                 is_u_inst ? { inst[31], inst[30:20], inst[19:12], 12'b0} :
                 is_j_inst ? { {12 {inst[31]} },inst[19:12],inst[20],inst[30:25],inst[24:21],1'b0} :
                 32'b0;
                 
    assign dec_bits = {inst[30],funct3,opcode};
    
    assign is_beq  =  dec_bits[9:0] == 10'b000_1100011;
    
    assign is_lui = dec_bits[6:0] == 7'b0110111;
    
    assign is_auipc = dec_bits[6:0] == 7'b0010111;
    
    assign is_jal = dec_bits[6:0] == 7'b1101111;
    
    assign is_jalr = dec_bits[9:0] == 10'b000_1100111;
    
    assign is_bne = dec_bits[9:0] == 10'b001_1100011;
    
    assign is_blt = dec_bits[9:0] == 10'b100_1100011;
    
    assign is_bge = dec_bits[9:0] == 10'b101_1100011;
    
    assign is_bltu = dec_bits[9:0] == 10'b110_1100011;
    
    assign is_bgeu = dec_bits[9:0] == 10'b111_1100011;
    
    //assign is_load = dec_bits[6:0] == 7'b0000011;
    
    assign is_addi = dec_bits[9:0] == 10'b000_0010011;
    
    assign is_slti = dec_bits[9:0] == 10'b010_0010011;
    
    assign is_sltiu = dec_bits[9:0] == 10'b011_0010011;
    
    assign is_xori = dec_bits[9:0] == 10'b100_0010011;
    
    assign is_ori = dec_bits[9:0] == 10'b110_0010011;
    
    assign is_andi = dec_bits[9:0] == 10'b111_0010011;
    
    assign is_slli = dec_bits == 11'b0_001_0010011;
    
    assign is_srli = dec_bits == 11'b0_101_0010011;
    
    assign is_srai = dec_bits == 11'b1_101_0010011;
    
    assign is_add = dec_bits == 11'b0_000_0110011;
    
    assign is_sub = dec_bits == 11'b1_000_0110011;
    
    assign is_sll = dec_bits == 11'b0_001_0110011;
    
    assign is_slt = dec_bits == 11'b0_010_0110011;
    
    assign is_sltu = dec_bits == 11'b0_011_0110011;
    
    assign is_xor = dec_bits == 11'b0_100_0110011;
    
    assign is_srl = dec_bits == 11'b0_101_0110011;
    
    assign is_sra = dec_bits == 11'b1_101_0110011;
    
    assign is_or = dec_bits == 11'b0_110_0110011;
    
    assign is_and = dec_bits == 11'b0_111_0110011;
    
    //assign is_store = is_s_inst;
    
    assign is_sb = dec_bits[9:0] == 10'b000_0100011;
    
    assign is_sh = dec_bits[9:0] == 10'b001_0100011;
    
    assign is_sw = dec_bits[9:0] == 10'b010_0100011;
    
    assign is_lb = dec_bits[9:0] == 10'b000_0000011;
    
    assign is_lh = dec_bits[9:0] == 10'b001_0000011;
    
    assign is_lw = dec_bits[9:0] == 10'b010_0000011;

    assign is_lbu = dec_bits[9:0] == 10'b100_0000011;
    
    assign is_lhu = dec_bits[9:0] == 10'b101_0000011;

endmodule
