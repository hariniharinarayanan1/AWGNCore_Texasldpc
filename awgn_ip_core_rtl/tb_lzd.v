`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:38:30 07/26/2016
// Design Name:   lzd48
// Module Name:   /home/eng/h/hxh141130/lzd/samp.v
// Project Name:  lzd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: lzd48
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_lzd;

	// Inputs
	reg [47:0] a;

	// Outputs
	wire [5:0] p;
	wire v;
	



	// Instantiate the Unit Under Test (UUT)
	lzd47 uut (
		.a(a), 
		.p(p), 
		.v(v)
	);

	initial begin
		// Initialize Inputs
		a = 48'h0; 

		// Wait 100 ns for global reset to finish
		#1000;
     #1000 a=48'h0000FFFFFFFF5456;   
	  #1000 a=48'h0000000007215456;
	  #1000 a=48'h0000000003515456;
	  #1000 a=48'h0000000001F15456;
	  #1000 a=48'h0000000000F15456;
	  #1000 a=48'h0000000000715456;
	  #1000 a=48'h0000000000315456;
	  #1000 a=48'h0000000000115456;
		// Add stimulus here
		

	end
      
endmodule

