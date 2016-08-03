`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    03:34:30 08/03/2016 
// Design Name: 
// Module Name:    mem_64x19 
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
module mem_64x19(
    input clk,
	 input [18:0] wdata,
    input we,
    input [5:0] addr,
	 output [18:0] rdata
    );
parameter DATA_WIDTH = 19;
parameter ADDR_WIDTH = 6;
parameter DATA_DEPTH = 64;

reg [18:0]mem[0:63];

reg [18:0] data_out;

initial begin
//$readmemb("1.list",mem);
$readmemb("mem_coeff_sqrt.list",mem);
end

//TRISTATE BUFFER CONTROL
assign wdata = (we) ? 19'bz : data_out; 
assign rdata = (!we) ? data_out : 19'b0;

//WRITE/READ BLOCK based on "we" control

always @ (posedge clk)
begin

if (we) 
    mem[addr] = wdata;
else 
   data_out = mem[addr];

end

endmodule

