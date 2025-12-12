module mux4to1_tb;
reg [3:0]in;
reg [1:0]sel;
wire y;
mux4to1 dut(.in(in),.sel(sel),.y(y));
initial
begin
$monitor("io=%b  i1=%b i2=%b i3=%b sel=%b y=%b",in[0],in[1],in[2],in[3],sel,y);
$dumpfile("mux4to1_tb.vcd");
$dumpvars(0,mux4to1_tb);
in=4'b0110; sel=0;
#5; sel=1;
#5; sel=2;
#5; sel=3;
$finish;
end
endmodule
