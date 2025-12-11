module full_adder_tb;
reg a,b,cin;
wire s,cout;
full_adder dut(.a(a),.b(b),.cin(cin),.s(s),.cout(cout));
initial
begin
$monitor("time=%0t a=%b b=%b cin=%b  s=%b  cout=%b",$time,a,b,cin,s,cout);
$dumpfile("full_adder.vcd");
$dumpvars(0,full_adder_tb);
#10 a=1'b0; b=1'b0; cin=1'b0;
#10 a=1'b0; b=1'b1; cin=1'b1;
#10 a=1'b1; b=1'b0; cin=1'b1;
#10 a=1'b1; b=1'b1; cin=1'b0;
$finish();
end
endmodule
