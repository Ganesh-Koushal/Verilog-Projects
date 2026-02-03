`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2025 22:27:51
// Design Name: 
// Module Name: m_fsm
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


module m_fsm(output reg out, input in,clk,rst);
parameter s0 =2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
reg [1:0] state,next_state;
always @(*) begin
case(state)
    s0: next_state = (in==1)? s1:s0;
    s1: next_state = (in==0)? s2:s1;
    s2: next_state = (in==1)? s1:s0;
    default: next_state = s0;
    endcase
    end
always @(*) begin
case(state)
    s2: out =(in==1)? 1'b1:1'b0;
    default: out = 1'b0;
    endcase
    end
always @(posedge clk or posedge rst) begin
if(rst)
    state<=s0;
else
    state<=next_state;
    end
endmodule
