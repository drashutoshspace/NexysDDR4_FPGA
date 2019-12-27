`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2019 12:30:48
// Design Name: 
// Module Name: FA
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


module FA(
    input a,
    input b,
    input cin,
    output sum,
    output cout
    );
    wire s1,s2,s3;
    
    HA ha1 (.in_a(a),.in_b(b),.sum_ha(s1),.cout_ha(s2));
    HA ha2 (.in_a(s1),.in_b(cin),.sum_ha(sum),.cout_ha(s3));
    assign cout = s3 | s2;
endmodule
