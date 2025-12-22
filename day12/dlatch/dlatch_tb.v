module d_latch_tb;
wire q,q_bar;
reg d;
d_latch dut(.d(d),.q(q),.q_bar(q_bar));
initial
begin
	$monitor(" d=%b q=%b q_bar=%b",d,q,q_bar);
	$dumpfile("d_latch_tb.vcd");
	$dumpvars(0,d_latch_tb);
	        #5;d=1'b1; 
		#5;d=1'b1; 
		#5;d=1'b0; 
		#5;d=1'b1;
		#5;d=1'b0; 
	end

	endmodule
