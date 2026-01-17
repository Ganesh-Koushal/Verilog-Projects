`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.01.2026 17:37:16
// Design Name: 
// Module Name: TL_FSM
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


module TL_FSM(input wire clk,rst,done_pulse,
output reg ns_red,ns_green,ns_yellow,ew_red,ew_green,ew_yellow,timer_select );
// STATES DECLARATION
parameter NS_GREEN=4'b0001;
parameter NS_YELLOW=4'b0010;
parameter EW_GREEN=4'b0100;
parameter EW_YELLOW=4'b1000;
//STATE REGISTERS
reg [3:0] state,n_state;
always @(posedge clk or posedge rst)begin
if(rst)
    state<=NS_GREEN;
else    
    state<=n_state;
end
//NEXT STATE LOGIC
always @(*)begin
n_state=state;
case(state)//STATE CHANGE LOOP
    NS_GREEN:
        n_state= (done_pulse)? NS_YELLOW:NS_GREEN;
    NS_YELLOW:
        n_state= (done_pulse)? EW_GREEN:NS_YELLOW;
    EW_GREEN:
        n_state= (done_pulse)? EW_YELLOW:EW_GREEN;
    EW_YELLOW:
        n_state= (done_pulse)? NS_GREEN:EW_YELLOW;
    default:
        n_state= NS_GREEN;
endcase
end
//OUTPUT LOGIC USING MOORE CONCEPT
always @(*)begin
//ASSIGNING DEFAULT VALUES
ns_red=1'b0;
ns_green=1'b0;
ns_yellow=1'b0;
ew_red=1'b0;
ew_green=1'b0;
ew_yellow=1'b0;
timer_select=1'b0;
case(state)
    NS_GREEN:begin
        ns_green=1'b1;
        ew_red=1'b1;
        timer_select=1'b1;
    end
    NS_YELLOW:begin
        ns_yellow=1'b1;
        ew_red=1'b1;
        timer_select=1'b0;
    end
    EW_GREEN:begin
        ew_green=1'b1;
        ns_red=1'b1;
        timer_select=1'b1;
    end
    EW_YELLOW:begin
        ew_yellow=1'b1;
        ns_red=1'b1;
        timer_select=1'b0;
    end
    default:begin
        ns_red=1'b1;
        ew_red=1'b1;
        timer_select=1'b0;
    end
    endcase
end
endmodule
