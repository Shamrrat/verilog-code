module real_number;
real a,b;
real add,mul,div;
integer int;
initial
begin
	a=2.2;
	b=4.4;
	add=a+b;
	mul=a*b;
        div=b/a;
	int=a;
	a=int;
	$display("a=%f b=%f add=%f mul=%f div=%f int=%d a=%f",a,b,add,mul,div,int,a);end
	endmodule
