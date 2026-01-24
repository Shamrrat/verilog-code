module top_module(
    input clk,
    input areset,
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output reg walk_left,
    output reg walk_right,
    output reg aaah,
    output reg digging
); 

    parameter LEFT=0, RIGHT=1,
              FALL_L=2, FALL_R=3,
              DIG_L=4, DIG_R=5,
              DIE=6;

    reg [2:0] present_state, next_state;
    reg [4:0] count;

    // State & counter register
    always @(posedge clk or posedge areset) begin
        if (areset) begin
            present_state <= LEFT;
            count <= 5'd0;
        end else begin
            present_state <= next_state;

            if (present_state == FALL_L || present_state == FALL_R) begin
                if (count < 5'd20)
                    count <= count + 1;
            end
            else if (present_state == LEFT || present_state == RIGHT)
                count <= 5'd0;
        end
    end

    // Next-state logic (priority FIXED)
    always @(*) begin
        next_state = present_state;
        case (present_state)

            LEFT:
                if (!ground)        next_state = FALL_L;
                else if (dig)       next_state = DIG_L;
                else if (bump_left) next_state = RIGHT;

            RIGHT:
                if (!ground)         next_state = FALL_R;
                else if (dig)        next_state = DIG_R;
                else if (bump_right) next_state = LEFT;

            FALL_L:
                if (!ground)
                    next_state = FALL_L;
                else if (count >= 5'd20)
                    next_state = DIE;
                else
                    next_state = LEFT;

            FALL_R:
                if (!ground)
                    next_state = FALL_R;
                else if (count >= 5'd20)
                    next_state = DIE;
                else
                    next_state = RIGHT;

            DIG_L:
                if (!ground) next_state = FALL_L;

            DIG_R:
                if (!ground) next_state = FALL_R;

            DIE:
                next_state = DIE;

            default:
                next_state = LEFT;
        endcase
    end

    // Output logic (Moore FSM)
    always @(*) begin
        walk_left  = (present_state == LEFT);
        walk_right = (present_state == RIGHT);
        aaah       = (present_state == FALL_L || present_state == FALL_R);
        digging    = (present_state == DIG_L || present_state == DIG_R);
    end

endmodule
