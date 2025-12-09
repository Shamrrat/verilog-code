module operators_tb;
reg [1:0]a,b;
wire [1:0]add,sub;
wire [5:0]mul;
operators dut(.a(a),.b(b),.add(add),.sub(sub),.mul(mul));
initial
begin
	$monitor("time=%0t a=%d b=%d add=%b sub=%d mul=%d",$time,a,b,add,sub,mul);
	$dumpfile("operators.vcd");
	$dumpvars(0,operators_tb);
        #10 a=2; b=1;
	#10 a=1; b=1;
	#10 a=0; b=3;
$finish;	
end
endmodule
