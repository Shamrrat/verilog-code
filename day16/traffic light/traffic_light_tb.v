module traffic_light_tb;
reg clk,reset;
wire red,green,yellow;
traffic_light dut(.clk(clk),.reset(reset),.red(red),.green(green),.yellow(yellow));
always begin
	#5; clk=~clk; end
always@(posedge clk)
	$display("time=%0t | reset=%b | red=%b | yellow=%b | green=%b",$time,reset,red,yellow,green);
initial begin
	clk=0;
	reset=1;
	$dumpfile("traffic_light.vcd");
	$dumpvars(0,traffic_light_tb);
	#5; reset=0;
	#400; $finish;
end
endmodule
