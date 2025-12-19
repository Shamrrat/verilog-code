module priority_encoder_2_tb;
reg [3:0]d0;
wire [1:0]y;
priority_encoder_2 dut(.d0(d0),.y(y));
initial
begin
$monitor("d0=%b  y=%b",d0,y);
$dumpfile("priority_encoder_2_tb.vcd");
$dumpvars(0,priority_encoder_2_tb);
d0=4'b1001;#5;
d0=4'b0110;#5;
d0=4'b0100;#5;
d0=4'b1000;#5;

$finish;
end
endmodule
