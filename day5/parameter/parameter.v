module parameter_;
parameter N=4;
reg [N-1:0]a,b;
reg [N+1:0]sum;
initial
begin	
a=12;
b=10;
sum =a+b;
$display("a=%d b=%d  sum=%d  ",a,b,sum);
end
endmodule
