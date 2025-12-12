//16to1 mux usign 2to1,4to1,8to1 mux
module mux16to1(input[15:0]in,input [3:0]sel,output y);
wire w1,w2,w3,w4,w5;
 mux8to1 u1 (.in(in[7:0]),.sel(sel[2:0]),.y(w1));
 mux4to1 u2 (.in(in[11:8]),.sel(sel[1:0]),.y(w2));
 mux4to1 u3 (.in(in[15:12]),.sel(sel[1:0]),.y(w3));
 mux2to1 u4 (.i0(w2),.i1(w3),.sel(sel[2]),.y(w4));
 mux2to1 u5 (.i0(w1),.i1(w4),.sel(sel[3]),.y(y));

 endmodule


// 4to 1 mux using 2to1 mux
module mux4to1(input[3:0]in,input[1:0]sel,output y);
wire w1,w2;

mux2to1 uut1(.i0(in[0]),.i1(in[1]),.sel(sel[1]),.y(w1));

mux2to1 uut2(.i0(in[2]),.i1(in[3]),.sel(sel[1]),.y(w2));

mux2to1 uut3(.i0(w1),.i1(w2),.sel(sel[0]),.y(y));
endmodule
//2to1 mux
module mux2to1(input i0,i1,sel,output y);
assign y=sel ? i1:i0;
endmodule

//8to1mux
module mux8to1(input [7:0]in,input [2:0]sel,output reg y);
always@(*)
begin
case(sel)
	3'b000 : y=in[0];
	3'b001 : y=in[1];
        3'b010 : y=in[2];
	3'b011 : y=in[3];
	3'b100 : y=in[4];
	3'b101 : y=in[5];
	3'b110 : y=in[6];
	3'b111 : y=in[7];
	default : y=1'bx;

endcase
end
endmodule


