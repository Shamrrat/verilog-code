module t_ff_tb;
wire q,q_bar;
reg t,clk,reset;
t_ff dut(.t(t),.q(q),.clk(clk),.reset(reset),.q_bar(q_bar));
initial clk=1'b0;
always begin #1;clk=~clk;
end
initial
begin
	$monitor("clk=%b reset=%b t=%b q=%b q_bar=%b",clk,reset,t,q,q_bar);
	$dumpfile("t_ff_tb.vcd");
	$dumpvars(0,t_ff_tb);
                #5;reset=1'b1;
   		#5;reset=1'b0;
	        #5;t=1'b1; 
		#5;t=1'b1; 
		#5;t=1'b0; 
		#5;t=1'b1;
		#5;t=1'b0; 
		#50; $finish;
	end
endmodule
