module con;
reg[3:0]a,b;
wire [7:0]c;
assign c={a,b};
initial
begin
	a=4'b1010;
	b=4'b1111;
$display("a=%b b=%b c=%b",a,b,c);
end
endmodule
