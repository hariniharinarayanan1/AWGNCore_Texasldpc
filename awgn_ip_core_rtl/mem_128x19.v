`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:43:59 08/02/2016 
// Design Name: 
// Module Name:    mem_128x19 
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
module mem_128x19(
    input clk,
	 input [18:0] wdata,
    input we_0,
	 input we_1,
    input [6:0] addr_0,
	 input [6:0] addr_1,
	 output [18:0] rdata_0,
	 output [18:0] rdata_1
    );
parameter DATA_WIDTH = 19;
parameter ADDR_WIDTH = 7;
parameter DATA_DEPTH = 128;

reg [18:0]mem[0:127];

reg [18:0] data_out_0,data_out_1;

initial begin
//$readmemb("1.list",mem);
$readmemb("mem_coeff_cos.list",mem);
end

//DATA0
//TRISTATE BUFFER CONTROL
assign wdata = (we_0) ? 19'bz : data_out_0; 
assign rdata_0 = (!we_0) ? data_out_0 : 19'b0;

//WRITE/READ BLOCK based on "we" control

always @ (posedge clk)
begin

if (we_0) 
    mem[addr_0] = wdata;
else 
   data_out_0 = mem[addr_0];

end


//DATA1
//TRISTATE BUFFER CONTROL
assign wdata = (we_1) ? 19'bz : data_out_1; 
assign rdata_1 = (!we_1) ? data_out_1 : 19'b0;

//WRITE/READ BLOCK based on "we" control

always @ (posedge clk)
begin

if (we_1) 
    mem[addr_1] = wdata;
else 
   data_out_1 = mem[addr_1];

end


endmodule
