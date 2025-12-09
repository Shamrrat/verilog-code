module comparator_tb;
reg [2:0]a,b;
wire lt,gt,eq;
comparator dut (a,b,lt,gt,eq);
initial
begin
	$monitor("a=%b b=%b a_is_lt=%b a_is_gt=%b eq=%b",a,b,lt,gt,eq);
	$dumpfile("comparator_tb.vcd");
	$dumpvars(0,comparator_tb);
	#10 a=3'b101; b=3'b000;
	#10 a=3'b101; b=3'b101;
	#10 a=3'b100; b=3'b001;
	#10 a=3'b101; b=3'b111;
	#10 a=3'b101; b=3'b000;
	#10 a=3'b101; b=3'b100;
	#10 a=3'b000; b=3'b000;
	$finish;
end
endmodule
