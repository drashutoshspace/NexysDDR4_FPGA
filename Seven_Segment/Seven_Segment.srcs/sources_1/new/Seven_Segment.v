`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2019 14:10:42
// Design Name: 
// Module Name: Seven_Segment
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


module Seven_Segment(
    output [7:0] anode,
    output reg [7:0] segment,
    output reg [3:0] y,
    input clk, rst
    );
       reg [27:0] temp=28'h0000_000;
     
      assign anode = 8'b01010101;
       
     always @ (posedge clk)
         begin  
         temp<=temp+1;
             if(temp==28'hffff_fff)
                 if (!rst)
                   y<=0;
                 else
                  begin 
                   y<=y+1;
                 case (y)
                     4'b0000 : segment <= 8'b01000000;
                     4'b0001 : segment <= 8'b01111001;
                     4'b0010 : segment <= 8'b00100100;
                     4'b0011 : segment <= 8'b00110000;
                     4'b0100 : segment <= 8'b00011001;
                     4'b0101 : segment <= 8'b00010010;
                     4'b0110 : segment <= 8'b00000010;
                     4'b0111 : segment <= 8'b01111000;
                     4'b1000 : segment <= 8'b00000000;
                     4'b1001 : segment <= 8'b00010000;
                     4'b1010 : segment <= 8'b00001000;
                     4'b1011 : segment <= 8'b00000011;
                     4'b1100 : segment <= 8'b01000110;
                     4'b1101 : segment <= 8'b00100001;
                     4'b1110 : segment <= 8'b00000110;
                     4'b1111 : segment <= 8'b00001110;
                     default : segment <= 8'b11111111;
                 endcase
            end
        end     
endmodule
