`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:09:30 08/03/2016
// Design Name:   sincos_block
// Module Name:   /home/eng/h/hxh141130/lzd/tb_sincos.v
// Project Name:  lzd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sincos_block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_sincos;

	// Inputs
	reg clk;
	reg reset;
	reg [15:0] u1;

	// Outputs
	wire [15:0] g0;
	wire [15:0] g1;

	// Instantiate the Unit Under Test (UUT)
	sincos_block uut (
		.clk(clk), 
		.reset(reset), 
		.u1(u1), 
		.g0(g0), 
		.g1(g1)
	);
always #50 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		u1 = 0;

		// Wait 100 ns for global reset to finish
		#180;
		
		 //#100 u0=48'h0008056789abc;
		#100 u1=16'h0;
		
		#100 u1=16'hffff;
		#100 u1=16'hfa43;
		#100 u1=16'h0131;
		#100 u1=16'hc435;
		
		//#100 u1=16'hfa43a0013107c435;
	
		
		// Add stimulus here

	end
      
      
endmodule

