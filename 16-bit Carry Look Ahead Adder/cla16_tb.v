`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:15:01 04/23/2025
// Design Name:   cla16u4
// Module Name:   /home/ise/VHDL_LAB/carryLookAhead16/cla16_tb.v
// Project Name:  carryLookAhead16
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cla16u4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cla16_tb;

	// Inputs
	reg [15:0] x;
	reg [15:0] y;

	// Outputs
	wire [15:0] z;
	wire carry;
	wire zero;
	wire parity;
	wire sign;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	cla16u4 uut (
		.x(x), 
		.y(y), 
		.z(z), 
		.carry(carry),  
		.zero(zero), 
		.parity(parity), 
		.sign(sign), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		x = 0;
		y = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		x = 16'b0000000011111111; y = 16'b1111111100000000;#100;
		x = 16'b0000111100001111; y = 16'b1111000011110000;#100;
        
		// Add stimulus here

	end
      
endmodule

