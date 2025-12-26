module mod_n_tb;
reg clk,reset;
wire [3:0]count;
mod_n dut(.clk(clk),.reset(reset),.count(count));
always@(posedge clk) 
	$display("time=%0t  clk=%b reset=%b count=%d",$time,clk,reset,count);
always begin
	#5; clk=~clk; end
initial begin
        $dumpfile("mod_n.vcd");
	$dumpvars(0,mod_n_tb); 
	clk=0;
	#5; reset=1;
	#5; reset=0;
	#160; $finish;
end
endmodule
