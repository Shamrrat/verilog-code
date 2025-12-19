module encoder_2_tb;
reg [3:0]d0;
wire [1:0]y;
encoder_2 dut(.d0(d0),.y(y));
initial
begin
$monitor("d0=%b  y=%b",d0,y);
$dumpfile("encoder_2_tb.vcd");
$dumpvars(0,encoder_2_tb);
d0=4'b0100;#5;
d0=4'b1000;#5;
d0=4'b0001;#5;
d0=4'b0010;#5;


$finish;
end
endmodule
