module sr_latch_tb;
wire q,q_bar;
reg s,r;
sr_latch dut(.s(s),.r(r),.q(q),.q_bar(q_bar));
initial
begin
	$monitor("s=%b r=%b q=%b q_bar=%b",s,r,q,q_bar);
	$dumpfile("sr_latch_tb.vcd");
	$dumpvars(0,sr_latch_tb);
	        #5;s=1'b1; r=1'b0;
		#5;s=1'b1; r=1'b1;
		#5;s=1'b0; r=1'b1;
		#5;s=1'b1; r=1'b0;
		#5;s=1'b0; r=1'b0;
	end
endmodule
