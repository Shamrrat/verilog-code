module mux2to1(input i0,i1,sel,output reg y);
always@(*)
begin
case(sel)
	0 : y=i0;
	1 : y=i1;
endcase
end
endmodule

