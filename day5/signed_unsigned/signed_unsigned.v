module signed_unsigned;
reg signed [3:0]a;
reg [3:0]b;
initial
begin
time t;
a=-3;#2;
b=-3;#2;
$display("a=%d  b=%d t=%t",a,b,t);
end 
endmodule
