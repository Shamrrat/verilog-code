module ripple_carry_adder_tb;
parameter N=4;
integer i;
reg [N-1:0]a,b;
reg cin;
wire [N-1:0]s;
wire cout;
ripple_carry_adder dut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$monitor("time=%0t a=%b b=%b cin=%b  s=%b  cout=%b",$time,a,b,cin,s,cout);
$dumpfile("ripple_carry_adder.vcd");
$dumpvars(0,ripple_carry_adder_tb);
for(i=0;i<2**N;i=i+1)
begin
cin=0;	
#10;a=i; b=i;
end
for(i=0;i<2**N;i=i+1)
begin
cin=1;	
#10;a=i; b=i;
end
$finish();
end
endmodule
