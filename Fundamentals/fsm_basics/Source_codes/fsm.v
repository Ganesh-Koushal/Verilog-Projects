`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.12.2025 21:52:27
// Design Name: 
// Module Name: fsm
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


module fsm(input clk,rst,in, output reg out);
reg state,next_state;
parameter IDLE = 1'b0;
parameter ACTIVE = 1'b1;
always @(*)begin
    case(state)
        IDLE: begin
           if(in)
            next_state=ACTIVE;
           else
            next_state=IDLE;
           end
         ACTIVE: begin
          next_state = IDLE;
          end
          default: next_state =IDLE;
    endcase
    end
always @(*)begin
case(state)
    IDLE: out = 1'b0;
    ACTIVE: out=1'b1;
    default: out=1'b0;
 endcase
end
always @(posedge clk or posedge rst)begin
 if(rst)
    state<= IDLE;
 else
    state<= next_state;
 end
endmodule
