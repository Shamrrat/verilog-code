 module reverse_nibble;
 reg[7:0]a;
 initial
 begin
	 a=8'b11010101;
$display("a=%b" ,a);
a[3:0]={a[0],a[1],a[2],a[3]};
$display("after revering a=%b",a);
end 
endmodule
