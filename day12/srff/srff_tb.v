module srff_tb;
wire q,q_bar;
reg s,r,clk;
srff dut(.s(s),.r(r),.clk(clk),.q(q),.q_bar(q_bar));
initial 
	$monitor("s=%b r=%b clk=%b q=%b q_bar=%b",s,r,clk,q,q_bar);

always begin
	#5;clk=~clk;
end
initial
	clk=0;
initial 
begin
	$dumpfile("srff_tb.vcd");
	$dumpvars(0,srff_tb);
	        #10;s=1'b1; r=1'b0;
		#10;s=1'b1; r=1'b1;
		#10;s=1'b0; r=1'b1;
		#10;s=1'b1; r=1'b0;
		#10;s=1'b0; r=1'b0;
		$finish;
end
endmodule
