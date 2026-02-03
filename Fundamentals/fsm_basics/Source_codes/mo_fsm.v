`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.12.2025 18:18:30
// Design Name: 
// Module Name: mo_fsm
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


module mo_fsm(output reg out, input in,clk,rst);
parameter s0= 2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;
reg [1:0] state,n_state;
always @(state or in) begin
case(state)
    s0: n_state= (in==1)? s1:s0;
    s1: n_state= (in==0)? s2:s1;
    s2: n_state= (in==1)? s3:s0;
    s3: n_state= (in==1)? s1:s0;
    default: n_state= s0;
    endcase
    end
always @(*)begin
case(state)
    s3: out= 1'b1;
    default: out=1'b0;
    endcase
    end
always @(posedge clk or posedge rst) begin
if(rst)
    state<= s0;
else
    state<= n_state;
end
endmodule
