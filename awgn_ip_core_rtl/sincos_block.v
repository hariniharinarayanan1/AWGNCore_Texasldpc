`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:55:58 08/02/2016 
// Design Name: 
// Module Name:    sincos_block 
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
module sincos_block(clk,reset,u1,g0,g1
    );
input clk,reset;
input [15:0] u1;
output reg [15:0] g0,g1;

reg [1:0]quad;
reg we;
reg [11:0] c1_sincos;
reg [13:0] x_g_a_reg,x_g_b_reg;

reg [19:0]y_g_a_reg,y_g_b_reg; //2nd pipeline
reg quad_reg;

reg [15:0]g0_temp1,g1_temp1; //3rd pipeline


wire [13:0] x_g_a,x_g_b;
wire [6:0] x_g_a_B,x_g_b_B;
wire [19:0] m1a,m1b,m4a,m4b;
wire [18:0] c0_a,c0_b;
wire [20:0] m2a,m2b;
wire [19:0]y_g_a,y_g_b;
wire [15:0]g0_temp,g1_temp;
wire [18:0] rdata_0,rdata_1;

//memory instantiation for lookup table
mem_128x19 mem (
		.clk(clk), 
		.rdata_0(rdata_0), 
		.rdata_1(rdata_1), 
		.wdata(wdata),
		.we_0(we), 
		.we_1(we),
		.addr_0(x_g_a[13:7]),
		.addr_1(x_g_b[13:7])	
	);

assign x_g_a=u1[13:0];
assign x_g_b=14'h3fff-u1[13:0];


//assign x_g_a_A=x_g_a_reg[13:7];
assign x_g_a_B = x_g_a_reg[6:0];
//assign x_g_a_A=x_g_b_reg[13:7];
assign x_g_b_B = x_g_b_reg[6:0];

//--------------------
assign x_comb_0= x_g_a_reg[13] | x_g_a_reg[12] | x_g_a_reg[11] | |x_g_a_reg[10] |x_g_a_reg[9] |x_g_a_reg[8] | x_g_a_reg[7]; 
assign x_comb_1= x_g_b_reg[13] | x_g_b_reg[12] | x_g_b_reg[11] | |x_g_b_reg[10] |x_g_b_reg[9] |x_g_b_reg[8] | x_g_b_reg[7]; 
assign c0_a = x_comb_0 ? rdata_0: 19'b1001010001001000101;
assign c0_b = x_comb_1 ? rdata_1: 19'b1001010001001000101;


assign m1a = c1_sincos * x_g_a_B;
assign m1b = c1_sincos * x_g_b_B;

assign m2a= {c0_a,1'b0} - {1'b0,m1a};
assign m2b= {c0_b,1'b0} - {1'b0,m1b};

assign m4a = ~m2a[19:0] + 1'b1;
assign m4b = ~m2b[19:0] + 1'b1;

assign y_g_a = m2a[20] ? m2a[19:0] : m4a;
assign y_g_b = m2b[20] ? m2b[19:0] : m4b;

//--------------------------------------------------------------------------

assign g0_temp[15] = (quad==2'b00)?1'b0:(quad==2'b01)?1'b0: (quad==2'b10)?1'b1:(quad==2'b11)?1'b1:1'b0 ;
assign g1_temp[15] = (quad==2'b00)?1'b0:(quad==2'b01)?1'b1: (quad==2'b10)?1'b1:(quad==2'b11)?1'b0:1'b0 ;
assign g0_temp[14:0] = (quad==2'b00)?y_g_b[19:5]:(quad==2'b01)?y_g_a[19:5]: (quad==2'b10)?y_g_b[19:5]:(quad==2'b11)?y_g_a[19:5]: 15'b0 ;
assign g1_temp[14:0] = (quad==2'b00)?y_g_a[19:5]:(quad==2'b01)?y_g_b[19:5]: (quad==2'b10)?y_g_a[19:5]:(quad==2'b11)?y_g_b[19:5]: 15'b0 ;

always @ (posedge clk)
begin

we <=1'b0;
c1_sincos<=12'b100001011001;

//MSB 2 bits are used for random quadrant selection.
/*case (quad)
2'b00 : begin g0[15]<=1'b0;
        g0[14:0]<= y_g_b[18:4];
		  g1[15]<=1'b0;
        g1[14:0]<= y_g_a[18:4]; end
2'b01 : begin g0[15]<=1'b0;
        g0[14:0]<= y_g_a[18:4];
		  g1[15]<=1'b1;
        g1[14:0]<= y_g_b[18:4];		  end
2'b10 : begin g0[15]<=1'b1;
        g0[14:0]<= y_g_b[18:4];
		  g1[15]<=1'b1;
        g1[14:0]<= y_g_a[18:4];		  end
2'b11 : begin g0[15]<=1'b1;
        g0[14:0]<= y_g_a[18:4];
		  g1[15]<=1'b0;
        g1[14:0]<= y_g_b[18:4];	end
default: begin g0[15]<=1'b0;
        g0[14:0]<= 15'b0;
		  g1[15]<=1'b0;
        g1[14:0]<= 15'b0;		  end
endcase		  
*/

quad <= u1[15:14];

quad_reg <=quad;
y_g_a_reg <=y_g_a;
y_g_b_reg <=y_g_b;

x_g_a_reg <=x_g_a;
x_g_b_reg <=x_g_b;

g0_temp1 <=g0_temp;
g1_temp1 <=g1_temp; //3rd pipeline by adding a flop stage at output
g0<=g0_temp1;
g1<=g1_temp1;

end
endmodule
