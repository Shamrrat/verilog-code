module jk_latch_tb;
reg j, k, en;
wire q, q_bar;
jk_latch dut (.j(j),.k(k),.en(en),.q(q),.q_bar(q_bar));
initial begin
    $dumpfile("jk_latch_tb.vcd");
    $dumpvars(0, jk_latch_tb);
    j = 0; k = 0; en = 0;#5;
    en = 1;
    #5  j = 1; k = 0;
    #5  j = 1; k = 1;
    #5  j = 0; k = 1;
    #5  j = 0; k = 0;
    #5  j = 1; k = 1;
    #5  j = 1; k = 1;
    #5  j = 1; k = 1;
    #5  j = 1; k = 1;
    #5  en = 0;
    #5  j = 1; k = 0; 
   #10 $finish;
end
initial begin
    $monitor("t=%0t en=%b j=%b k=%b q=%b q_bar=%b",
              $time, en, j, k, q, q_bar);
end

endmodule

