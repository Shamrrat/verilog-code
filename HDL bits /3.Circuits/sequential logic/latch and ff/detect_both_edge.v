module top_module (
    input clk,
    input [7:0] in,
    output [7:0] anyedge
);
reg [7:0] prev_in;
wire [7:0] rising_edge;

always @(posedge clk) begin
    // detect both edges: rising or falling
    anyedge <= prev_in ^ in;  // XOR detects any change
    prev_in <= in;             // store current input for next comparison
end

    

endmodule
