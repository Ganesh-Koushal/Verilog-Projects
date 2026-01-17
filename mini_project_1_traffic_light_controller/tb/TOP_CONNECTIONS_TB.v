`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.01.2026 14:57:10
// Design Name: 
// Module Name: TOP_CONNECTIONS_TB
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


module TOP_CONNECTIONS_TB();
reg clk,rst,btn;
wire ns_red, ns_green, ns_yellow,ew_red, ew_green, ew_yellow;
TOP_CONNECTIONS dut(
    .clk(clk),
    .rst(rst),
    .btn(btn),
    .ns_red(ns_red),
    .ns_green(ns_green),
    .ns_yellow(ns_yellow),
    .ew_red(ew_red),
    .ew_green(ew_green),
    .ew_yellow(ew_yellow));
always #5 clk=~clk;
initial begin
    clk = 0;rst = 1;btn = 1;#40;
  rst = 0;
  #100;
  btn = 0;   
  #200;      
  btn = 1;   
  #500;
  $finish;
end
endmodule
