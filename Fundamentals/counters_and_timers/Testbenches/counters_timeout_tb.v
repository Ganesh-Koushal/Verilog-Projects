`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 21:55:44
// Design Name: 
// Module Name: counters_timeout_tb
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


module counters_timeout_tb();
reg clk,rst,pulse;
wire [3:0] counter;
wire done;
counters_timeout dut( .clk(clk), .rst(rst), .pulse(pulse), .counter(counter), .done(done));
always #5 clk=~clk;
initial begin
clk=0;rst=1;pulse=1;#20;
rst=0;#10;
pulse=1;#10;
pulse=0;#10;
pulse=1;#10;
pulse=0;#10;
pulse=1;#10;
pulse=0;#10;
pulse=1;#10;
pulse=0;#10;
pulse=1;#10;
$finish;
end
endmodule
