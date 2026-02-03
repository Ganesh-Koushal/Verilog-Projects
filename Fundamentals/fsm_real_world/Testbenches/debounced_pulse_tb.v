`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 22:30:42
// Design Name: 
// Module Name: debounced_pulse_tb
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


module debounced_pulse_tb();
wire pulse,debounced,debounced_d;
reg clk,rst,btn;
debounce_pulse dut( .rst(rst), .clk(clk), .btn(btn), .debounced(debounced), .debounced_d(debounced_d), .pulse(pulse));
always #5 clk=~clk;
initial begin
clk=0;rst=1;btn=1;#15;
rst=0;#5;
btn=0;#10;
btn=1;#10;
btn=0;#20;
btn=1;#20;
btn=0;#30;
btn=1;#30;
btn=0;#40;
$finish;
end
endmodule
