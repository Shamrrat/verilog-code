module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );
    wire [99:0]w;
    genvar k;
generate
    for (k = 0; k < 100; k = k + 1) begin : adder_loop
        bcd_fadd bcd (
            .a   (a[4*k+3 : 4*k]),
            .b   (b[4*k+3 : 4*k]),
            .cin (k == 0 ? cin : w[k-1]),
            .sum (sum[4*k+3 : 4*k]),
            .cout(k == 99 ? cout : w[k])
        );
    end
endgenerate


endmodule
