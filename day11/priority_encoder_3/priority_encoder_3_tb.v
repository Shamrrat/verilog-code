module priority_encoder_3_tb;
reg [3:0]d0;
wire [1:0]y;
priority_encoder_3 dut(.d0(d0),.y(y));
initial
begin
$monitor("d0=%b  y=%b",d0,y);
$dumpfile("priority_encoder_3_tb.vcd");
$dumpvars(0,priority_encoder_3_tb);
d0=4'b0100;#5;
d0=4'b1000;#5;
d0=4'b0101;#5;
d0=4'b0010;#5;
d0=4'b0010;#5;
d0=4'b1010;#5;
d0=4'b1110;#5;
d0=4'b1111;#5;
$finish;
end
endmodule
