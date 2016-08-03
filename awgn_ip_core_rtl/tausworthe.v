`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:27:38 07/27/2016 
// Design Name: 
// Module Name:    tausworthe 
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

module tausworthe(clk,reset,s0,s1,s2,r
    );

input clk, reset;
input [31:0] s0,s1,s2;
output reg[31:0] r;

wire [31:0] b1,b2,b0,d0,d1,d2,w0,w1,w2;
wire [31:0] y0,y1,y2,x0,x1,x2,c0,c1,c2;
wire [31:0] r_temp;
reg [31:0] p2,p1,p0;
reg flag;

//Tausworthe block

//lshift ls0(s0,6'b001101,w0);
assign w0=p0 << 13;
assign y0= w0 ^ p0;
//rshift rs0(y0,6'b010011,b0);
assign b0= y0 >> 19;

assign c0 = p0 & 32'hfffffffe;
//lshift ls11(c0,6'b001100,d0);
assign d0= c0 << 12;

//lshift ls1(s1,6'b000010,w1);
assign w1= p1 << 2;
assign y1= w1 ^ p1;
//rshift rs1(y1,6'b011001,b1);
assign b1= y1 >> 25;

assign c1 = p1 & 32'hfffffff8;
//lshift ls22(c1,6'b000100,d1);
assign d1=c1<<4;

//lshift ls2(s2,6'b000011,w2);
assign w2=p2<<3;
assign y2= w2 ^ p2;
//rshift rs2(y2,6'b001011,b2);
assign b2=y2>>11;

assign c2 = p2 & 32'hfffffff0;
//lshift ls33(c2,6'b010001,d2);
assign d2=c2<<17;

//always @ (*)
//begin
assign r_temp = x0 ^ x1 ^ x2;
assign x0= b0 ^ d0;
assign x1= b1 ^ d1;
assign x2= b2 ^ d2;
//end

always @ (posedge clk)
begin
if (reset) flag<=1'b0;
else begin
if (~flag)
   begin {p2,p1,p0}<={s2,s1,s0};
	flag <=1'b1; end
  
else
  {p2,p1,p0}<={x2,x1,x0};
  
end
r<=r_temp;
end
endmodule
