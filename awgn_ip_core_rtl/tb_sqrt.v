`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   04:01:17 08/03/2016
// Design Name:   sqrt
// Module Name:   /home/eng/h/hxh141130/lzd/tb_sqrt.v
// Project Name:  lzd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sqrt
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sqrt;

	// Inputs
	reg clk;
	reg [30:0] in;

	// Outputs
	wire [16:0] out;

	// Instantiate the Unit Under Test (UUT)
	sqrt uut (
		.clk(clk), 
		.in(in), 
		.out(out)
	);

	always #50 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#180;
		
		 //#100 u0=48'h0008056789abc;
		//#100 u1=16'h0;
		
		#100 in=31'h0000ffff;
		#100 in=31'h0000fa43;
		#100 in=31'h0131ffff;
		#100 in=31'h3f0ac435;
		
		//#100 u1=16'hfa43a0013107c435;
	
		
		// Add stimulus here

	end
      

endmodule

