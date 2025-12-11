module complement_2_nbits #(parameter N=4)(input [N-1:0]data,output [N-1:0] complement );
assign complement= (2**N)-(data);
endmodule

