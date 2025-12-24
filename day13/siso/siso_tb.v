module siso_reg_tb;
reg serial_in;
reg clk,reset,enable;
wire serial_out;
siso_reg dut (.serial_in(serial_in),.clk(clk),.reset(reset),.enable(enable),.serial_out(serial_out));
always begin
	#2; clk=~clk;
end
initial
begin
	clk=0;
	reset=1;
	serial_in=0;
	enable=0;
	$monitor(" clk=%b reset=%b enable=%b serial_in=%b serial_out=%b",clk,reset,enable,serial_in,serial_out);
        $dumpfile("siso_reg_tb.vcd");
	$dumpvars(0,siso_reg_tb);
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
