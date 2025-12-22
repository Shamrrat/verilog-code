module d_ff_tb;
wire q,q_bar;
reg d,clk,reset;
d_ff dut(.d(d),.q(q),.clk(clk),.reset(reset),.q_bar(q_bar));
initial clk=1'b0;
always begin #1;clk=~clk;
end
initial
begin
	$monitor("clk=%b reset=%b d=%b q=%b q_bar=%b",clk,reset,d,q,q_bar);
	$dumpfile("d_ff_tb.vcd");
	$dumpvars(0,d_ff_tb);
                #5;reset=1'b1;
   		#5;reset=1'b0;
	        #5;d=1'b1; 
		#5;d=1'b1; 
		#5;d=1'b0; 
		#5;d=1'b1;
		#5;d=1'b0; 
		#200; $finish;
	end

	endmodule
