module d_latch_2_tb;
wire q,q_bar;
reg en,d;
d_latch_2 dut(.d(d),.q(q),.en(en),.q_bar(q_bar));
initial
begin
        $monitor(" d=%b en=%b  q=%b q_bar=%b",d,en,q,q_bar);
        $dumpfile("d_latch_2_tb.vcd");
        $dumpvars(0,d_latch_2_tb);
	#4;en=0;
	#4;d=1'b0;
	#5;en=1;

                #5;d=1'b1;
                #5;d=1'b1;
                #5;d=1'b0;
                #5;d=1'b1;
                #5;d=1'b0;
        end
  endmodule
