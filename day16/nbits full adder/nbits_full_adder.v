module nbit_full_adder(input[N-1:0]a,b,input c_in,output [N-1:0]sum,output c_out);
parameter N=8;
assign{c_out,sum}=a+b+c_in;
endmodule
