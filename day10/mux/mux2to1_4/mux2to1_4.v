module mux2to1(input i0,i1,sel,output y);
wire [1:0]t;
assign t={i1,i0};
assign y=t[sel];
endmodule
