module decoder (input [1:0]d,output [3:0]y);
assign y[0]=~d[1]&!d[0];
assign y[1]=~d[1]&d[0];
assign y[2]=d[1]&!d[0];
assign y[3]=d[1]&d[0];

endmodule

