module ripple_carry_adder(input[3:0]a,b,input cin,output [3:0]s,output cout);
wire t1,t2,t3;
full_adder fa1(.a(a[0]),.b(b[0]),.cin(cin),.s(s[0]),.cout(t1));
full_adder fa2(.a(a[1]),.b(b[1]),.cin(t1),.s(s[1]),.cout(t2));
full_adder fa3(.a(a[2]),.b(b[2]),.cin(t2),.s(s[2]),.cout(t3));
full_adder fa4(.a(a[3]),.b(b[3]),.cin(t3),.s(s[3]),.cout(cout));
endmodule
module full_adder(input a,b,cin,output s,cout);
assign s=a^b^cin;
assign cout=(a&b) |(b&cin) |(cin&a);
endmodule




