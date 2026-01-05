module priority_encoder_tb;
reg [7:0]d;
wire [2:0]y;
priority_encoder dut(.d(d),.y(y));
initial begin
	d=0;
	$monitor("time=%0t  | d=%b | y=%b",$time,d,y);
	$dumpfile("priority_encoder.vcd");
	$dumpvars(0,priority_encoder_tb);
	#5; d=8'b11110000;
	#5; d=8'b00100000;
	#5; d=8'b00010000;
	$finish;
end
endmodule


