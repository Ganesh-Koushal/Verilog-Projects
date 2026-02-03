`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 21:15:37
// Design Name: 
// Module Name: debounced_fsm_tb
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


module debounced_fsm_tb();
reg clk,rst,btn;
wire  debounced;
debounce_fsm dut ( .clk(clk), .rst(rst), .btn(btn), .debounced(debounced));
always #5 clk=~clk;
initial 
begin
clk=0;rst=1;btn=1;#10;
rst=0;#20;
btn=0;#10;
btn=1;#10;
btn=0;#10;
btn=1;#10;
btn=0;#30;
btn=1;#20;
btn=1;#20;
btn=0;#30;
$finish;
end
endmodule
