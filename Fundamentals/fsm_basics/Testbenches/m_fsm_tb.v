`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 23:39:33
// Design Name: 
// Module Name: m_fsm_tb
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


module m_fsm_tb();
reg in,clk,rst;
wire out;
m_fsm dut( .clk(clk), .rst(rst), .in(in), .out(out));
initial clk=0;
always #5 clk =~clk;
initial
begin
rst=1; in=0;
#10;rst=0; in=1;
#10; in=0;
#10; in=1;
#10; in=1;
#10; in=0;
#10; in=1;
#10; in=1;
#10 $finish;
end
endmodule
