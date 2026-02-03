`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 20:29:02
// Design Name: 
// Module Name: Counters
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


module Counters(input wire clk,rst,pulse, output reg [3:0] counter);
always @(posedge clk or posedge rst) begin
    if(rst)
        counter<=4'b0000;
    else if(pulse)
        counter<= counter+1;
    else
        counter<=counter;
end
endmodule
