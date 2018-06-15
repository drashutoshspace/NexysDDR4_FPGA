`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.10.2019 14:06:17
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
    reg [23:0] temp=24'h0000_00;
    
    always @ (posedge clk)
        begin  
        temp<=temp+1;
            if(temp==24'hffff_ff)
                if (!rst)
                  y<=0;
                else
                  y<=y+1;
        end
       
   
endmodule
