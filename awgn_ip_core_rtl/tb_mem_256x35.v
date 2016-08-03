`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:33:55 07/31/2016
// Design Name:   mem_256x35
// Module Name:   /home/eng/h/hxh141130/lzd/tb_mem_256x35.v
// Project Name:  lzd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mem_256x35
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_mem_128x52;

	// Inputs
	reg clk;
	reg we;
	reg [6:0] addr;

	// Bidirs
	reg [51:0] wdata;
	wire [51:0] rdata;

	// Instantiate the Unit Under Test (UUT)
	mem_128x52 uut (
		.clk(clk), 
		.rdata(rdata), 
		.wdata(wdata),
		.we(we), 
		.addr(addr)
	);

//reg [35:0] data_1;

always #50 clk = ~clk;

/*always @ (*)
begin
if (we)
 data = data_1;
end*/

	initial begin
		// Initialize Inputs
		clk = 0;
		we = 0;
		addr = 0;

		// Wait 100 ns for global reset to finish
		#180 we=1;
		#100 addr=7'b01011010;
		     wdata=35'h741854310;
		#100 addr=7'h1f;
		     wdata=35'hffffffff;
      #100 addr=7'hf1;
		     wdata=35'h01010101;
      #100 addr=7'h33;
		     wdata=35'h5a5a5a5a;			  
		#100 we=0;
		#100 addr=7'h1f;
		#100 addr=7'h33;	
      #100 addr = 7'h00;		
		#100 addr = 7'h01;
		#100 addr = 7'h02;
		#100 addr = 7'h37;
		#100 addr = 7'b1100000;
		
        
		// Add stimulus here

	end
      
endmodule

