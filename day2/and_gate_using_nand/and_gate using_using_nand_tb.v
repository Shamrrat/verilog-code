module and_using_nand_tb;
reg a,b;
wire y;
and_using_nand dut (.a(a),.b(b),.y(y));
initial 
begin
$monitor("time=%0t a=%b b=%b y=%b",$time,a,b,y);
$dumpfile("and_using_nand.vcd");
$dumpvars(0,and_using_nand_tb);
 #10 a=0; b=0;
 #10 a=0; b=1;
 #10 a=1; b=0;
 #10 a=1; b=1;
$finish;
end
endmodule
