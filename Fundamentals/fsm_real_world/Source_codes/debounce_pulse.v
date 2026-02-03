`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 22:17:00
// Design Name: 
// Module Name: debounce_pulse
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


module debounce_pulse(input wire clk,rst,btn, output reg pulse,debounced,debounced_d);
parameter I=2'b00;
parameter P_C=2'b01;
parameter P=2'b10;
parameter R_C=2'b11;
reg [1:0] state, n_state;
always @(posedge clk or posedge rst) begin
if (rst)
state <= I;
else
state <= n_state;
end
always @(posedge clk or posedge rst)begin
if(rst)
debounced_d<=1'b0;
else
debounced_d<=debounced;
end
always @(*) begin
n_state=state;
case(state)
I: begin
if(btn==1'b0)
n_state=P_C;
end
P_C: n_state=(btn==1'b0)?P:I;
P:begin if(btn==1'b1)
n_state=R_C;
end
R_C: n_state=(btn==1'b1) ? I:P;
endcase
end
always @(*) begin
debounced=1'b0;
   if(state==P)
debounced=1'b1;
             end
always @(*)begin
pulse= debounced & ~debounced_d;
end
endmodule
