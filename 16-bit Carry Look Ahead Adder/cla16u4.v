`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:41:05 04/23/2025 
// Design Name: 
// Module Name:    cla16u4 
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
module cla16u4(x, y, z, carry, zero, parity, sign, overflow);

input [15:0] x, y;
output [15:0] z;
output carry,zero,sign,parity,overflow;

wire [3:1]c;

assign sign = z[15];
assign parity = ~^z;
assign zero = ~|z;
assign overflow = (x[15]&y[15]&~z[15])| (~x[15]&~y[15]&z[15]);

cla4 a1(x[3:0], y[3:0], 1'b0, z[3:0], c[1]);
cla4 a2(x[7:4], y[7:4], c[1], z[7:4], c[2]);
cla4 a3(x[11:8], y[11:8], c[2], z[11:8], c[3]);
cla4 a4(x[15:12], y[15:12], c[3], z[15:12], carry);

endmodule
