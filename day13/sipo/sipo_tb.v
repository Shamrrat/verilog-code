module sipo_reg_tb;
reg serial_in;
reg clk,reset,enable;
wire[3:0] parallel_out;
sipo_reg dut (.serial_in(serial_in),.clk(clk),.reset(reset),.enable(enable),.parallel_out(parallel_out));
always begin
	#2; clk=~clk;
end
initial
begin
	clk=0;
	reset=1;
	serial_in=0;
	enable=0;
	$monitor(" clk=%b reset=%b enable=%b serial_in=%b parallel_out=%b",clk,reset,enable,serial_in,parallel_out);
        $dumpfile("sipo_reg_tb.vcd");
	$dumpvars(0,sipo_reg_tb);
	#5; reset=0;enable=1;
	#3; serial_in=1;
	#4; serial_in=0;
	#4; serial_in=1;
	#4; serial_in=1;
	#4; enable=0;
	#4; serial_in=0;
	#50; $finish();
end
endmodule
