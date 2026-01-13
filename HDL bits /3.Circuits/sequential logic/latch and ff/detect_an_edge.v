module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
reg [7:0] in_d;

always @(posedge clk) begin
    pedge <= (~in_d) & in;  // detect 0 → 1 per bit
    in_d  <= in;            // store previous input
end



endmodule
