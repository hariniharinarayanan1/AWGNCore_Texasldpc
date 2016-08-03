
module lzd2(a,p,v);
input [1:0]a;
output reg p,v;

always @ (*)
begin
v= a[0] | a[1];
p= ~a[1] & a[0];
end
endmodule



module lzd4(a,p,v);
input [3:0]a;
output reg [1:0]p;
output reg v;
wire p1,p2,v1,v2;

lzd2 l1 (a[1:0],p1,v1);
lzd2 l2 (a[3:2],p2,v2);
always @ (*)
begin
v = v1 | v2;
p[1]=~v2;
if (v2==1)
p[0]= p2;
else
p[0]= p1;
end
endmodule


module lzd8(a,p,v);
input [7:0]a;
output reg [2:0]p;
output reg v;
wire [1:0] p1,p2;
wire v1,v2;

lzd4 l3 (a[3:0],p1,v1);
lzd4 l4 (a[7:4],p2,v2);
always @ (*)
begin
v = v1 | v2;
p[2]=~v2;

if (v2==0)
begin p[1]= p1[1];
p[0]= p1[0]; end
else
begin p[1]= p2[1];
p[0]= p2[0]; end

end

endmodule


module lzd16(a,p,v);
input [15:0]a;
output reg [3:0]p;
output reg v;
wire [2:0] p1,p2;
wire v1,v2;

lzd8 l5 (a[7:0],p1,v1);
lzd8 l6 (a[15:8],p2,v2);
always @ (*)
begin
v = v1 | v2;
p[3]=~v2;

if (v2==0)
begin p[2] = p1[2];
p[1]= p1[1];
p[0]= p1[0]; end
else
begin p[2] = p2[2];
p[1]= p2[1];
p[0]= p2[0]; end

end


endmodule

module lzd32(a,p,v);
input [31:0]a;
output reg [4:0]p;
output reg v;
wire [3:0] p1,p2;
wire v1,v2;

lzd16 l7 (a[15:0],p1,v1);
lzd16 l8 (a[31:16],p2,v2);
always @ (*)
begin
v = v1 | v2;
p[4]=~v2;

if (v2==0)
begin p[3] = p1[3];
p[2] = p1[2];
p[1]= p1[1];
p[0]= p1[0]; end
else
begin p[3] = p2[3];
p[2] = p2[2];
p[1]= p2[1];
p[0]= p2[0]; end

end


endmodule

module lzd48(a,p,v);
input [47:0]a;
output reg [5:0]p;
output reg v;
wire [4:0] p1,p2;
wire v1,v2;

lzd32 l9 ({a[15:0],16'b0},p1,v1);
//lzd32 l9 (a[31:0],p1,v1);
lzd32 l10 (a[47:16],p2,v2);
always @ (*)
begin
v = v1 | v2;
p[5]=~v2;

if (v2==0)
begin p[4] = p1[4];
p[3] = p1[3];
p[2] = p1[2];
p[1]= p1[1];
p[0]= p1[0]; end
else
begin p[4] = p2[4];
p[3] = p2[3];
p[2] = p2[2];
p[1]= p2[1];
p[0]= p2[0]; end

end

endmodule
