//testbench
module mux16to1_tb;
integer i;
reg [15:0]in;
reg [3:0]sel;
wire y;
mux16to1 dut(.in(in),.sel(sel),.y(y));
initial
begin
$monitor("in=%bsel=%d y=%b",in,sel,y);
$dumpfile("mux16to1_tb.vcd");
$dumpvars(0,mux16to1_tb);
for(i=0;i<16;i=i+1)
begin
in=16'b1001011010010110;
sel=i;
#5;
end
$finish;
end
endmodule
