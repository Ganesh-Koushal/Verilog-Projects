`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.01.2026 14:19:46
// Design Name: 
// Module Name: debounce_fsm
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


module debounce_fsm(input wire clk,rst,btn, output reg debounced);
parameter IDLE=2'b00;
parameter PRESS_CHECK=2'b01;
parameter PRESSED=2'b10;
parameter RELEASE_CHECK=2'b11;
reg [1:0] state,n_state;
always @(posedge clk or posedge rst)begin
    if(rst)
        state<=IDLE;
    else
        state<=n_state;
end
always @(*) begin
    n_state=state;
    case(state)
    IDLE: begin
        if(btn==1'b0)
            n_state=PRESS_CHECK;
    end
    PRESS_CHECK: n_state=(btn==1'b0)?PRESSED:IDLE;
    PRESSED:begin
    if(btn==1'b1)
        n_state=RELEASE_CHECK;
    end
    RELEASE_CHECK:  n_state=(btn==1'b1) ? IDLE:PRESSED;
    endcase
end
always @(*) begin
    debounced=1'b0;
    if(state==PRESSED)
        debounced=1'b1;
    end
endmodule
