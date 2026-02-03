`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 22:33:46
// Design Name: 
// Module Name: counter_timeoutpulse_tb
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


module counters_timeoutpulse_tb();
reg clk,rst,in;
wire [3:0] counter;
wire done,done_pulse;
counter_timeoutpulse dut( .clk(clk), .rst(rst), .in(in), .counter(counter), .done(done), .done_pulse(done_pulse));
always #5 clk=~clk;
initial begin
clk=0;rst=1;in=1;#20;
rst=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
in=0;#10;
in=1;#10;
$finish;
end
endmodule
