// Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
// Date        : Sat Aug  7 18:36:10 2021
// Host        : ubuntu running 64-bit Ubuntu 18.04.5 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/abhishek/Verilog/Processor/Processor.sim/sim_1/impl/timing/RegisterFile_time_impl.v
// Design      : RegisterFile
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a75tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "e959a096" *) 
(* NotValidForBitStream *)
module RegisterFile
   (clock,
    reset,
    wr_en,
    wr_index,
    wr_data,
    rd_en1,
    rd_index1,
    rd_en2,
    rd_index2,
    rd_data1,
    rd_data2);
  input clock;
  input reset;
  input wr_en;
  input [4:0]wr_index;
  input [31:0]wr_data;
  input rd_en1;
  input [4:0]rd_index1;
  input rd_en2;
  input [4:0]rd_index2;
  output [31:0]rd_data1;
  output [31:0]rd_data2;

  wire clock;
  wire clock_IBUF;
  wire clock_IBUF_BUFG;
  wire [31:0]rd_data1;
  wire \rd_data1[0]_i_2_n_0 ;
  wire \rd_data1[10]_i_2_n_0 ;
  wire \rd_data1[11]_i_2_n_0 ;
  wire \rd_data1[12]_i_2_n_0 ;
  wire \rd_data1[13]_i_2_n_0 ;
  wire \rd_data1[14]_i_2_n_0 ;
  wire \rd_data1[15]_i_2_n_0 ;
  wire \rd_data1[16]_i_2_n_0 ;
  wire \rd_data1[17]_i_2_n_0 ;
  wire \rd_data1[18]_i_2_n_0 ;
  wire \rd_data1[19]_i_2_n_0 ;
  wire \rd_data1[1]_i_2_n_0 ;
  wire \rd_data1[20]_i_2_n_0 ;
  wire \rd_data1[21]_i_2_n_0 ;
  wire \rd_data1[22]_i_2_n_0 ;
  wire \rd_data1[23]_i_2_n_0 ;
  wire \rd_data1[24]_i_2_n_0 ;
  wire \rd_data1[25]_i_2_n_0 ;
  wire \rd_data1[26]_i_2_n_0 ;
  wire \rd_data1[27]_i_2_n_0 ;
  wire \rd_data1[28]_i_2_n_0 ;
  wire \rd_data1[29]_i_2_n_0 ;
  wire \rd_data1[2]_i_2_n_0 ;
  wire \rd_data1[30]_i_2_n_0 ;
  wire \rd_data1[31]_i_1_n_0 ;
  wire \rd_data1[31]_i_3_n_0 ;
  wire \rd_data1[3]_i_2_n_0 ;
  wire \rd_data1[4]_i_2_n_0 ;
  wire \rd_data1[5]_i_2_n_0 ;
  wire \rd_data1[6]_i_2_n_0 ;
  wire \rd_data1[7]_i_2_n_0 ;
  wire \rd_data1[8]_i_2_n_0 ;
  wire \rd_data1[9]_i_2_n_0 ;
  wire [31:0]rd_data1_OBUF;
  wire [31:0]rd_data2;
  wire \rd_data2[0]_i_1_n_0 ;
  wire \rd_data2[0]_i_2_n_0 ;
  wire \rd_data2[10]_i_1_n_0 ;
  wire \rd_data2[10]_i_2_n_0 ;
  wire \rd_data2[11]_i_1_n_0 ;
  wire \rd_data2[11]_i_2_n_0 ;
  wire \rd_data2[12]_i_1_n_0 ;
  wire \rd_data2[12]_i_2_n_0 ;
  wire \rd_data2[13]_i_1_n_0 ;
  wire \rd_data2[13]_i_2_n_0 ;
  wire \rd_data2[14]_i_1_n_0 ;
  wire \rd_data2[14]_i_2_n_0 ;
  wire \rd_data2[15]_i_1_n_0 ;
  wire \rd_data2[15]_i_2_n_0 ;
  wire \rd_data2[16]_i_1_n_0 ;
  wire \rd_data2[16]_i_2_n_0 ;
  wire \rd_data2[17]_i_1_n_0 ;
  wire \rd_data2[17]_i_2_n_0 ;
  wire \rd_data2[18]_i_1_n_0 ;
  wire \rd_data2[18]_i_2_n_0 ;
  wire \rd_data2[19]_i_1_n_0 ;
  wire \rd_data2[19]_i_2_n_0 ;
  wire \rd_data2[1]_i_1_n_0 ;
  wire \rd_data2[1]_i_2_n_0 ;
  wire \rd_data2[20]_i_1_n_0 ;
  wire \rd_data2[20]_i_2_n_0 ;
  wire \rd_data2[21]_i_1_n_0 ;
  wire \rd_data2[21]_i_2_n_0 ;
  wire \rd_data2[22]_i_1_n_0 ;
  wire \rd_data2[22]_i_2_n_0 ;
  wire \rd_data2[23]_i_1_n_0 ;
  wire \rd_data2[23]_i_2_n_0 ;
  wire \rd_data2[24]_i_1_n_0 ;
  wire \rd_data2[24]_i_2_n_0 ;
  wire \rd_data2[25]_i_1_n_0 ;
  wire \rd_data2[25]_i_2_n_0 ;
  wire \rd_data2[26]_i_1_n_0 ;
  wire \rd_data2[26]_i_2_n_0 ;
  wire \rd_data2[27]_i_1_n_0 ;
  wire \rd_data2[27]_i_2_n_0 ;
  wire \rd_data2[28]_i_1_n_0 ;
  wire \rd_data2[28]_i_2_n_0 ;
  wire \rd_data2[29]_i_1_n_0 ;
  wire \rd_data2[29]_i_2_n_0 ;
  wire \rd_data2[2]_i_1_n_0 ;
  wire \rd_data2[2]_i_2_n_0 ;
  wire \rd_data2[30]_i_1_n_0 ;
  wire \rd_data2[30]_i_2_n_0 ;
  wire \rd_data2[31]_i_1_n_0 ;
  wire \rd_data2[31]_i_2_n_0 ;
  wire \rd_data2[31]_i_3_n_0 ;
  wire \rd_data2[3]_i_1_n_0 ;
  wire \rd_data2[3]_i_2_n_0 ;
  wire \rd_data2[4]_i_1_n_0 ;
  wire \rd_data2[4]_i_2_n_0 ;
  wire \rd_data2[5]_i_1_n_0 ;
  wire \rd_data2[5]_i_2_n_0 ;
  wire \rd_data2[6]_i_1_n_0 ;
  wire \rd_data2[6]_i_2_n_0 ;
  wire \rd_data2[7]_i_1_n_0 ;
  wire \rd_data2[7]_i_2_n_0 ;
  wire \rd_data2[8]_i_1_n_0 ;
  wire \rd_data2[8]_i_2_n_0 ;
  wire \rd_data2[9]_i_1_n_0 ;
  wire \rd_data2[9]_i_2_n_0 ;
  wire [31:0]rd_data2_OBUF;
  wire rd_en1;
  wire rd_en1_IBUF;
  wire rd_en2;
  wire rd_en2_IBUF;
  wire [4:0]rd_index1;
  wire [2:0]rd_index1_IBUF;
  wire [4:0]rd_index2;
  wire [2:0]rd_index2_IBUF;
  wire [31:0]regfile;
  wire \regfile[0][31]_i_1_n_0 ;
  wire \regfile[1][31]_i_1_n_0 ;
  wire \regfile[2][31]_i_1_n_0 ;
  wire \regfile[3][31]_i_1_n_0 ;
  wire \regfile[4][31]_i_1_n_0 ;
  wire [31:0]\regfile_reg[0]__0 ;
  wire [31:0]\regfile_reg[1]__0 ;
  wire [31:0]\regfile_reg[2]__0 ;
  wire [31:0]\regfile_reg[3]__0 ;
  wire [31:0]\regfile_reg[4]__0 ;
  wire reset;
  wire reset_IBUF;
  wire [31:0]wr_data;
  wire [31:0]wr_data_IBUF;
  wire wr_en;
  wire wr_en_IBUF;
  wire [4:0]wr_index;
  wire [4:0]wr_index_IBUF;

