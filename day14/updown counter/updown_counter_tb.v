module updown_counter_tb;
reg clk,reset,up;
wire [3:0]count;
updown_counter dut(.clk(clk),.up(up),.reset(reset),.count(count));
always@(posedge clk) 
	$display("time=%0t  clk=%b reset=%b up=%b count=%d",$time,clk,reset,up,count);
always 
	#5  clk=~clk; 
initial begin
        $dumpfile("updown_counter.vcd");
	$dumpvars(0,updown_counter_tb); 
	clk=0;
	reset=1;
	up=0;
	#5;
	reset=0;
	up=1;
	#130;
	up=0;
	#160;
	reset =1;
	#5;
	reset=0;
	up=1;

	#40; $finish;

end
endmodule
