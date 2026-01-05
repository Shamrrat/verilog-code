module ripple_carry_adder_tb;
reg [3:0]a,b;
reg c_in;
wire [3:0]sum;
wire [3:0]c_out;
ripple_carry_adder dut(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));
initial begin
	a=4'b0000;
	b=4'b0000;
	c_in=0;
$monitor("time=%0t | a=%b |b=%b | c_in=%b | sum=%b | c_out=%b",$time,a,b,c_in,sum,c_out[3]);
$dumpfile("ripple_carry_adder.vcd");
$dumpvars(0,ripple_carry_adder_tb);
  #5;a=4'b1010; b=4'b1001; c_in=0;
  #5;a=4'b1000; b=4'b0001; c_in=1; 
  #5;a=4'b1010; b=4'b0010; c_in=0;
  $finish;
  end
  endmodule

