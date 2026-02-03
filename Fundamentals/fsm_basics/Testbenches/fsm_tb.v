`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 00:11:13
// Design Name: 
// Module Name: fsm_tb
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


module fsm_tb();
reg clk,rst,in;
wire out;
initial
clk=0;
always #5 clk = ~clk;

fsm dut( .clk(clk), .rst(rst), .in(in), .out(out));
initial 
begin
rst=1;in=0;
#10; rst=0;#5;
in=1; #20;
in=0; #20;
in=1;#15;
$finish;
end
endmodule
