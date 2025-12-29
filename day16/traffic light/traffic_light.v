`timescale 1s/1ms
module traffic_light (
    input  clk,
    input  reset,
    output reg red,
    output reg yellow,
    output reg green
);

parameter RED    = 2'd0,
          YELLOW = 2'd1,
          GREEN  = 2'd2;

parameter RED_TIME    = 5;
parameter GREEN_TIME  = 5;
parameter YELLOW_TIME = 2;

reg [2:0] count;
reg [1:0] present_state, next_state;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        present_state <= RED;
        count <= 0;
    end else begin
        present_state <= next_state;
        if (present_state != next_state)
            count <= 0;          
        else
            count <= count + 1;
    end
end

always @(*) begin
    next_state = present_state;
    red = 0;
    yellow = 0;
    green = 0;

    case (present_state)
        RED: begin
            red = 1;
            if (count == RED_TIME)
                next_state = YELLOW;
        end

        YELLOW: begin
            yellow = 1;
            if (count == YELLOW_TIME)
                next_state = GREEN;
        end

        GREEN: begin
            green = 1;
            if (count == GREEN_TIME)
                next_state = RED;
        end
    endcase
end

endmodule












