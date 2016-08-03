`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:15:27 08/03/2016
// Design Name:   awgn_top
// Module Name:   /home/eng/h/hxh141130/awgn_ip_core/tb_awgn_top.v
// Project Name:  awgn_ip_core
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: awgn_top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tb_awgn_top;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] s0;
	reg [31:0] s1;
	reg [31:0] s2;
	reg [31:0] s3;
	reg [31:0] s4;
	reg [31:0] s5;
	wire [16:0] x0,x1;
	// Instantiate the Unit Under Test (UUT)
	awgn_top uut (
		.clk(clk), 
		.reset(reset), 
		.s0(s0), 
		.s1(s1), 
		.s2(s2), 
		.s3(s3), 
		.s4(s4), 
		.s5(s5), 
		.x0(x0),
		.x1(x1)
	);

always #50 clk = ~clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		 s0=32'h003110DA;
		 s1=32'h129f8963;
		 s2=32'hffff3434;
		 s3=32'h7d6f5a7c;
		 s4=32'ha16fd718;
		 s5=32'h44e5207c;


		// Wait 100 ns for global reset to finish
  #80 reset=1;
	#100 reset =0;
		
       	 $monitor("%d\n%d",x0,x1);
		// Add stimulus here

	end
      
 integer f;
	initial
	begin
	f=$fopen("final_output_bin.txt");
	$fmonitor(f,"%b\n%b",x0,x1);
	#1000000
	$fclose(f);
	$finish;	 
	
	end
	
endmodule

