`timescale 100us/1ns
module clk_1hz(input clk,reset,output reg clk_1hz);
reg[12:0] count;
always@(posedge clk) begin
	if(reset) begin
		count<=13'd0;
		clk_1hz<=0; 
	end
	else begin
		if(count==2499)begin
			count<=0;
			clk_1hz=~clk_1hz;
		end
		else
			count<=count+1;
	end
end
endmodule

module clk_1hz_tb;
reg clk,reset;
wire clk_1hz;
clk_1hz dut(.clk(clk),.reset(reset),.clk_1hz(clk_1hz));
always #1 clk=~clk;
initial begin
	$monitor("time=%t | reset=%b | count=%d |clk=%b | clk_1hz=%b",$time,reset,dut.count,clk,clk_1hz);
	$dumpfile("clk_1hz_tb.vcd");
	$dumpvars(0,clk_1hz_tb);
	clk=0;
	reset=1;
	#5; reset=0;
	#100000000; $finish;
end
endmodule


		
