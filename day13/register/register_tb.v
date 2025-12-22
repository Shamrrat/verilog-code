module register_tb;
reg [3:0]in;
reg clk,reset,en;
wire [3:0] register;
register dut (.in(in),.clk(clk),.reset(reset),.en(en),.register(register));
initial clk=0;
always begin
	#2; clk=~clk;
end
initial
begin
	$monitor("en=%b clk=%b reset=%b in=%d register=%d",en,clk,reset,in,register);
        $dumpfile("register_tb.vcd");
	$dumpvars(0,register_tb);
	#4;en=0;
	#4; en=1;
	#4; reset=0;
	#4; in=4'b1010;
	#4; in=4'b1110;
	#4; in=4'b1111;
	#2; reset=1;
	#4; in=4'b1011;
	#4; in=4'b1011;
	#4; in=4'b0101;
	#4; reset=0;
	#4; in=4'b1011;
	#4; in=4'b0111;
	#4; en=0;
	#4; in=4'b1011;
	#4; in=4'b0111;
	#100; $finish();
end
endmodule




