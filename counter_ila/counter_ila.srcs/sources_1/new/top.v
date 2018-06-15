`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.10.2019 13:19:56
// Design Name: 
// Module Name: top
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


module top(
    input CLK
    );
    wire [32:0] Y;
    wire [31:0] A,B;
    wire EN;
            
    vio_0 your_instance_name (
      .clk(CLK),                // input wire clk
      .probe_in0(Y),    // input wire [32 : 0] probe_in0
      .probe_out0(A),  // output wire [31 : 0] probe_out0
      .probe_out1(B),  // output wire [31 : 0] probe_out1
      .probe_out2(EN)  // output wire [0 : 0] probe_out2
    );

    Adder a1 (A,B,CLK,EN,Y);
    
endmodule
