`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.12.2025 20:15:36
// Design Name: 
// Module Name: Logic_gatess
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


module logicgate (
    output c, d, e, f, g, h, i,
    input a, b
);

and  u1(c, a, b);   // AND gate
or   u2(d, a, b);   // OR gate
not  u3(e, a);      // NOT A
not  u4(f, b);      // NOT B
nand u5(g, a, b);   // NAND gate
nor  u6(h, a, b);   // NOR gate
xor  u7(i, a, b);   // XOR gate

endmodule

