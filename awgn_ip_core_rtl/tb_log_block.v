`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:53:37 08/01/2016
// Design Name:   log_block
// Module Name:   /home/eng/h/hxh141130/lzd/tb_log_block.v
// Project Name:  lzd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: log_block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_log_block;

	// Inputs
	reg clk;
	reg [47:0] u0;

	// Outputs
	wire [30:0] e;

	// Instantiate the Unit Under Test (UUT)
	log_block uut (
		.clk(clk), 
		.u0(u0), 
		.e(e)
	);

always #50 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		u0 = 0;

		// Wait 100 ns for global reset to finish
		#180;
		#100 u0=48'b001000000001000000000000000000000000000000000011;
		 //#100 u0=48'h0008056789abc;
		#100 u0=48'b000000000001000000000000000000000000000000000011;
		
		#100 u0=48'b110000000001000000000000000000000000000000000011;
		#100 u0=48'b000000000000000000000000000000000001110000000011;
		#100 u0=48'b000111100000000000000000000000000001110000000011;
		
		#100 u0=48'b000000000000000101100010100000000001110000000011;
	
		
		// Add stimulus here

	end
      
endmodule

