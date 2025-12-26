module ripple_counter (
    input  wire clk,
    input  wire reset,
    output wire [3:0] count
);

reg q1, q2, q3, q4;

always @(negedge clk or posedge reset)
    if (reset) q1 <= 0;
    else       q1 <= ~q1;

always @(negedge q1 or posedge reset)
    if (reset) q2 <= 0;
    else       q2 <= ~q2;

always @(negedge q2 or posedge reset)
    if (reset) q3 <= 0;
    else       q3 <= ~q3;

always @(negedge q3 or posedge reset)
    if (reset) q4 <= 0;
    else       q4 <= ~q4;

assign count = {q4, q3, q2, q1};

endmodule




