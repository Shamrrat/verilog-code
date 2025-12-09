module variables;
reg a,b,c;
reg signed [2:0]x,y,z;
integer f,d,e;
initial
begin
b=1;
c=1;
a=b+c;
x=-4;
y=-3;
z=x+y;
d=8;
e=6;
f=d+e;
$display("a=%b  b=%b c=%b  d=%d  e=%d  f=%d  x=%d y=%d z=%d",a,b,c,d,e,f,x,y,z);
end 
endmodule

