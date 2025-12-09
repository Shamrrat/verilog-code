module reduction_operator_tb;
reg [3:0]a;
wire  r_and,r_or;
reduction_operator dut(.a(a),.r_and(r_and),.r_or(r_or));
initial
begin
$monitor(" time=%t  a=%b  r_and=%b r_or=%b",$time,a,r_and,r_or);
$dumpfile("reduction_operator.vcd");
$dumpvars(0, reduction_operator_tb);
#10 a=4'b0000;
#10 a=4'b0100;
#10 a=4'b1111;
#10 a=4'b1000;
#10 a=4'b1100;
#10 a=4'b0001;
$finish;
end
endmodule
