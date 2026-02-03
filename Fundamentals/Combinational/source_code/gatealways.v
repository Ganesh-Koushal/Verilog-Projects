`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.12.2025 20:48:30
// Design Name: 
// Module Name: gate_always
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


module gate_always(output reg y, input a,b, input [2:0] sel);
always@(*)
begin
y=0;
case(sel)
3'b000: y= a&b ;
3'b001: y = a|b;
3'b010: y=~a;
3'b011: y= ~(a&b);
3'b100: y= ~(a|b);
3'b101: y= a^b;
3'b110: y=~(a^b);
default:y=0;
endcase
end
endmodule
