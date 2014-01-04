`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:20 08/24/2011 
// Design Name: 
// Module Name:    twosComp 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Performs the 2's complement of an N-bit fixed-pont number
//						The result is 2N bits long...
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module qtwosComp #(
	parameter Q = 15,
	parameter N = 32
	)
	 (
	 input [N-2:0] a,
	 output [2*N-1:0] b
	 );

	reg [2*N-1:0] data;
	reg [2*N-1:0] flip;
	reg [2*N-1:0] out;
	
	assign b = out;
	
	always @(a)
	begin
		data <= a;		//if you dont put the value into a 2Nb register, when you flip the bits it wont work right
	end
	
	always @(data)		//	This will generate a warning, as a is not referenced
									//		This is okay, however, as "data" is directly computed from "a"

	begin
		flip <= ~a;
	end
	
	always @(flip)
	begin
		out <= flip + 1;
	end

endmodule
