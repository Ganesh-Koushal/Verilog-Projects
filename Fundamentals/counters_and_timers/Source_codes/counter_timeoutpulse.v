`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 22:24:16
// Design Name: 
// Module Name: counter_timeoutpulse
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


module counter_timeoutpulse(input wire clk,rst,in, output reg [3:0] counter, output reg done,done_pulse);
parameter MAX_COUNT=4'd5;
reg done_d;
always @(posedge clk or posedge rst) begin
    if(rst)
        counter<=4'b0000;
    else if(in)
        counter<= counter+1;
    else
        counter<=counter;
end
always @(posedge clk or posedge rst) begin
    if (rst)
        done_d <= 1'b0;
    else
        done_d <= done;
end
always @(*) begin
done=(counter==MAX_COUNT);
done_pulse=done&~done_d;
end
endmodule
