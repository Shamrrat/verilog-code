module reduction_operator(input [3:0]a, output r_and,r_or);
assign r_and=&a;
assign r_or=|a;
endmodule

