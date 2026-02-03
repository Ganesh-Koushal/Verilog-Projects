`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.12.2025 15:17:08
// Design Name: 
// Module Name: pulse_mo1001oh
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


module pulse_mo1001oh( output reg out, input clk,rst,in);
parameter s0=5'b00001;
parameter s1=5'b00010;
parameter s2=5'b00100;
parameter s3=5'b01000;
parameter s4=5'b10000;
reg [4:0] state,n_state;
always @(*) begin
case(state)
    s0: n_state=(in==1)? s1:s0;
    s1: n_state=(in==0)? s2:s1;
    s2: n_state=(in==0)? s3:s1;
    s3: n_state=(in==1)? s4:s0;
    s4: n_state=(in==1)? s1:s0;
    default: n_state=s0;
    endcase
    end
always @(posedge clk or posedge rst)begin
if(rst)
    out<=1'b0;
else if(state==s3 && n_state==s4)
    out<=1'b1;
else    
    out<=1'b0;
    end
always @(posedge clk or posedge rst)begin
if(rst)
    state<=s0;
else
    state<=n_state;
    end
endmodule
