module mux2to1(input [1:0]in,input sel,output y);
assign y=in[sel];
endmodule
