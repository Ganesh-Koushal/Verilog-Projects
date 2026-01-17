`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2026 18:35:33
// Design Name: 
// Module Name: TL_FSM_TB
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


module TL_FSM_TB();
reg clk,rst,done_pulse;
wire ns_red,ns_green,ns_yellow,ew_red,ew_green,ew_yellow;
TL_FSM dut(.clk(clk), .rst(rst), .done_pulse(done_pulse),
 .ns_red(ns_red), .ns_green(ns_green), .ns_yellow(ns_yellow),
 .ew_red(ew_red), .ew_green(ew_green), .ew_yellow(ew_yellow));
 task send_done_pulse;
begin
    @(posedge clk);
    done_pulse = 1;
    @(posedge clk);
    done_pulse = 0;
end
endtask

always #10 clk=~clk;
initial begin
done_pulse=0;clk=0;rst=1;#25;
rst=0;
repeat (5) begin
    send_done_pulse();
end
#50;
$finish;
end
endmodule
