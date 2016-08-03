`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:42:21 07/28/2016
// Design Name:   tausworthe
// Module Name:   /home/eng/h/hxh141130/lzd/taus_tb.v
// Project Name:  lzd
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: tausworthe
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module taus_tb;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] s0;
	reg [31:0] s1;
	reg [31:0] s2;

	// Outputs
	wire [31:0] r;


always #50 clk = ~clk;
	// Instantiate the Unit Under Test (UUT)
	tausworthe uut (
		.clk(clk), 
		.reset(reset), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.r(r)
	);

//initial begin		f = $fopen("output.txt","w");end
	initial begin
		// Initialize Inputs

		clk = 1;
		reset = 0;
		s0 = 0;
		s1 = 0;
		s2 = 0;

   #90 reset=1;
	#100 reset =0;
	    s0=32'h003110DA;
		 s1=32'h129f8963;
		 s2=32'hffff3434;
		 
		 $monitor("Output=%d",r);
		// $fwrite(f,"%b\n",r);
		 
	end
   integer f;
	initial
	begin
	f=$fopen("output.txt");
	$fmonitor(f,"%d",r);
	#1000000 
	$fclose(f);
	$finish;	 
	
	end
	//	initial begin		$fclose(f);end
endmodule

