module decoder_tb;
reg [1:0]d;
wire [3:0]y;
decoder dut(.d(d),.y(y));
initial
begin
$monitor("d0=%b  y=%b",d,y);
$dumpfile("decoder_tb.vcd");
$dumpvars(0,decoder_tb);
d=2'b00;#5;
d=2'b01;#5;
d=2'b10;#5;
d=2'b11;#5;

$finish;
end
endmodule

