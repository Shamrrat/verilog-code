module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out=(c&~b | c&a | a&~d);

endmodule
