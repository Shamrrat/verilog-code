module mealy_non_overlapping_tb;
reg in,clk,reset;
wire y;
mealy_non_overlapping_101_seq dut(.clk(clk),.in(in),.reset(reset),.y(y));
always #5 clk=~clk;
always@(posedge clk) 
	$display("time=%0d | clk=%b | reset=%b |in=%b | present state=%d |next state=%d | y=%b",$time,clk,reset,in,dut.present_state,dut.next_state,y);
initial begin
	clk=0;
	reset=1;
	in=0;
	$dumpfile("mealy_non_overlapping.vcd");
	$dumpvars(0,mealy_non_overlapping_tb);
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
