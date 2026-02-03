`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.01.2026 21:52:44
// Design Name: 
// Module Name: counters_timeout
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


module counters_timeout(input wire clk,rst,pulse, output reg [3:0] counter, output reg done);
parameter MAX_COUNT=4'd5;
always @(posedge clk or posedge rst) begin
    if(rst)
        counter<=4'b0000;
    else if(pulse)
        counter<= counter+1;
    else
        counter<=counter;
end
always @(*) begin
done=(counter==MAX_COUNT);
end
endmodule
