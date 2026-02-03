`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.12.2025 14:05:47
// Design Name: 
// Module Name: dff_tb
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


module dff_tb;
wire q;
reg d;
reg clk;
reg rst;
    dff dut (
    .q(q),
    .clk(clk),
    .d(d),
    .rst(rst)
    );
    initial
    begin
    clk=0;
    forever #5 clk = ~clk;
    end
    initial
    begin 
    rst = 1;
    d=0;
    #10;
    rst=0;
    d=1;
    #5;
    d=0;
    #5;
    d=3;
    #3;
    d=1;
    #10;
    $finish; 
    end
endmodule
