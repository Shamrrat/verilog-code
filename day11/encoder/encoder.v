module encoder (input [3:0]d0,output [1:0]y);
assign y[0]=d0[1]|d0[3];
assign y[1]=d0[2]|d0[3];
endmodule


