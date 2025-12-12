module mux2to1_tb;
reg [1:0]in;
reg sel;
wire y;
mux2to1 dut(.in(in),.sel(sel),.y(y));
initial
begin
$monitor("io=%b  i1=%b sel=%b y=%b",in[0],in[1],sel,y);
$dumpfile("mux2to1_tb.vcd");
$dumpvars(0,mux2to1_tb);
in=2'b01; sel=0;
#5; sel=1;
$finish;
end
endmodule
