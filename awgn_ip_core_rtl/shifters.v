`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:39:58 07/27/2016 
// Design Name: 
// Module Name:    shifters 
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
//Format for module name is,
//l(r)shift_<shifting_value>_<numberofinputbits>
//end


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:07:59 08/01/2016 
// Design Name: 
// Module Name:    lshift_48 
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
module lshift1(
input [47:0] a, input s, output reg [47:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<47;i=i+1)
     out[i+1]=a[i];
	  
out[0]=1'b0;
end
else 
out=a;

end
endmodule

module lshift2(
input [47:0] a, input s, output reg [47:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<46;i=i+1)
     out[i+2]=a[i];
	  
out[1:0]=2'b0;
end
else 
out=a;

end
endmodule

module lshift4(
input [47:0] a, input s, output reg [47:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<44;i=i+1)
     out[i+4]=a[i];
	  
out[3:0]=4'b0;
end
else 
out=a;

end
endmodule

module lshift8(
input [47:0] a, input s, output reg [47:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<40;i=i+1)
     out[i+8]=a[i];
	  
out[7:0]=8'b0;
end
else 
out=a;

end
endmodule

module lshift16(
input [47:0] a, input s, output reg [47:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<32;i=i+1)
     out[i+16]=a[i];
	  
out[15:0]=16'b0;
end
else 
out=a;

end
endmodule


module lshift32(
input [47:0] a, input s, output reg [47:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<16;i=i+1)
     out[i+32]=a[i];
	  
out[31:0]=32'b0;
end
else 
out=a;

end
endmodule

module lshift_48(input [47:0] a, input [5:0] s, output [47:0] out);

wire [47:0] o1,o2,o3,o4,o5,o6;

lshift1 s1(a,s[0],o1);
lshift2 s2(o1,s[1],o2);
lshift4 s3(o2,s[2],o3);
lshift8 s4(o3,s[3],o4);
lshift16 s5(o4,s[4],o5);
lshift32 s6(o5,s[5],out);

endmodule


module rshift1_32(
input [31:0] a, input s, output reg [31:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<31;i=i+1)
     out[i]=a[i+1];
	  
out[31]=1'b0;
end
else 
out=a;

end
endmodule

module rshift2_32(
input [31:0] a, input s, output reg [31:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<30;i=i+1)
     out[i]=a[i+2];
	  
out[31:30]=2'b0;
end
else 
out=a;

end
endmodule

module rshift4_32(
input [31:0] a, input s, output reg [31:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<28;i=i+1)
     out[i]=a[i+4];
	  
out[31:28]=4'b0;
end
else 
out=a;

end
endmodule

module rshift8_32(
input [31:0] a, input s, output reg [31:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<24;i=i+1)
     out[i]=a[i+8];
	  
out[31:24]=8'b0;
end
else 
out=a;

end
endmodule

module rshift16_32(
input [31:0] a, input s, output reg [31:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<16;i=i+1)
     out[i]=a[i+16];
	  
out[31:16]=16'b0;
end
else 
out=a;

end
endmodule


module rshift32(
input [47:0] a, input s, output reg [47:0] out
    );
integer i;
always @ (*)
begin

if (s==1)
begin
for (i=0;i<16;i=i+1)
     out[i]=a[i+32];
	  
out[47:16]=32'b0;
end
else 
out=a;

end
endmodule

module rshift_32(input [31:0] a, input [4:0] s, output reg [31:0] out);

wire [31:0] o1,o2,o3,o4,o5;

rshift1_32 s7(a,s[0],o1);
rshift2_32 s8(o1,s[1],o2);
rshift4_32 s9(o2,s[2],o3);
rshift8_32 s10(o3,s[3],o4);
rshift16_32 s11(o4,s[4],o5);
rshift32_32 s12(o5,s[5],out);

endmodule

module rshift_8(input [31:0] a, input [2:0] s, output reg [31:0] out);

wire [31:0] o1,o2;

rshift1_32 s13(a,s[0],o1);
rshift2_32 s14(o1,s[1],o2);
rshift4_32 s15(o2,s[2],out);

endmodule

