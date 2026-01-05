module ripple_carry_adder(input[3:0]a,b,input c_in,output [3:0]sum,output [3:0]c_out);
genvar i;
generate 
	for(i=0;i<4;i=i+1)
		full_adder uut(.a(a[i]),.b(b[i]),.c_in(i==0 ? c_in :c_out[i-1]),.sum(sum[i]),.c_out(c_out[i]));

endgenerate
	endmodule
module full_adder(input a,b,c_in,output sum,c_out);
assign{c_out,sum}=a+b+c_in;
endmodule
