
module lzd2(a,p,v);
input [1:0]a;
output reg p,v;

always @ (*)
begin
v= a[0] | a[1];
p= ~a[1] & a[0];
end
endmodule