initial begin
 $sdf_annotate("RegisterFile_time_impl.sdf",,,,"tool_control");
end
  BUFG clock_IBUF_BUFG_inst
       (.I(clock_IBUF),
        .O(clock_IBUF_BUFG));
  IBUF clock_IBUF_inst
       (.I(clock),
        .O(clock_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[0]_i_1 
       (.I0(\regfile_reg[4]__0 [0]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[0]_i_2_n_0 ),
        .O(regfile[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[0]_i_2 
       (.I0(\regfile_reg[3]__0 [0]),
        .I1(\regfile_reg[2]__0 [0]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [0]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [0]),
        .O(\rd_data1[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[10]_i_1 
       (.I0(\regfile_reg[4]__0 [10]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[10]_i_2_n_0 ),
        .O(regfile[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[10]_i_2 
       (.I0(\regfile_reg[3]__0 [10]),
        .I1(\regfile_reg[2]__0 [10]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [10]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [10]),
        .O(\rd_data1[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[11]_i_1 
       (.I0(\regfile_reg[4]__0 [11]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[11]_i_2_n_0 ),
        .O(regfile[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[11]_i_2 
       (.I0(\regfile_reg[3]__0 [11]),
        .I1(\regfile_reg[2]__0 [11]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [11]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [11]),
        .O(\rd_data1[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[12]_i_1 
       (.I0(\regfile_reg[4]__0 [12]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[12]_i_2_n_0 ),
        .O(regfile[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[12]_i_2 
       (.I0(\regfile_reg[3]__0 [12]),
        .I1(\regfile_reg[2]__0 [12]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [12]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [12]),
        .O(\rd_data1[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[13]_i_1 
       (.I0(\regfile_reg[4]__0 [13]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[13]_i_2_n_0 ),
        .O(regfile[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[13]_i_2 
       (.I0(\regfile_reg[3]__0 [13]),
        .I1(\regfile_reg[2]__0 [13]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [13]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [13]),
        .O(\rd_data1[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[14]_i_1 
       (.I0(\regfile_reg[4]__0 [14]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[14]_i_2_n_0 ),
        .O(regfile[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[14]_i_2 
       (.I0(\regfile_reg[3]__0 [14]),
        .I1(\regfile_reg[2]__0 [14]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [14]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [14]),
        .O(\rd_data1[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[15]_i_1 
       (.I0(\regfile_reg[4]__0 [15]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[15]_i_2_n_0 ),
        .O(regfile[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[15]_i_2 
       (.I0(\regfile_reg[3]__0 [15]),
        .I1(\regfile_reg[2]__0 [15]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [15]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [15]),
        .O(\rd_data1[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[16]_i_1 
       (.I0(\regfile_reg[4]__0 [16]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[16]_i_2_n_0 ),
        .O(regfile[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[16]_i_2 
       (.I0(\regfile_reg[3]__0 [16]),
        .I1(\regfile_reg[2]__0 [16]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [16]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [16]),
        .O(\rd_data1[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[17]_i_1 
       (.I0(\regfile_reg[4]__0 [17]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[17]_i_2_n_0 ),
        .O(regfile[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[17]_i_2 
       (.I0(\regfile_reg[3]__0 [17]),
        .I1(\regfile_reg[2]__0 [17]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [17]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [17]),
        .O(\rd_data1[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[18]_i_1 
       (.I0(\regfile_reg[4]__0 [18]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[18]_i_2_n_0 ),
        .O(regfile[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[18]_i_2 
       (.I0(\regfile_reg[3]__0 [18]),
        .I1(\regfile_reg[2]__0 [18]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [18]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [18]),
        .O(\rd_data1[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[19]_i_1 
       (.I0(\regfile_reg[4]__0 [19]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[19]_i_2_n_0 ),
        .O(regfile[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[19]_i_2 
       (.I0(\regfile_reg[3]__0 [19]),
        .I1(\regfile_reg[2]__0 [19]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [19]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [19]),
        .O(\rd_data1[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[1]_i_1 
       (.I0(\regfile_reg[4]__0 [1]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[1]_i_2_n_0 ),
        .O(regfile[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[1]_i_2 
       (.I0(\regfile_reg[3]__0 [1]),
        .I1(\regfile_reg[2]__0 [1]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [1]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [1]),
        .O(\rd_data1[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[20]_i_1 
       (.I0(\regfile_reg[4]__0 [20]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[20]_i_2_n_0 ),
        .O(regfile[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[20]_i_2 
       (.I0(\regfile_reg[3]__0 [20]),
        .I1(\regfile_reg[2]__0 [20]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [20]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [20]),
        .O(\rd_data1[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[21]_i_1 
       (.I0(\regfile_reg[4]__0 [21]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[21]_i_2_n_0 ),
        .O(regfile[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[21]_i_2 
       (.I0(\regfile_reg[3]__0 [21]),
        .I1(\regfile_reg[2]__0 [21]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [21]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [21]),
        .O(\rd_data1[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[22]_i_1 
       (.I0(\regfile_reg[4]__0 [22]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[22]_i_2_n_0 ),
        .O(regfile[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[22]_i_2 
       (.I0(\regfile_reg[3]__0 [22]),
        .I1(\regfile_reg[2]__0 [22]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [22]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [22]),
        .O(\rd_data1[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[23]_i_1 
       (.I0(\regfile_reg[4]__0 [23]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[23]_i_2_n_0 ),
        .O(regfile[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[23]_i_2 
       (.I0(\regfile_reg[3]__0 [23]),
        .I1(\regfile_reg[2]__0 [23]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [23]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [23]),
        .O(\rd_data1[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[24]_i_1 
       (.I0(\regfile_reg[4]__0 [24]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[24]_i_2_n_0 ),
        .O(regfile[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[24]_i_2 
       (.I0(\regfile_reg[3]__0 [24]),
        .I1(\regfile_reg[2]__0 [24]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [24]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [24]),
        .O(\rd_data1[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[25]_i_1 
       (.I0(\regfile_reg[4]__0 [25]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[25]_i_2_n_0 ),
        .O(regfile[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[25]_i_2 
       (.I0(\regfile_reg[3]__0 [25]),
        .I1(\regfile_reg[2]__0 [25]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [25]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [25]),
        .O(\rd_data1[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[26]_i_1 
       (.I0(\regfile_reg[4]__0 [26]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[26]_i_2_n_0 ),
        .O(regfile[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[26]_i_2 
       (.I0(\regfile_reg[3]__0 [26]),
        .I1(\regfile_reg[2]__0 [26]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [26]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [26]),
        .O(\rd_data1[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[27]_i_1 
       (.I0(\regfile_reg[4]__0 [27]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[27]_i_2_n_0 ),
        .O(regfile[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[27]_i_2 
       (.I0(\regfile_reg[3]__0 [27]),
        .I1(\regfile_reg[2]__0 [27]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [27]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [27]),
        .O(\rd_data1[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[28]_i_1 
       (.I0(\regfile_reg[4]__0 [28]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[28]_i_2_n_0 ),
        .O(regfile[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[28]_i_2 
       (.I0(\regfile_reg[3]__0 [28]),
        .I1(\regfile_reg[2]__0 [28]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [28]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [28]),
        .O(\rd_data1[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[29]_i_1 
       (.I0(\regfile_reg[4]__0 [29]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[29]_i_2_n_0 ),
        .O(regfile[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[29]_i_2 
       (.I0(\regfile_reg[3]__0 [29]),
        .I1(\regfile_reg[2]__0 [29]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [29]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [29]),
        .O(\rd_data1[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[2]_i_1 
       (.I0(\regfile_reg[4]__0 [2]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[2]_i_2_n_0 ),
        .O(regfile[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[2]_i_2 
       (.I0(\regfile_reg[3]__0 [2]),
        .I1(\regfile_reg[2]__0 [2]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [2]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [2]),
        .O(\rd_data1[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[30]_i_1 
       (.I0(\regfile_reg[4]__0 [30]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[30]_i_2_n_0 ),
        .O(regfile[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[30]_i_2 
       (.I0(\regfile_reg[3]__0 [30]),
        .I1(\regfile_reg[2]__0 [30]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [30]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [30]),
        .O(\rd_data1[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_data1[31]_i_1 
       (.I0(rd_en1_IBUF),
        .I1(reset_IBUF),
        .O(\rd_data1[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[31]_i_2 
       (.I0(\regfile_reg[4]__0 [31]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[31]_i_3_n_0 ),
        .O(regfile[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[31]_i_3 
       (.I0(\regfile_reg[3]__0 [31]),
        .I1(\regfile_reg[2]__0 [31]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [31]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [31]),
        .O(\rd_data1[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[3]_i_1 
       (.I0(\regfile_reg[4]__0 [3]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[3]_i_2_n_0 ),
        .O(regfile[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[3]_i_2 
       (.I0(\regfile_reg[3]__0 [3]),
        .I1(\regfile_reg[2]__0 [3]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [3]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [3]),
        .O(\rd_data1[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[4]_i_1 
       (.I0(\regfile_reg[4]__0 [4]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[4]_i_2_n_0 ),
        .O(regfile[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[4]_i_2 
       (.I0(\regfile_reg[3]__0 [4]),
        .I1(\regfile_reg[2]__0 [4]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [4]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [4]),
        .O(\rd_data1[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[5]_i_1 
       (.I0(\regfile_reg[4]__0 [5]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[5]_i_2_n_0 ),
        .O(regfile[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[5]_i_2 
       (.I0(\regfile_reg[3]__0 [5]),
        .I1(\regfile_reg[2]__0 [5]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [5]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [5]),
        .O(\rd_data1[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[6]_i_1 
       (.I0(\regfile_reg[4]__0 [6]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[6]_i_2_n_0 ),
        .O(regfile[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[6]_i_2 
       (.I0(\regfile_reg[3]__0 [6]),
        .I1(\regfile_reg[2]__0 [6]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [6]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [6]),
        .O(\rd_data1[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[7]_i_1 
       (.I0(\regfile_reg[4]__0 [7]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[7]_i_2_n_0 ),
        .O(regfile[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[7]_i_2 
       (.I0(\regfile_reg[3]__0 [7]),
        .I1(\regfile_reg[2]__0 [7]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [7]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [7]),
        .O(\rd_data1[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[8]_i_1 
       (.I0(\regfile_reg[4]__0 [8]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[8]_i_2_n_0 ),
        .O(regfile[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[8]_i_2 
       (.I0(\regfile_reg[3]__0 [8]),
        .I1(\regfile_reg[2]__0 [8]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [8]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [8]),
        .O(\rd_data1[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data1[9]_i_1 
       (.I0(\regfile_reg[4]__0 [9]),
        .I1(rd_index1_IBUF[2]),
        .I2(\rd_data1[9]_i_2_n_0 ),
        .O(regfile[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data1[9]_i_2 
       (.I0(\regfile_reg[3]__0 [9]),
        .I1(\regfile_reg[2]__0 [9]),
        .I2(rd_index1_IBUF[1]),
        .I3(\regfile_reg[1]__0 [9]),
        .I4(rd_index1_IBUF[0]),
        .I5(\regfile_reg[0]__0 [9]),
        .O(\rd_data1[9]_i_2_n_0 ));
  OBUF \rd_data1_OBUF[0]_inst 
       (.I(rd_data1_OBUF[0]),
        .O(rd_data1[0]));
  OBUF \rd_data1_OBUF[10]_inst 
       (.I(rd_data1_OBUF[10]),
        .O(rd_data1[10]));
  OBUF \rd_data1_OBUF[11]_inst 
       (.I(rd_data1_OBUF[11]),
        .O(rd_data1[11]));
  OBUF \rd_data1_OBUF[12]_inst 
       (.I(rd_data1_OBUF[12]),
        .O(rd_data1[12]));
  OBUF \rd_data1_OBUF[13]_inst 
       (.I(rd_data1_OBUF[13]),
        .O(rd_data1[13]));
  OBUF \rd_data1_OBUF[14]_inst 
       (.I(rd_data1_OBUF[14]),
        .O(rd_data1[14]));
  OBUF \rd_data1_OBUF[15]_inst 
       (.I(rd_data1_OBUF[15]),
        .O(rd_data1[15]));
  OBUF \rd_data1_OBUF[16]_inst 
       (.I(rd_data1_OBUF[16]),
        .O(rd_data1[16]));
  OBUF \rd_data1_OBUF[17]_inst 
       (.I(rd_data1_OBUF[17]),
        .O(rd_data1[17]));
  OBUF \rd_data1_OBUF[18]_inst 
       (.I(rd_data1_OBUF[18]),
        .O(rd_data1[18]));
  OBUF \rd_data1_OBUF[19]_inst 
       (.I(rd_data1_OBUF[19]),
        .O(rd_data1[19]));
  OBUF \rd_data1_OBUF[1]_inst 
       (.I(rd_data1_OBUF[1]),
        .O(rd_data1[1]));
  OBUF \rd_data1_OBUF[20]_inst 
       (.I(rd_data1_OBUF[20]),
        .O(rd_data1[20]));
  OBUF \rd_data1_OBUF[21]_inst 
       (.I(rd_data1_OBUF[21]),
        .O(rd_data1[21]));
  OBUF \rd_data1_OBUF[22]_inst 
       (.I(rd_data1_OBUF[22]),
        .O(rd_data1[22]));
  OBUF \rd_data1_OBUF[23]_inst 
       (.I(rd_data1_OBUF[23]),
        .O(rd_data1[23]));
  OBUF \rd_data1_OBUF[24]_inst 
       (.I(rd_data1_OBUF[24]),
        .O(rd_data1[24]));
  OBUF \rd_data1_OBUF[25]_inst 
       (.I(rd_data1_OBUF[25]),
        .O(rd_data1[25]));
  OBUF \rd_data1_OBUF[26]_inst 
       (.I(rd_data1_OBUF[26]),
        .O(rd_data1[26]));
  OBUF \rd_data1_OBUF[27]_inst 
       (.I(rd_data1_OBUF[27]),
        .O(rd_data1[27]));
  OBUF \rd_data1_OBUF[28]_inst 
       (.I(rd_data1_OBUF[28]),
        .O(rd_data1[28]));
  OBUF \rd_data1_OBUF[29]_inst 
       (.I(rd_data1_OBUF[29]),
        .O(rd_data1[29]));
  OBUF \rd_data1_OBUF[2]_inst 
       (.I(rd_data1_OBUF[2]),
        .O(rd_data1[2]));
  OBUF \rd_data1_OBUF[30]_inst 
       (.I(rd_data1_OBUF[30]),
        .O(rd_data1[30]));
  OBUF \rd_data1_OBUF[31]_inst 
       (.I(rd_data1_OBUF[31]),
        .O(rd_data1[31]));
  OBUF \rd_data1_OBUF[3]_inst 
       (.I(rd_data1_OBUF[3]),
        .O(rd_data1[3]));
  OBUF \rd_data1_OBUF[4]_inst 
       (.I(rd_data1_OBUF[4]),
        .O(rd_data1[4]));
  OBUF \rd_data1_OBUF[5]_inst 
       (.I(rd_data1_OBUF[5]),
        .O(rd_data1[5]));
  OBUF \rd_data1_OBUF[6]_inst 
       (.I(rd_data1_OBUF[6]),
        .O(rd_data1[6]));
  OBUF \rd_data1_OBUF[7]_inst 
       (.I(rd_data1_OBUF[7]),
        .O(rd_data1[7]));
  OBUF \rd_data1_OBUF[8]_inst 
       (.I(rd_data1_OBUF[8]),
        .O(rd_data1[8]));
  OBUF \rd_data1_OBUF[9]_inst 
       (.I(rd_data1_OBUF[9]),
        .O(rd_data1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[0]),
        .Q(rd_data1_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[10]),
        .Q(rd_data1_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[11]),
        .Q(rd_data1_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[12]),
        .Q(rd_data1_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[13]),
        .Q(rd_data1_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[14]),
        .Q(rd_data1_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[15]),
        .Q(rd_data1_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[16]),
        .Q(rd_data1_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[17]),
        .Q(rd_data1_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[18]),
        .Q(rd_data1_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[19]),
        .Q(rd_data1_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[1]),
        .Q(rd_data1_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[20]),
        .Q(rd_data1_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[21]),
        .Q(rd_data1_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[22]),
        .Q(rd_data1_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[23]),
        .Q(rd_data1_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[24]),
        .Q(rd_data1_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[25] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[25]),
        .Q(rd_data1_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[26]),
        .Q(rd_data1_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[27]),
        .Q(rd_data1_OBUF[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[28]),
        .Q(rd_data1_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[29] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[29]),
        .Q(rd_data1_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[2]),
        .Q(rd_data1_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[30]),
        .Q(rd_data1_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[31]),
        .Q(rd_data1_OBUF[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[3]),
        .Q(rd_data1_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[4]),
        .Q(rd_data1_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[5]),
        .Q(rd_data1_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[6]),
        .Q(rd_data1_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[7]),
        .Q(rd_data1_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[8]),
        .Q(rd_data1_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data1_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data1[31]_i_1_n_0 ),
        .D(regfile[9]),
        .Q(rd_data1_OBUF[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[0]_i_1 
       (.I0(\regfile_reg[4]__0 [0]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[0]_i_2_n_0 ),
        .O(\rd_data2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[0]_i_2 
       (.I0(\regfile_reg[3]__0 [0]),
        .I1(\regfile_reg[2]__0 [0]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [0]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [0]),
        .O(\rd_data2[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[10]_i_1 
       (.I0(\regfile_reg[4]__0 [10]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[10]_i_2_n_0 ),
        .O(\rd_data2[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[10]_i_2 
       (.I0(\regfile_reg[3]__0 [10]),
        .I1(\regfile_reg[2]__0 [10]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [10]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [10]),
        .O(\rd_data2[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[11]_i_1 
       (.I0(\regfile_reg[4]__0 [11]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[11]_i_2_n_0 ),
        .O(\rd_data2[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[11]_i_2 
       (.I0(\regfile_reg[3]__0 [11]),
        .I1(\regfile_reg[2]__0 [11]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [11]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [11]),
        .O(\rd_data2[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[12]_i_1 
       (.I0(\regfile_reg[4]__0 [12]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[12]_i_2_n_0 ),
        .O(\rd_data2[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[12]_i_2 
       (.I0(\regfile_reg[3]__0 [12]),
        .I1(\regfile_reg[2]__0 [12]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [12]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [12]),
        .O(\rd_data2[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[13]_i_1 
       (.I0(\regfile_reg[4]__0 [13]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[13]_i_2_n_0 ),
        .O(\rd_data2[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[13]_i_2 
       (.I0(\regfile_reg[3]__0 [13]),
        .I1(\regfile_reg[2]__0 [13]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [13]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [13]),
        .O(\rd_data2[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[14]_i_1 
       (.I0(\regfile_reg[4]__0 [14]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[14]_i_2_n_0 ),
        .O(\rd_data2[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[14]_i_2 
       (.I0(\regfile_reg[3]__0 [14]),
        .I1(\regfile_reg[2]__0 [14]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [14]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [14]),
        .O(\rd_data2[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[15]_i_1 
       (.I0(\regfile_reg[4]__0 [15]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[15]_i_2_n_0 ),
        .O(\rd_data2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[15]_i_2 
       (.I0(\regfile_reg[3]__0 [15]),
        .I1(\regfile_reg[2]__0 [15]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [15]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [15]),
        .O(\rd_data2[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[16]_i_1 
       (.I0(\regfile_reg[4]__0 [16]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[16]_i_2_n_0 ),
        .O(\rd_data2[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[16]_i_2 
       (.I0(\regfile_reg[3]__0 [16]),
        .I1(\regfile_reg[2]__0 [16]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [16]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [16]),
        .O(\rd_data2[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[17]_i_1 
       (.I0(\regfile_reg[4]__0 [17]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[17]_i_2_n_0 ),
        .O(\rd_data2[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[17]_i_2 
       (.I0(\regfile_reg[3]__0 [17]),
        .I1(\regfile_reg[2]__0 [17]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [17]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [17]),
        .O(\rd_data2[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[18]_i_1 
       (.I0(\regfile_reg[4]__0 [18]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[18]_i_2_n_0 ),
        .O(\rd_data2[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[18]_i_2 
       (.I0(\regfile_reg[3]__0 [18]),
        .I1(\regfile_reg[2]__0 [18]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [18]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [18]),
        .O(\rd_data2[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[19]_i_1 
       (.I0(\regfile_reg[4]__0 [19]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[19]_i_2_n_0 ),
        .O(\rd_data2[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[19]_i_2 
       (.I0(\regfile_reg[3]__0 [19]),
        .I1(\regfile_reg[2]__0 [19]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [19]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [19]),
        .O(\rd_data2[19]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[1]_i_1 
       (.I0(\regfile_reg[4]__0 [1]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[1]_i_2_n_0 ),
        .O(\rd_data2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[1]_i_2 
       (.I0(\regfile_reg[3]__0 [1]),
        .I1(\regfile_reg[2]__0 [1]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [1]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [1]),
        .O(\rd_data2[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[20]_i_1 
       (.I0(\regfile_reg[4]__0 [20]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[20]_i_2_n_0 ),
        .O(\rd_data2[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[20]_i_2 
       (.I0(\regfile_reg[3]__0 [20]),
        .I1(\regfile_reg[2]__0 [20]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [20]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [20]),
        .O(\rd_data2[20]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[21]_i_1 
       (.I0(\regfile_reg[4]__0 [21]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[21]_i_2_n_0 ),
        .O(\rd_data2[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[21]_i_2 
       (.I0(\regfile_reg[3]__0 [21]),
        .I1(\regfile_reg[2]__0 [21]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [21]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [21]),
        .O(\rd_data2[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[22]_i_1 
       (.I0(\regfile_reg[4]__0 [22]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[22]_i_2_n_0 ),
        .O(\rd_data2[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[22]_i_2 
       (.I0(\regfile_reg[3]__0 [22]),
        .I1(\regfile_reg[2]__0 [22]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [22]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [22]),
        .O(\rd_data2[22]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[23]_i_1 
       (.I0(\regfile_reg[4]__0 [23]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[23]_i_2_n_0 ),
        .O(\rd_data2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[23]_i_2 
       (.I0(\regfile_reg[3]__0 [23]),
        .I1(\regfile_reg[2]__0 [23]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [23]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [23]),
        .O(\rd_data2[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[24]_i_1 
       (.I0(\regfile_reg[4]__0 [24]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[24]_i_2_n_0 ),
        .O(\rd_data2[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[24]_i_2 
       (.I0(\regfile_reg[3]__0 [24]),
        .I1(\regfile_reg[2]__0 [24]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [24]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [24]),
        .O(\rd_data2[24]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[25]_i_1 
       (.I0(\regfile_reg[4]__0 [25]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[25]_i_2_n_0 ),
        .O(\rd_data2[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[25]_i_2 
       (.I0(\regfile_reg[3]__0 [25]),
        .I1(\regfile_reg[2]__0 [25]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [25]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [25]),
        .O(\rd_data2[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[26]_i_1 
       (.I0(\regfile_reg[4]__0 [26]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[26]_i_2_n_0 ),
        .O(\rd_data2[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[26]_i_2 
       (.I0(\regfile_reg[3]__0 [26]),
        .I1(\regfile_reg[2]__0 [26]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [26]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [26]),
        .O(\rd_data2[26]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[27]_i_1 
       (.I0(\regfile_reg[4]__0 [27]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[27]_i_2_n_0 ),
        .O(\rd_data2[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[27]_i_2 
       (.I0(\regfile_reg[3]__0 [27]),
        .I1(\regfile_reg[2]__0 [27]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [27]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [27]),
        .O(\rd_data2[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[28]_i_1 
       (.I0(\regfile_reg[4]__0 [28]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[28]_i_2_n_0 ),
        .O(\rd_data2[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[28]_i_2 
       (.I0(\regfile_reg[3]__0 [28]),
        .I1(\regfile_reg[2]__0 [28]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [28]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [28]),
        .O(\rd_data2[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[29]_i_1 
       (.I0(\regfile_reg[4]__0 [29]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[29]_i_2_n_0 ),
        .O(\rd_data2[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[29]_i_2 
       (.I0(\regfile_reg[3]__0 [29]),
        .I1(\regfile_reg[2]__0 [29]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [29]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [29]),
        .O(\rd_data2[29]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[2]_i_1 
       (.I0(\regfile_reg[4]__0 [2]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[2]_i_2_n_0 ),
        .O(\rd_data2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[2]_i_2 
       (.I0(\regfile_reg[3]__0 [2]),
        .I1(\regfile_reg[2]__0 [2]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [2]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [2]),
        .O(\rd_data2[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[30]_i_1 
       (.I0(\regfile_reg[4]__0 [30]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[30]_i_2_n_0 ),
        .O(\rd_data2[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[30]_i_2 
       (.I0(\regfile_reg[3]__0 [30]),
        .I1(\regfile_reg[2]__0 [30]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [30]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [30]),
        .O(\rd_data2[30]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \rd_data2[31]_i_1 
       (.I0(rd_en2_IBUF),
        .I1(reset_IBUF),
        .O(\rd_data2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[31]_i_2 
       (.I0(\regfile_reg[4]__0 [31]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[31]_i_3_n_0 ),
        .O(\rd_data2[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[31]_i_3 
       (.I0(\regfile_reg[3]__0 [31]),
        .I1(\regfile_reg[2]__0 [31]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [31]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [31]),
        .O(\rd_data2[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[3]_i_1 
       (.I0(\regfile_reg[4]__0 [3]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[3]_i_2_n_0 ),
        .O(\rd_data2[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[3]_i_2 
       (.I0(\regfile_reg[3]__0 [3]),
        .I1(\regfile_reg[2]__0 [3]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [3]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [3]),
        .O(\rd_data2[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[4]_i_1 
       (.I0(\regfile_reg[4]__0 [4]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[4]_i_2_n_0 ),
        .O(\rd_data2[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[4]_i_2 
       (.I0(\regfile_reg[3]__0 [4]),
        .I1(\regfile_reg[2]__0 [4]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [4]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [4]),
        .O(\rd_data2[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[5]_i_1 
       (.I0(\regfile_reg[4]__0 [5]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[5]_i_2_n_0 ),
        .O(\rd_data2[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[5]_i_2 
       (.I0(\regfile_reg[3]__0 [5]),
        .I1(\regfile_reg[2]__0 [5]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [5]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [5]),
        .O(\rd_data2[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[6]_i_1 
       (.I0(\regfile_reg[4]__0 [6]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[6]_i_2_n_0 ),
        .O(\rd_data2[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[6]_i_2 
       (.I0(\regfile_reg[3]__0 [6]),
        .I1(\regfile_reg[2]__0 [6]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [6]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [6]),
        .O(\rd_data2[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[7]_i_1 
       (.I0(\regfile_reg[4]__0 [7]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[7]_i_2_n_0 ),
        .O(\rd_data2[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[7]_i_2 
       (.I0(\regfile_reg[3]__0 [7]),
        .I1(\regfile_reg[2]__0 [7]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [7]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [7]),
        .O(\rd_data2[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[8]_i_1 
       (.I0(\regfile_reg[4]__0 [8]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[8]_i_2_n_0 ),
        .O(\rd_data2[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[8]_i_2 
       (.I0(\regfile_reg[3]__0 [8]),
        .I1(\regfile_reg[2]__0 [8]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [8]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [8]),
        .O(\rd_data2[8]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rd_data2[9]_i_1 
       (.I0(\regfile_reg[4]__0 [9]),
        .I1(rd_index2_IBUF[2]),
        .I2(\rd_data2[9]_i_2_n_0 ),
        .O(\rd_data2[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \rd_data2[9]_i_2 
       (.I0(\regfile_reg[3]__0 [9]),
        .I1(\regfile_reg[2]__0 [9]),
        .I2(rd_index2_IBUF[1]),
        .I3(\regfile_reg[1]__0 [9]),
        .I4(rd_index2_IBUF[0]),
        .I5(\regfile_reg[0]__0 [9]),
        .O(\rd_data2[9]_i_2_n_0 ));
  OBUF \rd_data2_OBUF[0]_inst 
       (.I(rd_data2_OBUF[0]),
        .O(rd_data2[0]));
  OBUF \rd_data2_OBUF[10]_inst 
       (.I(rd_data2_OBUF[10]),
        .O(rd_data2[10]));
  OBUF \rd_data2_OBUF[11]_inst 
       (.I(rd_data2_OBUF[11]),
        .O(rd_data2[11]));
  OBUF \rd_data2_OBUF[12]_inst 
       (.I(rd_data2_OBUF[12]),
        .O(rd_data2[12]));
  OBUF \rd_data2_OBUF[13]_inst 
       (.I(rd_data2_OBUF[13]),
        .O(rd_data2[13]));
  OBUF \rd_data2_OBUF[14]_inst 
       (.I(rd_data2_OBUF[14]),
        .O(rd_data2[14]));
  OBUF \rd_data2_OBUF[15]_inst 
       (.I(rd_data2_OBUF[15]),
        .O(rd_data2[15]));
  OBUF \rd_data2_OBUF[16]_inst 
       (.I(rd_data2_OBUF[16]),
        .O(rd_data2[16]));
  OBUF \rd_data2_OBUF[17]_inst 
       (.I(rd_data2_OBUF[17]),
        .O(rd_data2[17]));
  OBUF \rd_data2_OBUF[18]_inst 
       (.I(rd_data2_OBUF[18]),
        .O(rd_data2[18]));
  OBUF \rd_data2_OBUF[19]_inst 
       (.I(rd_data2_OBUF[19]),
        .O(rd_data2[19]));
  OBUF \rd_data2_OBUF[1]_inst 
       (.I(rd_data2_OBUF[1]),
        .O(rd_data2[1]));
  OBUF \rd_data2_OBUF[20]_inst 
       (.I(rd_data2_OBUF[20]),
        .O(rd_data2[20]));
  OBUF \rd_data2_OBUF[21]_inst 
       (.I(rd_data2_OBUF[21]),
        .O(rd_data2[21]));
  OBUF \rd_data2_OBUF[22]_inst 
       (.I(rd_data2_OBUF[22]),
        .O(rd_data2[22]));
  OBUF \rd_data2_OBUF[23]_inst 
       (.I(rd_data2_OBUF[23]),
        .O(rd_data2[23]));
  OBUF \rd_data2_OBUF[24]_inst 
       (.I(rd_data2_OBUF[24]),
        .O(rd_data2[24]));
  OBUF \rd_data2_OBUF[25]_inst 
       (.I(rd_data2_OBUF[25]),
        .O(rd_data2[25]));
  OBUF \rd_data2_OBUF[26]_inst 
       (.I(rd_data2_OBUF[26]),
        .O(rd_data2[26]));
  OBUF \rd_data2_OBUF[27]_inst 
       (.I(rd_data2_OBUF[27]),
        .O(rd_data2[27]));
  OBUF \rd_data2_OBUF[28]_inst 
       (.I(rd_data2_OBUF[28]),
        .O(rd_data2[28]));
  OBUF \rd_data2_OBUF[29]_inst 
       (.I(rd_data2_OBUF[29]),
        .O(rd_data2[29]));
  OBUF \rd_data2_OBUF[2]_inst 
       (.I(rd_data2_OBUF[2]),
        .O(rd_data2[2]));
  OBUF \rd_data2_OBUF[30]_inst 
       (.I(rd_data2_OBUF[30]),
        .O(rd_data2[30]));
  OBUF \rd_data2_OBUF[31]_inst 
       (.I(rd_data2_OBUF[31]),
        .O(rd_data2[31]));
  OBUF \rd_data2_OBUF[3]_inst 
       (.I(rd_data2_OBUF[3]),
        .O(rd_data2[3]));
  OBUF \rd_data2_OBUF[4]_inst 
       (.I(rd_data2_OBUF[4]),
        .O(rd_data2[4]));
  OBUF \rd_data2_OBUF[5]_inst 
       (.I(rd_data2_OBUF[5]),
        .O(rd_data2[5]));
  OBUF \rd_data2_OBUF[6]_inst 
       (.I(rd_data2_OBUF[6]),
        .O(rd_data2[6]));
  OBUF \rd_data2_OBUF[7]_inst 
       (.I(rd_data2_OBUF[7]),
        .O(rd_data2[7]));
  OBUF \rd_data2_OBUF[8]_inst 
       (.I(rd_data2_OBUF[8]),
        .O(rd_data2[8]));
  OBUF \rd_data2_OBUF[9]_inst 
       (.I(rd_data2_OBUF[9]),
        .O(rd_data2[9]));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[0] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[0]_i_1_n_0 ),
        .Q(rd_data2_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[10] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[10]_i_1_n_0 ),
        .Q(rd_data2_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[11] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[11]_i_1_n_0 ),
        .Q(rd_data2_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[12] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[12]_i_1_n_0 ),
        .Q(rd_data2_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[13] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[13]_i_1_n_0 ),
        .Q(rd_data2_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[14] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[14]_i_1_n_0 ),
        .Q(rd_data2_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[15] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[15]_i_1_n_0 ),
        .Q(rd_data2_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[16] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[16]_i_1_n_0 ),
        .Q(rd_data2_OBUF[16]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[17] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[17]_i_1_n_0 ),
        .Q(rd_data2_OBUF[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[18] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[18]_i_1_n_0 ),
        .Q(rd_data2_OBUF[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[19] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[19]_i_1_n_0 ),
        .Q(rd_data2_OBUF[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[1] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[1]_i_1_n_0 ),
        .Q(rd_data2_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[20] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[20]_i_1_n_0 ),
        .Q(rd_data2_OBUF[20]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[21] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[21]_i_1_n_0 ),
        .Q(rd_data2_OBUF[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[22] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[22]_i_1_n_0 ),
        .Q(rd_data2_OBUF[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[23] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[23]_i_1_n_0 ),
        .Q(rd_data2_OBUF[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[24] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[24]_i_1_n_0 ),
        .Q(rd_data2_OBUF[24]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[25] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[25]_i_1_n_0 ),
        .Q(rd_data2_OBUF[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[26] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[26]_i_1_n_0 ),
        .Q(rd_data2_OBUF[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[27] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[27]_i_1_n_0 ),
        .Q(rd_data2_OBUF[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[28] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[28]_i_1_n_0 ),
        .Q(rd_data2_OBUF[28]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[29] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[29]_i_1_n_0 ),
        .Q(rd_data2_OBUF[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[2] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[2]_i_1_n_0 ),
        .Q(rd_data2_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[30] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[30]_i_1_n_0 ),
        .Q(rd_data2_OBUF[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[31] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[31]_i_2_n_0 ),
        .Q(rd_data2_OBUF[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[3] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[3]_i_1_n_0 ),
        .Q(rd_data2_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[4] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[4]_i_1_n_0 ),
        .Q(rd_data2_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[5] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[5]_i_1_n_0 ),
        .Q(rd_data2_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[6] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[6]_i_1_n_0 ),
        .Q(rd_data2_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[7] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[7]_i_1_n_0 ),
        .Q(rd_data2_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[8] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[8]_i_1_n_0 ),
        .Q(rd_data2_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rd_data2_reg[9] 
       (.C(clock_IBUF_BUFG),
        .CE(\rd_data2[31]_i_1_n_0 ),
        .D(\rd_data2[9]_i_1_n_0 ),
        .Q(rd_data2_OBUF[9]),
        .R(1'b0));
  IBUF rd_en1_IBUF_inst
       (.I(rd_en1),
        .O(rd_en1_IBUF));
  IBUF rd_en2_IBUF_inst
       (.I(rd_en2),
        .O(rd_en2_IBUF));
  IBUF \rd_index1_IBUF[0]_inst 
       (.I(rd_index1[0]),
        .O(rd_index1_IBUF[0]));
  IBUF \rd_index1_IBUF[1]_inst 
       (.I(rd_index1[1]),
        .O(rd_index1_IBUF[1]));
  IBUF \rd_index1_IBUF[2]_inst 
       (.I(rd_index1[2]),
        .O(rd_index1_IBUF[2]));
  IBUF \rd_index2_IBUF[0]_inst 
       (.I(rd_index2[0]),
        .O(rd_index2_IBUF[0]));
  IBUF \rd_index2_IBUF[1]_inst 
       (.I(rd_index2[1]),
        .O(rd_index2_IBUF[1]));
  IBUF \rd_index2_IBUF[2]_inst 
       (.I(rd_index2[2]),
        .O(rd_index2_IBUF[2]));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \regfile[0][31]_i_1 
       (.I0(wr_index_IBUF[3]),
        .I1(wr_index_IBUF[2]),
        .I2(wr_index_IBUF[0]),
        .I3(wr_index_IBUF[1]),
        .I4(wr_index_IBUF[4]),
        .I5(wr_en_IBUF),
        .O(\regfile[0][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \regfile[1][31]_i_1 
       (.I0(wr_index_IBUF[3]),
        .I1(wr_index_IBUF[2]),
        .I2(wr_index_IBUF[0]),
        .I3(wr_index_IBUF[1]),
        .I4(wr_index_IBUF[4]),
        .I5(wr_en_IBUF),
        .O(\regfile[1][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \regfile[2][31]_i_1 
       (.I0(wr_index_IBUF[3]),
        .I1(wr_index_IBUF[2]),
        .I2(wr_index_IBUF[1]),
        .I3(wr_index_IBUF[0]),
        .I4(wr_index_IBUF[4]),
        .I5(wr_en_IBUF),
        .O(\regfile[2][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \regfile[3][31]_i_1 
       (.I0(wr_index_IBUF[3]),
        .I1(wr_index_IBUF[2]),
        .I2(wr_index_IBUF[0]),
        .I3(wr_index_IBUF[1]),
        .I4(wr_index_IBUF[4]),
        .I5(wr_en_IBUF),
        .O(\regfile[3][31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \regfile[4][31]_i_1 
       (.I0(wr_index_IBUF[3]),
        .I1(wr_index_IBUF[1]),
        .I2(wr_index_IBUF[2]),
        .I3(wr_index_IBUF[0]),
        .I4(wr_index_IBUF[4]),
        .I5(wr_en_IBUF),
        .O(\regfile[4][31]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[0]),
        .Q(\regfile_reg[0]__0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][10] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[10]),
        .Q(\regfile_reg[0]__0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][11] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[11]),
        .Q(\regfile_reg[0]__0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][12] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[12]),
        .Q(\regfile_reg[0]__0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][13] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[13]),
        .Q(\regfile_reg[0]__0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][14] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[14]),
        .Q(\regfile_reg[0]__0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][15] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[15]),
        .Q(\regfile_reg[0]__0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][16] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[16]),
        .Q(\regfile_reg[0]__0 [16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][17] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[17]),
        .Q(\regfile_reg[0]__0 [17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][18] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[18]),
        .Q(\regfile_reg[0]__0 [18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][19] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[19]),
        .Q(\regfile_reg[0]__0 [19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[1]),
        .Q(\regfile_reg[0]__0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][20] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[20]),
        .Q(\regfile_reg[0]__0 [20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][21] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[21]),
        .Q(\regfile_reg[0]__0 [21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][22] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[22]),
        .Q(\regfile_reg[0]__0 [22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][23] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[23]),
        .Q(\regfile_reg[0]__0 [23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][24] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[24]),
        .Q(\regfile_reg[0]__0 [24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][25] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[25]),
        .Q(\regfile_reg[0]__0 [25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][26] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[26]),
        .Q(\regfile_reg[0]__0 [26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][27] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[27]),
        .Q(\regfile_reg[0]__0 [27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][28] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[28]),
        .Q(\regfile_reg[0]__0 [28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][29] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[29]),
        .Q(\regfile_reg[0]__0 [29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[2]),
        .Q(\regfile_reg[0]__0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][30] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[30]),
        .Q(\regfile_reg[0]__0 [30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][31] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[31]),
        .Q(\regfile_reg[0]__0 [31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[3]),
        .Q(\regfile_reg[0]__0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[4]),
        .Q(\regfile_reg[0]__0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[5]),
        .Q(\regfile_reg[0]__0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[6]),
        .Q(\regfile_reg[0]__0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[7]),
        .Q(\regfile_reg[0]__0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][8] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[8]),
        .Q(\regfile_reg[0]__0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[0][9] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[0][31]_i_1_n_0 ),
        .D(wr_data_IBUF[9]),
        .Q(\regfile_reg[0]__0 [9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[0]),
        .Q(\regfile_reg[1]__0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][10] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[10]),
        .Q(\regfile_reg[1]__0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][11] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[11]),
        .Q(\regfile_reg[1]__0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][12] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[12]),
        .Q(\regfile_reg[1]__0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][13] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[13]),
        .Q(\regfile_reg[1]__0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][14] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[14]),
        .Q(\regfile_reg[1]__0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][15] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[15]),
        .Q(\regfile_reg[1]__0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][16] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[16]),
        .Q(\regfile_reg[1]__0 [16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][17] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[17]),
        .Q(\regfile_reg[1]__0 [17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][18] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[18]),
        .Q(\regfile_reg[1]__0 [18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][19] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[19]),
        .Q(\regfile_reg[1]__0 [19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[1]),
        .Q(\regfile_reg[1]__0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][20] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[20]),
        .Q(\regfile_reg[1]__0 [20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][21] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[21]),
        .Q(\regfile_reg[1]__0 [21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][22] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[22]),
        .Q(\regfile_reg[1]__0 [22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][23] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[23]),
        .Q(\regfile_reg[1]__0 [23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][24] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[24]),
        .Q(\regfile_reg[1]__0 [24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][25] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[25]),
        .Q(\regfile_reg[1]__0 [25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][26] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[26]),
        .Q(\regfile_reg[1]__0 [26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][27] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[27]),
        .Q(\regfile_reg[1]__0 [27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][28] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[28]),
        .Q(\regfile_reg[1]__0 [28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][29] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[29]),
        .Q(\regfile_reg[1]__0 [29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[2]),
        .Q(\regfile_reg[1]__0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][30] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[30]),
        .Q(\regfile_reg[1]__0 [30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][31] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[31]),
        .Q(\regfile_reg[1]__0 [31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[3]),
        .Q(\regfile_reg[1]__0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[4]),
        .Q(\regfile_reg[1]__0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[5]),
        .Q(\regfile_reg[1]__0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[6]),
        .Q(\regfile_reg[1]__0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[7]),
        .Q(\regfile_reg[1]__0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][8] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[8]),
        .Q(\regfile_reg[1]__0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[1][9] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[1][31]_i_1_n_0 ),
        .D(wr_data_IBUF[9]),
        .Q(\regfile_reg[1]__0 [9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[0]),
        .Q(\regfile_reg[2]__0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][10] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[10]),
        .Q(\regfile_reg[2]__0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][11] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[11]),
        .Q(\regfile_reg[2]__0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][12] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[12]),
        .Q(\regfile_reg[2]__0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][13] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[13]),
        .Q(\regfile_reg[2]__0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][14] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[14]),
        .Q(\regfile_reg[2]__0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][15] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[15]),
        .Q(\regfile_reg[2]__0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][16] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[16]),
        .Q(\regfile_reg[2]__0 [16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][17] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[17]),
        .Q(\regfile_reg[2]__0 [17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][18] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[18]),
        .Q(\regfile_reg[2]__0 [18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][19] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[19]),
        .Q(\regfile_reg[2]__0 [19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[1]),
        .Q(\regfile_reg[2]__0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][20] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[20]),
        .Q(\regfile_reg[2]__0 [20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][21] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[21]),
        .Q(\regfile_reg[2]__0 [21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][22] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[22]),
        .Q(\regfile_reg[2]__0 [22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][23] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[23]),
        .Q(\regfile_reg[2]__0 [23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][24] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[24]),
        .Q(\regfile_reg[2]__0 [24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][25] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[25]),
        .Q(\regfile_reg[2]__0 [25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][26] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[26]),
        .Q(\regfile_reg[2]__0 [26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][27] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[27]),
        .Q(\regfile_reg[2]__0 [27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][28] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[28]),
        .Q(\regfile_reg[2]__0 [28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][29] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[29]),
        .Q(\regfile_reg[2]__0 [29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[2]),
        .Q(\regfile_reg[2]__0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][30] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[30]),
        .Q(\regfile_reg[2]__0 [30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][31] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[31]),
        .Q(\regfile_reg[2]__0 [31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[3]),
        .Q(\regfile_reg[2]__0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[4]),
        .Q(\regfile_reg[2]__0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[5]),
        .Q(\regfile_reg[2]__0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[6]),
        .Q(\regfile_reg[2]__0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[7]),
        .Q(\regfile_reg[2]__0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][8] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[8]),
        .Q(\regfile_reg[2]__0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[2][9] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[2][31]_i_1_n_0 ),
        .D(wr_data_IBUF[9]),
        .Q(\regfile_reg[2]__0 [9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[0]),
        .Q(\regfile_reg[3]__0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][10] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[10]),
        .Q(\regfile_reg[3]__0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][11] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[11]),
        .Q(\regfile_reg[3]__0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][12] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[12]),
        .Q(\regfile_reg[3]__0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][13] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[13]),
        .Q(\regfile_reg[3]__0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][14] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[14]),
        .Q(\regfile_reg[3]__0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][15] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[15]),
        .Q(\regfile_reg[3]__0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][16] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[16]),
        .Q(\regfile_reg[3]__0 [16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][17] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[17]),
        .Q(\regfile_reg[3]__0 [17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][18] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[18]),
        .Q(\regfile_reg[3]__0 [18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][19] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[19]),
        .Q(\regfile_reg[3]__0 [19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[1]),
        .Q(\regfile_reg[3]__0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][20] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[20]),
        .Q(\regfile_reg[3]__0 [20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][21] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[21]),
        .Q(\regfile_reg[3]__0 [21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][22] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[22]),
        .Q(\regfile_reg[3]__0 [22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][23] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[23]),
        .Q(\regfile_reg[3]__0 [23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][24] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[24]),
        .Q(\regfile_reg[3]__0 [24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][25] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[25]),
        .Q(\regfile_reg[3]__0 [25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][26] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[26]),
        .Q(\regfile_reg[3]__0 [26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][27] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[27]),
        .Q(\regfile_reg[3]__0 [27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][28] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[28]),
        .Q(\regfile_reg[3]__0 [28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][29] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[29]),
        .Q(\regfile_reg[3]__0 [29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[2]),
        .Q(\regfile_reg[3]__0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][30] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[30]),
        .Q(\regfile_reg[3]__0 [30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][31] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[31]),
        .Q(\regfile_reg[3]__0 [31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[3]),
        .Q(\regfile_reg[3]__0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[4]),
        .Q(\regfile_reg[3]__0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[5]),
        .Q(\regfile_reg[3]__0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[6]),
        .Q(\regfile_reg[3]__0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[7]),
        .Q(\regfile_reg[3]__0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][8] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[8]),
        .Q(\regfile_reg[3]__0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[3][9] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[3][31]_i_1_n_0 ),
        .D(wr_data_IBUF[9]),
        .Q(\regfile_reg[3]__0 [9]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][0] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[0]),
        .Q(\regfile_reg[4]__0 [0]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][10] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[10]),
        .Q(\regfile_reg[4]__0 [10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][11] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[11]),
        .Q(\regfile_reg[4]__0 [11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][12] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[12]),
        .Q(\regfile_reg[4]__0 [12]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][13] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[13]),
        .Q(\regfile_reg[4]__0 [13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][14] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[14]),
        .Q(\regfile_reg[4]__0 [14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][15] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[15]),
        .Q(\regfile_reg[4]__0 [15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][16] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[16]),
        .Q(\regfile_reg[4]__0 [16]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][17] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[17]),
        .Q(\regfile_reg[4]__0 [17]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][18] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[18]),
        .Q(\regfile_reg[4]__0 [18]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][19] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[19]),
        .Q(\regfile_reg[4]__0 [19]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][1] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[1]),
        .Q(\regfile_reg[4]__0 [1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][20] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[20]),
        .Q(\regfile_reg[4]__0 [20]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][21] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[21]),
        .Q(\regfile_reg[4]__0 [21]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][22] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[22]),
        .Q(\regfile_reg[4]__0 [22]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][23] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[23]),
        .Q(\regfile_reg[4]__0 [23]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][24] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[24]),
        .Q(\regfile_reg[4]__0 [24]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][25] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[25]),
        .Q(\regfile_reg[4]__0 [25]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][26] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[26]),
        .Q(\regfile_reg[4]__0 [26]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][27] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[27]),
        .Q(\regfile_reg[4]__0 [27]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][28] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[28]),
        .Q(\regfile_reg[4]__0 [28]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][29] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[29]),
        .Q(\regfile_reg[4]__0 [29]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][2] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[2]),
        .Q(\regfile_reg[4]__0 [2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][30] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[30]),
        .Q(\regfile_reg[4]__0 [30]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][31] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[31]),
        .Q(\regfile_reg[4]__0 [31]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][3] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[3]),
        .Q(\regfile_reg[4]__0 [3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][4] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[4]),
        .Q(\regfile_reg[4]__0 [4]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][5] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[5]),
        .Q(\regfile_reg[4]__0 [5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][6] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[6]),
        .Q(\regfile_reg[4]__0 [6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][7] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[7]),
        .Q(\regfile_reg[4]__0 [7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][8] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[8]),
        .Q(\regfile_reg[4]__0 [8]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \regfile_reg[4][9] 
       (.C(clock_IBUF_BUFG),
        .CE(\regfile[4][31]_i_1_n_0 ),
        .D(wr_data_IBUF[9]),
        .Q(\regfile_reg[4]__0 [9]),
        .R(reset_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \wr_data_IBUF[0]_inst 
       (.I(wr_data[0]),
        .O(wr_data_IBUF[0]));
  IBUF \wr_data_IBUF[10]_inst 
       (.I(wr_data[10]),
        .O(wr_data_IBUF[10]));
  IBUF \wr_data_IBUF[11]_inst 
       (.I(wr_data[11]),
        .O(wr_data_IBUF[11]));
  IBUF \wr_data_IBUF[12]_inst 
       (.I(wr_data[12]),
        .O(wr_data_IBUF[12]));
  IBUF \wr_data_IBUF[13]_inst 
       (.I(wr_data[13]),
        .O(wr_data_IBUF[13]));
  IBUF \wr_data_IBUF[14]_inst 
       (.I(wr_data[14]),
        .O(wr_data_IBUF[14]));
  IBUF \wr_data_IBUF[15]_inst 
       (.I(wr_data[15]),
        .O(wr_data_IBUF[15]));
  IBUF \wr_data_IBUF[16]_inst 
       (.I(wr_data[16]),
        .O(wr_data_IBUF[16]));
  IBUF \wr_data_IBUF[17]_inst 
       (.I(wr_data[17]),
        .O(wr_data_IBUF[17]));
  IBUF \wr_data_IBUF[18]_inst 
       (.I(wr_data[18]),
        .O(wr_data_IBUF[18]));
  IBUF \wr_data_IBUF[19]_inst 
       (.I(wr_data[19]),
        .O(wr_data_IBUF[19]));
  IBUF \wr_data_IBUF[1]_inst 
       (.I(wr_data[1]),
        .O(wr_data_IBUF[1]));
  IBUF \wr_data_IBUF[20]_inst 
       (.I(wr_data[20]),
        .O(wr_data_IBUF[20]));
  IBUF \wr_data_IBUF[21]_inst 
       (.I(wr_data[21]),
        .O(wr_data_IBUF[21]));
  IBUF \wr_data_IBUF[22]_inst 
       (.I(wr_data[22]),
        .O(wr_data_IBUF[22]));
  IBUF \wr_data_IBUF[23]_inst 
       (.I(wr_data[23]),
        .O(wr_data_IBUF[23]));
  IBUF \wr_data_IBUF[24]_inst 
       (.I(wr_data[24]),
        .O(wr_data_IBUF[24]));
  IBUF \wr_data_IBUF[25]_inst 
       (.I(wr_data[25]),
        .O(wr_data_IBUF[25]));
  IBUF \wr_data_IBUF[26]_inst 
       (.I(wr_data[26]),
        .O(wr_data_IBUF[26]));
  IBUF \wr_data_IBUF[27]_inst 
       (.I(wr_data[27]),
        .O(wr_data_IBUF[27]));
  IBUF \wr_data_IBUF[28]_inst 
       (.I(wr_data[28]),
        .O(wr_data_IBUF[28]));
  IBUF \wr_data_IBUF[29]_inst 
       (.I(wr_data[29]),
        .O(wr_data_IBUF[29]));
  IBUF \wr_data_IBUF[2]_inst 
       (.I(wr_data[2]),
        .O(wr_data_IBUF[2]));
  IBUF \wr_data_IBUF[30]_inst 
       (.I(wr_data[30]),
        .O(wr_data_IBUF[30]));
  IBUF \wr_data_IBUF[31]_inst 
       (.I(wr_data[31]),
        .O(wr_data_IBUF[31]));
  IBUF \wr_data_IBUF[3]_inst 
       (.I(wr_data[3]),
        .O(wr_data_IBUF[3]));
  IBUF \wr_data_IBUF[4]_inst 
       (.I(wr_data[4]),
        .O(wr_data_IBUF[4]));
  IBUF \wr_data_IBUF[5]_inst 
       (.I(wr_data[5]),
        .O(wr_data_IBUF[5]));
  IBUF \wr_data_IBUF[6]_inst 
       (.I(wr_data[6]),
        .O(wr_data_IBUF[6]));
  IBUF \wr_data_IBUF[7]_inst 
       (.I(wr_data[7]),
        .O(wr_data_IBUF[7]));
  IBUF \wr_data_IBUF[8]_inst 
       (.I(wr_data[8]),
        .O(wr_data_IBUF[8]));
  IBUF \wr_data_IBUF[9]_inst 
       (.I(wr_data[9]),
        .O(wr_data_IBUF[9]));
  IBUF wr_en_IBUF_inst
       (.I(wr_en),
        .O(wr_en_IBUF));
  IBUF \wr_index_IBUF[0]_inst 
       (.I(wr_index[0]),
        .O(wr_index_IBUF[0]));
  IBUF \wr_index_IBUF[1]_inst 
       (.I(wr_index[1]),
        .O(wr_index_IBUF[1]));
  IBUF \wr_index_IBUF[2]_inst 
       (.I(wr_index[2]),
        .O(wr_index_IBUF[2]));
  IBUF \wr_index_IBUF[3]_inst 
       (.I(wr_index[3]),
        .O(wr_index_IBUF[3]));
  IBUF \wr_index_IBUF[4]_inst 
       (.I(wr_index[4]),
        .O(wr_index_IBUF[4]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
