`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 13:41:28
// Design Name: 
// Module Name: traffic_timer_tb
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


module traffic_timer_tb();
reg clk,rst,timer_select;
wire done_pulse;
traffic_timer dut( .clk(clk), .rst(rst),.timer_select(timer_select),.done_pulse(done_pulse));
always #5 clk=~clk;
initial begin
clk=0;rst=1;timer_select=0;#20;
rst=0;#200;
timer_select=1;#400;
$finish;
end
endmodule
