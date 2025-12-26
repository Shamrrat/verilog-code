module upcounter_tb;
reg clk,reset;
wire [3:0]count;
upcounter dut(.clk(clk),.reset(reset),.count(count));
always@(posedge clk) 
	$display("time=%0t  clk=%b reset=%b count=%d",$time,clk,reset,count);
always begin
	#5; clk=~clk; end
initial begin
        $dumpfile("upcounter.vcd");
	$dumpvars(0,upcounter_tb); 
	clk=0;
	#5; reset=1;
	#5; reset=0;
	#400; $finish;
end
endmodule
