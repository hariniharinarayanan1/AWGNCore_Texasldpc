`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:14:08 07/31/2016 
// Design Name: 
// Module Name:    mem_256x35 
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
module mem_128x52(
    input clk,
	 input [51:0] wdata,
    input we,
    input [6:0] addr,
	 output [51:0] rdata
    );
parameter DATA_WIDTH = 51;
parameter ADDR_WIDTH = 7;
parameter DATA_DEPTH = 127;

reg [51:0]mem[0:127];

reg [51:0] data_out;

initial begin
//$readmemb("1.list",mem);
$readmemb("mem_coeff_log.list",mem);
end

//TRISTATE BUFFER CONTROL
assign wdata = (we) ? 52'bz : data_out; 
assign rdata = (!we) ? data_out : 52'b0;

//WRITE/READ BLOCK based on "we" control

always @ (posedge clk)
begin

if (we) 
    mem[addr] = wdata;
else 
   data_out = mem[addr];

end


endmodule
