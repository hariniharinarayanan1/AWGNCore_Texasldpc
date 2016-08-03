`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:12:06 07/28/2016 
// Design Name: 
// Module Name:    taus_wrapper 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module taus_wrapper(clk,reset,s0,s1,s2,s3,s4,s5,u0,u1
    );
input clk,reset;
input [31:0] s0,s1,s2,s3,s4,s5;
output [47:0] u0;
output [15:0] u1;

wire [31:0] w0,w1;
//instantiating two tausworthe URNGs

tausworthe taus1(clk,reset,s0,s1,s2,w0);
tausworthe taus2(clk,reset,s3,s4,s5,w1);

assign u0= {w0,w1[31:16]};
assign u1=w1[15:0];

endmodule
