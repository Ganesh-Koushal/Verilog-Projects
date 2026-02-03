`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 18:32:41
// Design Name: 
// Module Name: mo_fsm_tb
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


module mo_fsm_tb();
reg in,clk,rst;
wire out;
mo_fsm dut( .in(in), .rst(rst), .clk(clk), .out(out));
initial clk=0;
always #5 clk =~clk;
initial
begin
rst=1;in=0;
#10; rst=0; in=1;
#10; in=0;
#10; in=1;
#10; in=1;
#10; in=0;
#10; in=1;
#10; $finish;
end
endmodule
