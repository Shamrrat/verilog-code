module non_blocking;
reg [3:0]a,b;
initial
begin
	a=3;
	b=2;
$monitor("a=%d  b=%d",a,b);
a<=b;
b<=a;
end 
endmodule
