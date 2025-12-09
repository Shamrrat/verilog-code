module bit_select_tb;
reg  [0:2]a,b;
wire  and_o,or_o,not_o;
bit_select dut(.a(a),.b(b),.and_o(and_o),.or_o(or_o),.not_o(not_o));
initial
begin
	$monitor("time=%0t | a=%b | b=%b |  and_o=%b  | or_o=%b | not_o=%b",$time,a,b,and_o,or_o,not_o);
	$dumpfile("bit_select.vcd");
	$dumpvars(0,bit_select_tb);
	#10 a=3'b010; b=3'b010;
	#10 a=3'b010; b=3'b110;
	#10 a=3'b110; b=3'b010;
	#10 a=3'b110; b=3'b110;
	$finish();
end
endmodule
