`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:14:58 07/30/2016 
// Design Name: 
// Module Name:    log_block 
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
module log_block(clk,u0,e
    );
//port declarations
input clk;
input [47:0] u0;
output reg [30:0] e;
//wire & reg declarations
wire [47:0] x_e;
wire [7:0] x_a;
wire [39:0] x_b;
wire [5:0] lzd_op,exp_e;
wire lzd_v;

wire [52:0] m1;
wire [21:0]m4,m5;
wire [22:0]m2;
wire [61:0]m3;
wire [26:0]y_e;
wire [30:0]y_e_add,y_e_sub;
wire [31:0] e_bar,y_e_new,e_temp;
wire [32:0] e_final;
wire [51:0]rdata,wdata;



reg we;
reg [5:0] exp_e_reg;
reg [47:0]x_e_reg;
wire [21:0]c1_log_reg;
wire [29:0]c0_log_reg;
reg [12:0]c2_log_reg;
//memory instantiation for lookup table
mem_128x52 mem (
		.clk(clk), 
		.rdata(rdata), 
		.wdata(wdata),
		.we(we), 
		.addr(x_e[46:40])
	);
//assign we = 1'b0;	

//---------------------
lzd48 lzd_log1(u0,lzd_op,lzd_v);
assign exp_e= lzd_op + 1'b1;
//--------------------------
lshift_48 lshift_log1(u0,lzd_op,x_e);
wire x_comb;
//Logarithm calculation using lookup table & polynomial approx.
assign x_a = x_e_reg[47:40];
assign x_b = x_e_reg[39:0];
assign x_comb= x_e_reg[46] | x_e_reg[45] | x_e_reg[44] |x_e_reg[43] |x_e_reg[42] |x_e_reg[41] |x_e_reg[40]; 
assign c0_log_reg = x_comb ? rdata[51:22]:30'b000000011001101000110101111001;
assign c1_log_reg = x_comb ?rdata[21:0]: 22'b1110101001101110000100;
//--------------------------
//multiplier implementation part 1
//wire [4:0] p1;
//assign p1 = 3'b100 + 4'b1101;
assign m1 =  x_b  * c2_log_reg;

//-------------------------

//assign m2 = ~m1[52:31] + c1_log_reg + 1'b1;
assign m2 =  c1_log_reg - m1[52:40];
assign m4 = ~m2[21:0] + 1'b1;

assign m5 = m2[22] ? m2[21:0]: m4;
assign m3 = m5 * x_b;
//-------------------------
assign y_e_add= c0_log_reg + m3[61:39];
assign y_e_sub = c0_log_reg - m3[61:39];
assign y_e = m2[22]? y_e_add[30:4]:y_e_sub[30:4];


//Range reconstruction part
assign e_bar =  exp_e_reg * 26'b10110001011100100001100000;
assign y_e_new = y_e;
assign e_temp = e_bar - y_e_new;
assign e_final = e_temp <<1;

always @ (posedge clk)
begin
we <=1'b0;
exp_e_reg <=exp_e;
       
x_e_reg <=x_e;

c2_log_reg <= 13'b0111011110010;
//c0_log_reg <= rdata[51:22];
//c1_log_reg <= rdata[21:0];

//c1_log_reg <= 22'b1110101001101110000100;
//c0_log_reg <= 30'b000000011001101000110101111001;
e <= e_final[32:2]  ;


end
endmodule
