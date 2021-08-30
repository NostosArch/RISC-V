`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/31/2021 09:54:29 PM
// Design Name: 
// Module Name: adder
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


module Adder(
    input [31:0]a_in,
    input [31:0]b_in,
    output [31:0]sum_o,
    output carry_o
    );
   
    wire [31:0] imm_carry;
    
    FullAdder FA1(.a_in(a_in[0]), .b_in(b_in[0]), .c_in(1'b0), .sum(sum_o[0]), .c_out(imm_carry[0]));
    FullAdder FA2(.a_in(a_in[1]), .b_in(b_in[1]), .c_in(imm_carry[0]), .sum(sum_o[1]), .c_out(imm_carry[1]));
    FullAdder FA3(.a_in(a_in[2]), .b_in(b_in[2]), .c_in(imm_carry[1]), .sum(sum_o[2]), .c_out(imm_carry[2]));
    FullAdder FA4(.a_in(a_in[3]), .b_in(b_in[3]), .c_in(imm_carry[2]), .sum(sum_o[3]), .c_out(imm_carry[3]));
    FullAdder FA5(.a_in(a_in[4]), .b_in(b_in[4]), .c_in(imm_carry[3]), .sum(sum_o[4]), .c_out(imm_carry[4]));
    FullAdder FA6(.a_in(a_in[5]), .b_in(b_in[5]), .c_in(imm_carry[4]), .sum(sum_o[5]), .c_out(imm_carry[5]));
    FullAdder FA7(.a_in(a_in[6]), .b_in(b_in[6]), .c_in(imm_carry[5]), .sum(sum_o[6]), .c_out(imm_carry[6]));
    FullAdder FA8(.a_in(a_in[7]), .b_in(b_in[7]), .c_in(imm_carry[6]), .sum(sum_o[7]), .c_out(imm_carry[7]));
    FullAdder FA9(.a_in(a_in[8]), .b_in(b_in[8]), .c_in(imm_carry[7]), .sum(sum_o[8]), .c_out(imm_carry[8]));
    FullAdder FA10(.a_in(a_in[9]), .b_in(b_in[9]), .c_in(imm_carry[8]), .sum(sum_o[9]), .c_out(imm_carry[9]));
    FullAdder FA11(.a_in(a_in[10]), .b_in(b_in[10]), .c_in(imm_carry[9]), .sum(sum_o[10]), .c_out(imm_carry[10]));
    FullAdder FA12(.a_in(a_in[11]), .b_in(b_in[11]), .c_in(imm_carry[10]), .sum(sum_o[11]), .c_out(imm_carry[11]));
    FullAdder FA13(.a_in(a_in[12]), .b_in(b_in[12]), .c_in(imm_carry[11]), .sum(sum_o[12]), .c_out(imm_carry[12]));
    FullAdder FA14(.a_in(a_in[13]), .b_in(b_in[13]), .c_in(imm_carry[12]), .sum(sum_o[13]), .c_out(imm_carry[13]));
    FullAdder FA15(.a_in(a_in[14]), .b_in(b_in[14]), .c_in(imm_carry[13]), .sum(sum_o[14]), .c_out(imm_carry[14]));
    FullAdder FA16(.a_in(a_in[15]), .b_in(b_in[15]), .c_in(imm_carry[14]), .sum(sum_o[15]), .c_out(imm_carry[15]));
    FullAdder FA17(.a_in(a_in[16]), .b_in(b_in[16]), .c_in(imm_carry[15]), .sum(sum_o[16]), .c_out(imm_carry[16]));
    FullAdder FA18(.a_in(a_in[17]), .b_in(b_in[17]), .c_in(imm_carry[16]), .sum(sum_o[17]), .c_out(imm_carry[17]));
    FullAdder FA19(.a_in(a_in[18]), .b_in(b_in[18]), .c_in(imm_carry[17]), .sum(sum_o[18]), .c_out(imm_carry[18]));
    FullAdder FA20(.a_in(a_in[19]), .b_in(b_in[19]), .c_in(imm_carry[18]), .sum(sum_o[19]), .c_out(imm_carry[19]));
    FullAdder FA21(.a_in(a_in[20]), .b_in(b_in[20]), .c_in(imm_carry[19]), .sum(sum_o[20]), .c_out(imm_carry[20]));
    FullAdder FA22(.a_in(a_in[21]), .b_in(b_in[21]), .c_in(imm_carry[20]), .sum(sum_o[21]), .c_out(imm_carry[21]));
    FullAdder FA23(.a_in(a_in[22]), .b_in(b_in[22]), .c_in(imm_carry[21]), .sum(sum_o[22]), .c_out(imm_carry[22]));
    FullAdder FA24(.a_in(a_in[23]), .b_in(b_in[23]), .c_in(imm_carry[22]), .sum(sum_o[23]), .c_out(imm_carry[23]));
    FullAdder FA25(.a_in(a_in[24]), .b_in(b_in[24]), .c_in(imm_carry[23]), .sum(sum_o[24]), .c_out(imm_carry[24]));
    FullAdder FA26(.a_in(a_in[25]), .b_in(b_in[25]), .c_in(imm_carry[24]), .sum(sum_o[25]), .c_out(imm_carry[25]));
    FullAdder FA27(.a_in(a_in[26]), .b_in(b_in[26]), .c_in(imm_carry[25]), .sum(sum_o[26]), .c_out(imm_carry[26]));
    FullAdder FA28(.a_in(a_in[27]), .b_in(b_in[27]), .c_in(imm_carry[26]), .sum(sum_o[27]), .c_out(imm_carry[27]));
    FullAdder FA29(.a_in(a_in[28]), .b_in(b_in[28]), .c_in(imm_carry[27]), .sum(sum_o[28]), .c_out(imm_carry[28]));
    FullAdder FA30(.a_in(a_in[29]), .b_in(b_in[29]), .c_in(imm_carry[28]), .sum(sum_o[29]), .c_out(imm_carry[29]));
    FullAdder FA31(.a_in(a_in[30]), .b_in(b_in[30]), .c_in(imm_carry[29]), .sum(sum_o[30]), .c_out(imm_carry[30]));
    FullAdder FA32(.a_in(a_in[31]), .b_in(b_in[31]), .c_in(imm_carry[30]), .sum(sum_o[31]), .c_out(carry_o));

endmodule
