`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2026 23:16:22
// Design Name: 
// Module Name: TOP_CONNECTIONS
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


module TOP_CONNECTIONS(input  wire clk,rst,btn,
    output wire ns_red, ns_green, ns_yellow,ew_red, ew_green, ew_yellow,btn_pulse);
wire done_pulse,timer_select,fsm_pulse;
assign fsm_pulse = done_pulse | btn_pulse;
debounce_pulse u_db ( 
    .clk(clk),
    .rst(rst),
    .btn(btn),
    .btn_pulse(btn_pulse)
);
traffic_timer u_timer (
    .clk(clk),
    .rst(rst),
    .timer_select(timer_select),
    .done_pulse(done_pulse));
TL_FSM u_fsm (
    .clk(clk),
    .rst(rst),
    .done_pulse(fsm_pulse),
    .ns_red(ns_red),
    .ns_green(ns_green),
    .ns_yellow(ns_yellow),
    .ew_red(ew_red),
    .ew_green(ew_green),
    .ew_yellow(ew_yellow),
    .timer_select(timer_select)
);


endmodule
