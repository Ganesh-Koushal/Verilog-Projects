`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2026 21:59:07
// Design Name: 
// Module Name: traffic_timer
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


module traffic_timer(input wire clk,rst,timer_select, output reg done_pulse);
reg [3:0] counter;
parameter MAX_COUNT_LONG=4'd10;
parameter MAX_COUNT_SHORT=4'd3;
wire [3:0] max_count;
assign max_count=(timer_select)? MAX_COUNT_LONG:MAX_COUNT_SHORT;
always @(posedge clk or posedge rst) begin
if(rst)begin
    counter<=4'd0;
    done_pulse<=1'b0;
    end
else if(counter==max_count) begin
        counter<=4'd0;
        done_pulse<=1'b1;
    end
else begin
    counter<= counter+1;
    done_pulse<=1'b0;
end
end
endmodule
