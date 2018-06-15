`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2019 10:06:19
// Design Name: 
// Module Name: counter
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


module counter(
    input clk,rst,
    output reg [3:0] y
    );
    
    wire clk_out;
    
     clk_wiz_0 instance_name
      (
       // Clock out ports
       .clk_out1(clk_out),     // output clk_out1
      // Clock in ports
       .clk_in1(clk));     
    
    always @ (posedge clk_out)
        if(!rst)
        y<=0;
        else
        y<=y+1;    
endmodule
