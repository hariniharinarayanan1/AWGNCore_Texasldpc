`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:50:03 08/02/2016 
// Design Name: 
// Module Name:    sqrt_block 
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
module sqrt(clk,in,out
    );
input clk;
input [30:0] in;
output reg[16:0] out;

wire [5:0]exp_f,exp_fbar,exp_f1;
wire [36:0]x12,x24;
wire [19:0]y12,y24;
wire [45:0]y_ans_temp,y_1;

wire [14:0]y_ans;
wire [4:0] w1;
wire [47:0] x_bar;
wire [30:0]x_fbar,x_fbar_temp,x_f;
wire [18:0] rdata,c0;
wire wdata;
wire [1:0]flag;

reg [11:0]c1_12,c1_24;
reg y_f_final;
reg we;
reg [30:0]in_reg;
reg [30:0]x_f_reg;
reg [5:0]exp_fbar_reg,exp_f_reg;

//memory instantiation for lookup table
mem_64x19 mem (
		.clk(clk), 
		.rdata(c0), 
		.wdata(wdata),
		.we(we), 
		.addr(x_f[30:25])
	);

lzd32 lzd_sqrt1({in,1'b0},w1,v1);
assign exp_f = 5'b00101 - w1;
assign exp_f1 = exp_f[5]?(~exp_f + 1'b1) : exp_f;

lshift_48 l_sqrt1({in,17'b0},{1'b0,w1},x_bar);
assign x_fbar = x_bar[47:17];
//rshift_8 sqrt2({1'b0,in},exp_f,x_fbar);

assign x_f = exp_f[0]?(x_fbar>>1):x_fbar;
assign flag={exp_f[0],exp_f[5]};
//assign exp_fbar = (exp_f[0] & exp_f[5])?(exp_f1 - 1'b1)>>1:(exp_f>>1);
assign exp_fbar = (flag==2'b11)?(exp_f1 - 1'b1)>>1 : (flag==2'b10)?(exp_f1 + 1'b1)>>1 :exp_f1 >>1;

//-------------------------------------------------------------------------



//polynomial approximation

assign x24 = c1_24 * x_f_reg[24:0];
assign x12 = c1_12 * x_f_reg[24:0];

//assign c0=x_f[47]?
assign y24 = x24[36:24] + c0;
assign y12 = x12[36:24] + c0;

assign y_ans = x_f_reg[30]? y24[19:5] : y12[19:5];

assign y_ans_temp = {5'b0,y_ans,26'b0};
assign y_1 = exp_f_reg[5]?(y_ans_temp >>exp_fbar_reg):(y_ans_temp <<exp_fbar_reg);

wire [45:0]y_f,y_f_temp;
wire [5:0]ls_val;


//assign ls_val = exp_fbar_reg + 15 + 26;
assign y_f_temp = exp_f_reg[5]?{2'b0,y_1[40:0],3'b0}:{y_1[45:0]};
assign ls_val = 6'b000101-exp_fbar_reg;
assign y_f=exp_f_reg[5]?y_f_temp : (y_f_temp << ls_val);

always @ (posedge clk)
begin
in_reg <=in;
we<=1'b0;
c1_24 <=12'b100101010001;
c1_12 <=12'b110100101101;

x_f_reg <=x_f;
exp_f_reg <=exp_f;
exp_fbar_reg <=exp_fbar;

out <=y_f[45:29];

end
endmodule
