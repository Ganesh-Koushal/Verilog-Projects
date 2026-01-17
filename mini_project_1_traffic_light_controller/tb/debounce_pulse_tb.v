`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 14:16:09
// Design Name: 
// Module Name: debounce_pulse_tb
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


module debounce_pulse_tb();
reg clk,rst,btn;
wire btn_pulse;
debounce_pulse dut(.clk(clk), .rst(rst), .btn(btn), .btn_pulse(btn_pulse));
always #5 clk=~clk;
initial begin
rst=1;clk=0;btn=1;#20;
rst=0;#20
btn=0;#3;
btn=1;#3;
btn=0;#3;
btn=1;#3;
btn=0;#3;
btn=1;#3;
btn=0;#3;
btn=1;#3;
btn=0;#3;
btn=1;#20;
$finish;
end
endmodule
