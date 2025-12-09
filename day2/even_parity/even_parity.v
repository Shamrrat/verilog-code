module even_parity(input [4:0]data,output [5:0]parity_generated);
wire y;
assign y=~^data;
assign parity_generated={data,y};
endmodule

