`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2019 13:14:57
// Design Name: 
// Module Name: Adder
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
    input [31:0] A, B,
    input CLK, EN,
    output reg [32:0] Y
    );
    
    always @ (posedge CLK)
        if(EN)
            Y <= A + B;
        else
            Y <= A - B;
    
endmodule
