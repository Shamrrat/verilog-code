module and_gate(input wire a,b,output wire c);
and(c,a,b);
endmodule
//testbench
module and_gate_tb();
reg a,b;
wire c;
and_gate dut(.a(a),.b(b),.c(c));
initial
begin
$monitor("time=%0t a=%b b=%b c=%b",$time,a,b,c);
$dumpfile("and_gate.vcd");
$dumpvars(0,and_gate_tb);
#10 a=1'b0; b=1'b0;
#10 a=1'b0; b=1'b1;
#10 a=1'b1; b=1'b0;
#10 a=1'b1; b=1'b1;
$finish();
end
endmodule
