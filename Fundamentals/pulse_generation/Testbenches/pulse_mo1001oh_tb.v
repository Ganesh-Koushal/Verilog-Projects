`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2025 15:31:05
// Design Name: 
// Module Name: pulse_mo1001oh_tb
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


module pulse_mo1001oh_tb();
reg in,clk,rst;
wire out;
pulse_mo1001oh dut( .in(in), .rst(rst), .clk(clk), .out(out));
initial clk=0;
always #5 clk=~clk;
initial begin
rst=1;in=0;#10;
rst=0;in=1;#10;
in=0;#10;
in=1;#10;
in=1;#10;
in=0;#10;
in=0;#10;
in=1;#10;
$finish;
end
endmodule
