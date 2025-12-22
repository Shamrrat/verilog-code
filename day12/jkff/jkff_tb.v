module jk_ff_tb;
reg j, k, clk,reset;
wire q, q_bar;
jk_ff dut (.j(j),.k(k),.clk(clk),.reset(reset),.q(q),.q_bar(q_bar));
initial clk=1'b0;
always begin
	#2; clk=~clk;
end
initial begin
    $dumpfile("jk_ff_tb.vcd");
    $dumpvars(0, jk_ff_tb);
    #5; reset=1;
    j = 0; k = 0; reset = 0;#5;
    #5  j = 1; k = 0;
    #5  j = 1; k = 1;
    #5  j = 0; k = 1;
    #5  j = 0; k = 0;
    #5  j = 1; k = 1;
      
    #5  j = 1; k = 1;
    #5  clk = 0;
    #5  j = 1; k = 0; 

end
initial begin
    $monitor("t=%0t reset=%b clk=%b j=%b k=%b q=%b q_bar=%b",
              $time,reset,clk, j, k, q, q_bar);
       #50; $finish;

end
  
endmodule
