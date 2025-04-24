`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:48:14 04/22/2025 
// Design Name: 
// Module Name:    cla4 
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
module cla4(a, b, cin, sum, cout);

input [3:0]a, b; 
input cin;
output [3:0]sum; 
output cout;

wire [3:0]p;
wire [3:0]g;
wire [3:1]c;

assign p[0] = a[0]^b[0], p[1] = a[1]^b[1], p[2] = a[2]^b[2], p[3] = a[3]^b[3];
assign g[0] = a[0]&b[0], g[1] = a[1]&b[1], g[2] = a[2]&b[2], g[3] = a[3]&b[3];

assign c[1] = g[0]|(p[0]&cin), 
		c[2] = g[1]|(p[1]&g[0])|(p[1]&p[0]&cin),
		c[3] = g[2]|(p[2]&g[1])|(p[2]&p[1]&g[0])|(p[2]&p[1]&p[0]&g[0]),
		cout = g[3]|(p[3] &g[2])|(p[3]&p[2]&g[1])|(p[3]&p[2]&p[1]&g[0])|(p[3]&p[2]&p[1]&p[0]&cin);

assign sum[0] = p[0] ^ cin,
		sum[1] = p[1] ^ c[1],
		sum[2] = p[2] ^ c[2],
		sum[3] = p[3] ^ c[3];





endmodule
