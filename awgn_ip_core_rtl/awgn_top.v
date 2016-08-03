`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:58 08/03/2016 
// Design Name: 
// Module Name:    awgn_top 
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
module awgn_top(clk,reset,s0,s1,s2,s3,s4,s5,x0,x1
    );
input clk,reset;
input [31:0] s0,s1,s2,s3,s4,s5;
output [16:0] x0,x1;
wire [47:0] u0;
wire [15:0] u1;
wire [30:0]e;
wire [16:0]f;
wire [31:0] y0,y1;
wire [15:0]g0,g1;

taus_wrapper t1 (.clk(clk),
                  .reset(reset),
						.s0(s0),
						.s1(s1),
						.s2(s2),
						.s3(s3),
						.s4(s4),
						.s5(s5),
						.u0(u0),
						.u1(u1));
						
log_block l1 (.clk(clk),
               .u0(u0),
					 .e(e));

sqrt sq1 (.clk(clk),
                .in(e),
					.out(f));
					
sincos_block sc1 (.clk(clk),
                  .reset(reset),
						.u1(u1),
						.g0(g0),
						.g1(g1));

//final multiplication part
assign y0= f * g0[14:0];
assign y1 = f * g1[14:0];

assign x0={g0[15],y0[31:16]};
assign x1={g1[15],y1[31:16]};

endmodule
