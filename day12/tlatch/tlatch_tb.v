module t_latch_tb;
reg t, en;
wire q, q_bar;
t_latch dut (.t(t),.en(en),.q(q),.q_bar(q_bar));
initial begin
    $dumpfile("t_latch_tb.vcd");
    $dumpvars(0, t_latch_tb);
    q=1;q_bar=0;
    t = 0;  en = 0;#5;
    en = 1;
    #5  t = 1; 
    #5  t = 1; 
    #5  t = 0; 
    #5  t = 0; 
    #5  t = 1; 
    #5  t = 1;
    #5  en = 0;
    #5  t = 1; 
   #10 $finish;
end
initial begin
    $monitor("t=%0t en=%b t=%b q=%b q_bar=%b",
              $time, en, t, q, q_bar);
end
endmodule

