module sr_latch_2_tb;
wire q,q_bar;
reg s,r,en;
sr_latch_2 dut(.s(s),.r(r),.en(en),.q(q),.q_bar(q_bar));
initial
begin
        $monitor("s=%b r=%b en=%b q=%b q_bar=%b",s,r,en,q,q_bar);
        $dumpfile("sr_latch_2_tb.vcd");
        $dumpvars(0,sr_latch_2_tb);
	#5;en=1'b0;
	#5; en=1'b1;
                #5;s=1'b1; r=1'b0;
                #5;s=1'b1; r=1'b1;
                #5;s=1'b0; r=1'b1;
                #5;s=1'b1; r=1'b0;
                #5;s=1'b0; r=1'b0;
        end
        endmodule
