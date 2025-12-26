module moore_non_ovrlapping_tb;
reg in,clk,reset;
wire y;
moore_non_ovrlapping_101_seq dut(.clk(clk),.in(in),.reset(reset),.y(y));
always #5 clk=~clk;
always@(posedge clk) 
	$display("time=%0d | clk=%b | reset=%b | present state=%d |next state=%d | y=%b",$time,clk,reset,dut.present_state,dut.next_state,y);
initial begin
	clk=0;
	reset=1;
	in=0;
	$dumpfile("moore_non_ovrlapping.vcd");
	$dumpvars(0,moore_non_ovrlapping_tb);
	#10;reset=1;
	#10;reset=0;
	#10; in=1;
        #10; in=0;
#10; in=1;
#10; in=0;
#10; in=1;
#10; in=0;
#10; in=1;
#10; in=1;
#10; in=0;
#10; in=1;
#10; in=1;
#10; $finish;

	
end
endmodule
