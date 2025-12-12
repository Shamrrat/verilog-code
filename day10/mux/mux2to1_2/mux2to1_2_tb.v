module mux2to1_tb;
reg i0,i1,sel;
wire y;
mux2to1 dut(.i0(i0),.i1(i1),.sel(sel),.y(y));
initial
begin
$monitor("io=%b  i1=%b sel=%b y=%b",i0,i1,sel,y);
$dumpfile("mux2to1_tb.vcd");
$dumpvars(0,mux2to1_tb);
i0=1; i1=0; sel=0;
#5; sel=1;
$finish;
end
endmodule
