module mux8to1_tb;
integer i;
reg [7:0]in;
reg [2:0]sel;
wire y;
mux8to1 dut(.in(in),.sel(sel),.y(y));
initial
begin
$monitor("io=%b  i1=%b i2=%b i3=%b i4=%b i5=%b i6=%b i7=%b sel=%d y=%b",in[0],in[1],in[2],in[3],in[4],in[5],in[6],in[7],sel,y);
$dumpfile("mux8to1_tb.vcd");
$dumpvars(0,mux8to1_tb);
for(i=0;i<8;i=i+1)
begin
in=8'b10010110;
sel=i;
#5;
end
$finish;
end
endmodule
