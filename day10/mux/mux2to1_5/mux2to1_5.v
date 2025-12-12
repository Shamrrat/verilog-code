module mux2to1(input [1:0][3:0]in,input sel,output [3:0]y);
assign y=in[sel];
endmodule
