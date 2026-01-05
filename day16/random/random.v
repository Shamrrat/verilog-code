module random;
reg signed [7:0]a;
initial begin
	repeat(5) begin
	 a=$random;
	 if(a<100 && a>-100)
	 $display("a=%d",a);
          else
          $display("a is over the range ");
 end
 end
 endmodule
  //OUTPUT
a=  36
a is over the range
a=   9
a=  99
a=  13

