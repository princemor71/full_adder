`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.01.2025 13:12:55
// Design Name: 
// Module Name: binary_bcd
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module binary_bcd(b,d);
input [3:0]b;
output [3:0]d;
wire [5:0]y;
and lo(d[0],b[0]);
and l1(y[0],~b[1],b[2],b[3]);
and l2(y[1],~b[3],b[1]);
or l3(d[1],y[0],y[1]);
and l4(y[2],~b[3],b[2]);
and l5(y[3],b[2],b[1]);
or l6(d[2],y[2],y[3]);
and l7(d[3],b[3],~b[1],~b[0]);
and l8(y[4],b[3],b[2]);
and l9(y[5],b[3],b[1]);
or l10(d[3],y[4],y[5]);
endmodule
