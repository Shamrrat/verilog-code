module piso_reg_tb;
reg [3:0]parallel_in;
reg clk,reset,load;
wire serial_out;
piso_reg dut (.parallel_in(parallel_in),.clk(clk),.reset(reset),.load(load),.serial_out(serial_out));
always begin
	#2; clk=~clk;
end
initial
begin
	clk=0;
	reset=1;
	parallel_in=0;
	load=0;
	$monitor(" time=%t clk=%b reset=%b load=%b parallel_in=%b  serial_out=%b",$time,clk,reset,load,parallel_in,serial_out);
        $dumpfile("piso_reg_tb.vcd");
	$dumpvars(0,piso_reg_tb);
	#5; reset=0;load=1;
	#3; parallel_in=4'b1011;
	#4; load=0;
	#20; reset=1;
	#10; $finish();
end
endmodule
