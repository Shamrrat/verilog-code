module mux_condition_tb;
reg i0,i1,s;
wire y;
mux_condition dut (.i0(i0),.i1(i1),.s(s),.y(y));
initial
begin
	$monitor("time=%0t i0=%b i1=%b s=%b y=%b",$time,i0,i1,s,y);
       $dumpfile("mux_condition_tb.vcd");
       $dumpvars(0,mux_condition_tb);
       #5 i0=1; i1=0; s=0;
       #5 s=1;
$finish();
end 
endmodule
