module toggle;
reg[7:0]x;
reg clk ;
initial
begin
$monitor("x=%b clk=%b",x,clk);
x=8'b11011001;
clk =x[3];
repeat (10)
#5 clk=~clk;
end
endmodule
