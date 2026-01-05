module nbit_full_adder_tb;
parameter N=8;
reg [N-1:0]a,b;
reg c_in;
wire [N-1:0]sum;
wire c_out;
nbit_full_adder dut(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));
initial begin
	a=8'b00000000;
	b=8'b00000000;
	c_in=0;
$strobe("time=%0t | a=%d |b=%d | c_in=%b | sum=%d | c_out=%b",$time,a,b,c_in,sum,c_out);
$dumpfile("nbit_full_adder.vcd");
$dumpvars(0,nbit_full_adder_tb);
  #5;a=8'd12; b=8'd24; c_in=0;
$strobe("time=%0t | a=%d |b=%d | c_in=%b | sum=%d | c_out=%b",$time,a,b,c_in,sum,c_out);
  
  #5;a=8'd10; b=8'd13; c_in=1; 
$strobe("time=%0t | a=%d |b=%d | c_in=%b | sum=%d | c_out=%b",$time,a,b,c_in,sum,c_out);
  
  #5;a=8'd25; b=8'd22; c_in=0;
$strobe("time=%0t | a=%d |b=%d | c_in=%b | sum=%d | c_out=%b",$time,a,b,c_in,sum,c_out);
  
  $finish;
  end
  endmodule
