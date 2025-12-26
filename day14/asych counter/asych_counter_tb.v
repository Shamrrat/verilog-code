module ripple_counter_tb;
reg clk,reset;
wire [3:0]count;
ripple_counter dut(.clk(clk),.reset(reset),.count(count));
always@(negedge clk) 
	$display("time=%0t  clk=%b reset=%b count=%d",$time,clk,reset,count);
always begin
	#5; clk=~clk; end
initial begin
        $dumpfile("ripple_counter.vcd");
	$dumpvars(0,ripple_counter_tb);	
	clk=0;
	#5; reset=1;
	#5; reset=0;
	#400; $finish;
end
endmodule
