`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2019 14:11:42
// Design Name: 
// Module Name: tb_counter
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


module tb_counter(

    );
    
    wire [3:0]y;
    reg rst,clk;
    counter c1(clk,rst,y);
    
    initial
        clk=0;
    always 
        #5 clk=~clk;
    initial
        begin
            rst=0;
            #20 rst=1;
        end
endmodule
