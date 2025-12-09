module half_adder_tb;
  reg a,b;
  wire s,c;
 half_adder dut(.a(a),.b(b),.s(s),.c(c));
  initial 
  begin
   $monitor("time=%0t |  a=%b  |   b=%b | s=%b | c=%b",$time,a,b,s,c);
   $dumpfile(" half_adder_tb.vcd");
   $dumpvars(0, half_adder_tb);
   #10 a=1'b0; b=1'b0;
   #10 a=1'b0; b=1'b1;
   #10 a=1'b1; b=1'b0;
   #10 a=1'b1; b=1'b1;
   #10 a=1'b0; b=1'b0;
 $finish;
  end
endmodule
