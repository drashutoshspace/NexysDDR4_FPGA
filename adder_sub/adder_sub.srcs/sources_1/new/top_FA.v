`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2019 12:27:08
// Design Name: 
// Module Name: top_FA
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


module top_FA(
    input [4:0] in_1,
    input sel,
    input [4:0] in_2,
    output [5:0] out_sum
    );
    wire c1,c2,c3,c4;
        FA fa1 (.a(in_1[0]),.b(in_2[0]^sel),.cin(sel),.sum(out_sum[0]),.cout(c1));
        FA fa2 (.a(in_1[1]),.b(in_2[1]^sel),.cin(c1),.sum(out_sum[1]),.cout(c2));
        FA fa3 (.a(in_1[2]),.b(in_2[2]^sel),.cin(c2),.sum(out_sum[2]),.cout(c3));
        FA fa4 (.a(in_1[3]),.b(in_2[3]^sel),.cin(c3),.sum(out_sum[3]),.cout(c4));
        FA fa5 (.a(in_1[4]),.b(in_2[4]^sel),.cin(c4),.sum(out_sum[4]),.cout(out_sum[5]));
endmodule
