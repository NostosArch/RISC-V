`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/01/2021 04:21:19 PM
// Design Name: 
// Module Name: RV32I_CPU
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


module RV32I_Pipelined(
    input clock,
    input reset
    //output reg [6:0]inst_count
    );
    
    wire [31:0] pc_next;
    wire [31:0] inst;

    reg [31:0] fetch_inst = 0;
    reg [31:0] decode_inst = 0;
    reg [31:0] exec_inst = 0;        
    reg [31:0] Mem_inst = 0;

/** Decode ****/   
    //wire [6:0] funct7;
    wire [4:0] rs2, rs1, rd;
    //wire [2:0] funct3;
    wire [31:0] imm;
    //wire funct7_valid,funct3_valid,imm_valid; 
    //rs2_valid,rs1_valid
    
    wire rd_valid;
    wire is_lui, is_auipc, is_jal, is_jalr;
    wire is_beq, is_bne, is_blt, is_bge, is_bltu, is_bgeu;
    //wire is_load, is_store;
    wire is_lb, is_lh, is_lw, is_lbu, is_lhu, is_sb, is_sh, is_sw;
    wire is_addi;
    wire is_slti, is_sltiu;
    wire is_xori, is_ori, is_andi, is_slli, is_srli, is_srai;
    wire is_add, is_sub, is_sll, is_slt, is_sltu;
    wire is_xor, is_srl, is_sra, is_or, is_and;


/** Register File **/

    wire wr_en;
    wire [4:0] wr_index;
    wire [31:0] wr_data;
    wire [31:0] rd_data1;
    wire [31:0] rd_data2;    

/** ALU **/

    wire [31:0] result;
    wire taken_br;
    wire [31:0] branch_target;
    wire [31:0] jump_target;
    
/** Data Memory **/
    
    wire [31:0] ld_data;   


// Pipeline Registers

    reg [31:0] fetch_pc = 0;
    reg [31:0] pc = 0;
    reg [31:0] decode_pc = 0;
    
    reg exec_taken_br = 0;
    reg exec_is_jal = 0;
    reg exec_is_jalr = 0;
    reg [31:0] exec_branch_target = 0;
    reg [31:0] exec_jump_target = 0; 

/** Decode ****/
   
    //reg [6:0] decode_funct7 = 0;
    

    reg [4:0] decode_rs2 = 0; 
    reg [4:0] decode_rs1 = 0;  
    reg [4:0] decode_rd = 0;
    //reg [2:0] decode_funct3 = 0;
    reg [31:0] decode_imm = 0;
    //reg decode_funct7_valid = 0;
    //reg decode_funct3_valid = 0; 
    reg decode_rd_valid = 0;
    //reg decode_imm_valid = 0; 
    //rs2_valid,rs1_valid

    reg decode_is_lui = 0;
    reg decode_is_auipc = 0;
    reg decode_is_jal = 0; 
    reg decode_is_jalr = 0;
    reg decode_is_beq = 0; 
    reg decode_is_bne = 0; 
    reg decode_is_blt = 0; 
    reg decode_is_bge = 0; 
    reg decode_is_bltu = 0;  
    reg decode_is_bgeu = 0;
    //wire is_load, is_store;
    reg decode_is_lb = 0; 
    reg decode_is_lh = 0; 
    reg decode_is_lw = 0; 
    reg decode_is_lbu = 0; 
    reg decode_is_lhu = 0; 
    reg decode_is_sb = 0; 
    reg decode_is_sh = 0; 
    reg decode_is_sw = 0;
    reg decode_is_addi = 0;
    reg decode_is_slti = 0; 
    reg decode_is_sltiu = 0;
    reg decode_is_xori = 0; 
    reg decode_is_ori = 0;
    reg decode_is_andi = 0; 
    reg decode_is_slli = 0; 
    reg decode_is_srli = 0; 
    reg decode_is_srai = 0;
    reg decode_is_add = 0; 
    reg decode_is_sub = 0; 
    reg decode_is_sll = 0; 
    reg decode_is_slt = 0; 
    reg decode_is_sltu = 0;
    reg decode_is_xor = 0; 
    reg decode_is_srl = 0; 
    reg decode_is_sra = 0; 
    reg decode_is_or = 0; 
    reg decode_is_and = 0;
    reg [31:0] decode_branch_target = 0 ; 


/** Register File **/

    reg write_wr_en = 0;
    reg [4:0]  write_wr_index = 0;
    reg [31:0] write_wr_data = 0;
    reg [31:0] decode_rd_data1 = 0;
    reg [31:0] decode_rd_data2 = 0;
    reg [31:0] exec_rd_data2 = 0;    

/** ALU **/


    reg [31:0] exec_result = 0;
    //wire taken_br;
    //wire [31:0] branch_target;
    //wire [31:0] jump_target;
    reg exec_is_lb = 0; 
    reg exec_is_lh = 0; 
    reg exec_is_lw = 0; 
    reg exec_is_lbu = 0; 
    reg exec_is_lhu = 0; 
    reg exec_is_sb = 0; 
    reg exec_is_sh = 0; 
    reg exec_is_sw = 0;
    reg [4:0] exec_rd = 0;
    reg exec_rd_valid = 0;
    
    reg stall = 0;
    reg bubble = 0;
    
       
/** Data Memory **/


    
    reg [31:0] WB_inst = 0;
    
    reg [31:0] write_ld_data = 0;  

        
    ProgramCounter PC (
                        .pc_current(pc),
                        .pc_next(pc_next),
                        .is_jal(is_jal),
                        .is_jalr(decode_is_jalr), 
                        .taken_br(taken_br),
                        .branch_target(decode_branch_target),
                        .jal_branch_target(branch_target),
                        .jump_target(jump_target)
                        
                        );
    
    IMEM inst_memory (.inst(inst), .address(pc));
    
    decode decode_logic (.inst(fetch_inst),
                .rs2(rs2),
                .rs1(rs1),
                .rd(rd),
                .imm(imm),
                .rd_valid(rd_valid),
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
                .is_lb(is_lb),
                .is_lh(is_lh),
                .is_lw(is_lw),
                .is_lbu(is_lbu),
                .is_lhu(is_lhu),                
                .is_sb(is_sb),
                .is_sh(is_sh),
                .is_sw(is_sw),
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

    RegisterFile RegFile (
                        
                        .clock(clock),
                        .reset(reset),
                        .wr_en(write_wr_en),
                        .wr_index(write_wr_index),
                        .wr_data(write_wr_data),
                        .rd_index1(rs1),
                        .rd_index2(rs2),
                        .rd_data1(rd_data1),
                        .rd_data2(rd_data2)
                        
                        );
    


    ALU alu (
                .src1_value(decode_rd_data1), 
                .src2_value(decode_rd_data2), 
                .pc(decode_pc),
                .imm(decode_imm),
 
                .result(result),
                .taken_br(taken_br),

                .is_lui(decode_is_lui), 
                .is_auipc(decode_is_auipc), 
                .is_jal(decode_is_jal), 
                .is_jalr(decode_is_jalr),
                .is_beq(decode_is_beq), 
                .is_bne(decode_is_bne), 
                .is_blt(decode_is_blt), 
                .is_bge(decode_is_bge), 
                .is_bltu(decode_is_bltu), 
                .is_bgeu(decode_is_bgeu),
                .is_lb(decode_is_lb),
                .is_lh(decode_is_lh),
                .is_lw(decode_is_lw),
                .is_lbu(decode_is_lbu),
                .is_lhu(decode_is_lhu),
                .is_sb(decode_is_sb),
                .is_sh(decode_is_sh),
                .is_sw(decode_is_sw),                
                .is_addi(decode_is_addi),
                .is_slti(decode_is_slti), 
                .is_sltiu(decode_is_sltiu),
                .is_xori(decode_is_xori), 
                .is_ori(decode_is_ori), 
                .is_andi(decode_is_andi), 
                .is_slli(decode_is_slli), 
                .is_srli(decode_is_srli), 
                .is_srai(decode_is_srai),
                .is_add(decode_is_add), 
                .is_sub(decode_is_sub), 
                .is_sll(decode_is_sll), 
                .is_slt(decode_is_slt), 
                .is_sltu(decode_is_sltu),
                .is_xor(decode_is_xor), 
                .is_srl(decode_is_srl), 
                .is_sra(decode_is_sra), 
                .is_or(decode_is_or), 
                .is_and(decode_is_and)                 
                                                                     
            );


    BranchTarget branch_address(
                                .pc(fetch_pc),
                                .imm(imm),
                                .branch_target(branch_target)
                                                               
                                );          


    JumpTarget jump_address(
                                .src1_value(decode_rd_data1),
                                .imm(decode_imm),
                                .jump_target(jump_target)
                                                               
                                );  

    DMEM    data_memory(
                          .clock(clock),
                          .is_lb(exec_is_lb),
                          .is_lh(exec_is_lh),
                          .is_lw(exec_is_lw),
                          .is_lbu(exec_is_lbu),
                          .is_lhu(exec_is_lhu),
                          .is_sb(exec_is_sb),
                          .is_sh(exec_is_sh),
                          .is_sw(exec_is_sw), 

                          .src2_value(exec_rd_data2),
                          .Dmem_address(exec_result),
                          .ld_data(ld_data)
                                            
                        );    
    
    assign wr_en = exec_rd_valid;        
    assign wr_data =(exec_is_lb | exec_is_lbu | exec_is_lh | exec_is_lhu | exec_is_lw)? ld_data : exec_result;
    assign wr_index = exec_rd;
    
    always @ ( * ) begin
        stall = (decode_is_lb | decode_is_lh | decode_is_lw | decode_is_lbu | decode_is_lhu) & ((rs1 == decode_rd) | (rs2 == decode_rd));
    end
    
    always @ (*) begin
        bubble = stall | decode_is_jalr | taken_br;
    end
    
    always@(posedge clock) begin
    
        if(!reset) begin
            
            //case(count)
            
            //3'b000:  begin
               
                     pc <= stall ? pc : pc_next;
                     
                    // inst_count <= pc/4 + 2;
                     
                     //exec_taken_br <= 0;
                     //exec_is_jal <= 0;
                     //exec_is_jalr <= 0;
                     
              //       count <= 3'b001;
                     
              //       end               
        
            //3'b001: begin
                    
                    fetch_inst <= stall ? fetch_inst : 
                                  (decode_is_jalr | taken_br) ? 0 :
                                  is_jal ? 0 : inst;
                                   
                    fetch_pc <= stall ? fetch_pc : pc;
                  //  count <= 3'b010;
            
              //      end
            
            //3'b010: begin
                    
                    decode_pc <= fetch_pc;
                    
                    decode_inst <= bubble ? 0 : fetch_inst;
            
                    //decode_funct7  <= funct7;
                    decode_rs2    <=  bubble ? 0 : rs2; 
                    decode_rs1   <=   bubble ? 0 : rs1;
                    decode_rd   <= (stall | decode_is_jalr | taken_br ) ? 0 : rd;
                    //decode_funct3 <= funct3;
                    decode_imm <= bubble ? 0 : imm;
                    //decode_funct7_valid <= funct7_valid;
                    //decode_funct3_valid <= funct3_valid;
                    decode_rd_valid <= bubble ? 0 : rd_valid;
                    //decode_imm_valid <= imm_valid;

        
                    decode_is_lui <= bubble ? 0 : is_lui;
                    decode_is_auipc <= bubble ? 0 : is_auipc;
                    decode_is_jal <= bubble ? 0 : is_jal;
                    decode_is_jalr <= bubble ? 0 : is_jalr;
                    decode_is_beq <= bubble ? 0 : is_beq;
                    decode_is_bne <= bubble ? 0 : is_bne;
                    decode_is_blt <= bubble ? 0 : is_blt;
                    decode_is_bge <= bubble ? 0 : is_bge;
                    decode_is_bltu <= bubble ? 0 : is_bltu;
                    decode_is_bgeu <= bubble ? 0 : is_bgeu;

                    decode_is_lb <= bubble  ? 0 : is_lb;
                    decode_is_lh <= bubble ? 0 : is_lh;
                    decode_is_lw <= bubble ? 0 : is_lw;
                    decode_is_lbu <= bubble ? 0 : is_lbu;
                    decode_is_lhu <= bubble? 0 : is_lhu;
                    decode_is_sb  <= bubble ? 0 : is_sb;
                    decode_is_sh <= bubble ? 0 : is_sh;
                    decode_is_sw <=  bubble ? 0 : is_sw;
                    decode_is_addi <= bubble ? 0 : is_addi;
                    decode_is_slti <= bubble ? 0 : is_slti;
                    decode_is_sltiu <= bubble ? 0 : is_sltiu;
                    decode_is_xori <= bubble ? 0 : is_xori;
                    decode_is_ori <= bubble ? 0 : is_ori;
                    decode_is_andi <= bubble ? 0 : is_andi;
                    decode_is_slli <= bubble ? 0 : is_slli;
                    decode_is_srli <= bubble ? 0 : is_srli;
                    decode_is_srai <= bubble ? 0 : is_srai;
                    decode_is_add <= bubble ? 0 : is_add;
                    decode_is_sub <= bubble ? 0 : is_sub;
                    decode_is_sll <= bubble ? 0 : is_sll;
                    decode_is_slt <= bubble ? 0 : is_slt;
                    decode_is_sltu <= bubble ? 0 : is_sltu;
                    decode_is_xor <= bubble ? 0 : is_xor;
                    decode_is_srl <= bubble ? 0 : is_srl;
                    decode_is_sra <= bubble ? 0 : is_sra;
                    decode_is_or <= bubble ? 0 : is_or;
                    decode_is_and <= bubble ? 0 : is_and;
                    decode_branch_target <= bubble ? 0 : branch_target;
                    
                    decode_rd_data1 <= (decode_rd_valid & (rs1 == decode_rd)) ? result : 
                                        (exec_rd_valid & (rs1 == exec_rd)) ? wr_data : rd_data1;
                                        
                    decode_rd_data2 <= (decode_rd_valid & (rs2 == decode_rd)) ? result : 
                                        (exec_rd_valid & (rs2 == exec_rd)) ? wr_data : rd_data2;
                    
                    
                //    count <= 3'b011;
                    
              //      end

           // 3'b011: begin
           

                    exec_result <= result;
                    
                    exec_inst <= decode_inst;
                    
                    exec_rd_data2 <= decode_rd_data2;
                    
                    exec_rd_valid <= decode_rd_valid;
                    
                    exec_rd <= decode_rd;
                    
                    exec_is_lb <= decode_is_lb;
                    exec_is_lh <= decode_is_lh;
                    exec_is_lw <= decode_is_lw;
                    exec_is_lbu <= decode_is_lbu;
                    exec_is_lhu <= decode_is_lhu;
                    exec_is_sb  <= decode_is_sb;
                    exec_is_sh <= decode_is_sh;
                    exec_is_sw <= decode_is_sw;                  
                  
                    exec_taken_br <= taken_br;
                    exec_is_jalr <= decode_is_jalr;
                    exec_is_jal <= decode_is_jal;
                    exec_branch_target <= decode_branch_target;
                    exec_jump_target <= jump_target;
                    
               //     count <= 3'b100;
                    
                    
             //       end
                    
           // 3'b100: begin
            
                    Mem_inst <= exec_inst;
                    write_wr_en <= wr_en;
                    write_wr_data <= wr_data;                         
                    write_wr_index <= wr_index;
                
                   // count <= 3'b000;
                    
                 //   end
        
           // endcase
        
        end
        
        else begin
        
            //count <= 1;
            pc <= 0;
            //inst_count <= 1;
            exec_taken_br <= 0;
        
            fetch_pc <= 0;
            decode_pc <= 0;
            
            fetch_inst <= 0;
            decode_inst <= 0;
            exec_inst <= 0;        
            Mem_inst = 0;                
            
            exec_is_jal <= 0;
            exec_is_jalr <= 0;
            exec_branch_target <= 0;
            exec_jump_target <= 0; 
            
            /** Decode ****/
               
                //reg [6:0] decode_funct7 = 0;
                
            
            decode_rs2 <= 0; 
            decode_rs1 <= 0;  
            decode_rd <= 0;
                //reg [2:0] decode_funct3 = 0;
            decode_imm <= 0;
                //reg decode_funct7_valid = 0;
                //reg decode_funct3_valid = 0; 
            decode_rd_valid <= 0;
                //reg decode_imm_valid = 0; 
                //rs2_valid,rs1_valid
            
            decode_is_lui <= 0;
            decode_is_auipc <= 0;
            decode_is_jal <= 0; 
            decode_is_jalr <= 0;
            decode_is_beq <= 0; 
            decode_is_bne <= 0; 
            decode_is_blt <= 0; 
            decode_is_bge <= 0; 
            decode_is_bltu <= 0;  
            decode_is_bgeu <= 0;
                //wire is_load, is_store;
            decode_is_lb <= 0; 
            decode_is_lh <= 0; 
            decode_is_lw <= 0; 
            decode_is_lbu <= 0; 
            decode_is_lhu <= 0; 
            decode_is_sb <= 0; 
            decode_is_sh <= 0; 
            decode_is_sw <= 0;
            decode_is_addi <= 0;
            decode_is_slti <= 0; 
            decode_is_sltiu <= 0;
            decode_is_xori <= 0; 
            decode_is_ori <= 0;
            decode_is_andi <= 0; 
            decode_is_slli <= 0; 
            decode_is_srli <= 0; 
            decode_is_srai <= 0;
            decode_is_add <= 0; 
            decode_is_sub <= 0; 
            decode_is_sll <= 0; 
            decode_is_slt <= 0; 
            decode_is_sltu <= 0;
            decode_is_xor <= 0; 
            decode_is_srl <= 0; 
            decode_is_sra <= 0; 
            decode_is_or <= 0; 
            decode_is_and <= 0;
            decode_branch_target <= 0;
            
            
            /** Register File **/
            
             write_wr_en <= 0;
             write_wr_index <= 0;
             write_wr_data <= 0;
             decode_rd_data1 <= 0;
             decode_rd_data2 <= 0;
             exec_rd_data2 <= 0;    
            
            /** ALU **/
            
            
             exec_result <= 0;
              //wire taken_br;
                //wire [31:0] branch_target;
                //wire [31:0] jump_target;
             exec_is_lb <= 0; 
             exec_is_lh <= 0; 
             exec_is_lw <= 0; 
             exec_is_lbu <= 0; 
             exec_is_lhu <= 0; 
             exec_is_sb <= 0; 
             exec_is_sh <= 0; 
             exec_is_sw <= 0;
             exec_rd <= 0;
             exec_rd_valid <= 0;        
        
    
             WB_inst <= 0;
             
             write_ld_data <= 0;
             
             stall <= 0;  
            
             bubble <= 0; 
        
        end
        
        
    end
    
        
endmodule
