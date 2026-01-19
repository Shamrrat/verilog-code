module top_module(
    input clk,
    input load,
    input [511:0] data,
    output reg [511:0] q
);

    integer i;

    always @(posedge clk) begin
        if (load) begin
            q <= data;
        end else begin
            // Left boundary
            q[0] <= q[1];

            // Middle cells
            for (i = 1; i < 511; i = i + 1) begin
                q[i] <= q[i-1] ^ q[i+1];
            end

            // Right boundary
            q[511] <= q[510];
        end
    end

endmodule
