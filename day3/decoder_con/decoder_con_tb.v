module decoder_tb_tb;
  reg [1:0]a;
  wire [3:0]y ;
 decoder_con dut(.a(a),.y(y));
  initial 
  begin
   $monitor("time=%0t |   a=%b  |   y=%b ",$time,a,y);
   $dumpfile("decoder_tb_tb.vcd");
   $dumpvars(0,decoder_tb_tb);
   #10 a=2'b00;
   #10 a=2'b10;
   #10 a=2'b01;
   #10 a=2'b11;
   #10
   $finish;
end
endmodule
