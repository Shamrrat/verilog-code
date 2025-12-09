module operators(a,b,add,sub,mul);
	input [1:0]a,b;
        output [1:0]add,sub;
	output [5:0]mul;
assign add=a+b;
assign sub=a-b;
assign mul=a*b;
endmodule
