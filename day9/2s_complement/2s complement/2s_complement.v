module complement_2(input [3:0]data,output [3:0] complement );
assign complement= (2**4)-(data);
endmodule



