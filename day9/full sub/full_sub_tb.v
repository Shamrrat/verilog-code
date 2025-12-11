module full_sub_tb;
reg a,b,cin;
wire s,borrow;
full_sub dut(.a(a),.b(b),.cin(cin),.s(s),.borrow(borrow));
initial
begin
$monitor("time=%0t a=%b b=%b cin=%b  s=%b  borrow=%b",$time,a,b,cin,s,borrow);
$dumpfile("full_sub.vcd");
$dumpvars(0,full_sub_tb);
#10 a=1'b0; b=1'b0; cin=1'b0;
#10 a=1'b0; b=1'b1; cin=1'b1;
#10 a=1'b1; b=1'b0; cin=1'b1;
#10 a=1'b1; b=1'b1; cin=1'b0;
$finish();
end
endmodule
