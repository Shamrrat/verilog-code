module full_adder_nbits_tb;
parameter N=3;
integer i;
reg [N-1:0]a,b;
reg cin;
wire [N-1:0]s;
wire cout;
full_adder_nbits dut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$monitor("time=%0t a=%b b=%b cin=%b  s=%b  cout=%b",$time,a,b,cin,s,cout);
$dumpfile("full_adder_nbits.vcd");
$dumpvars(0,full_adder_nbits_tb);
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
