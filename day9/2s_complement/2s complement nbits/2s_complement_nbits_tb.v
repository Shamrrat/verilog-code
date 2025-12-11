module complment_2_nbits_tb;
parameter N=4;
integer i;
reg [N-1:0]data;
wire [N-1:0]complement;
complement_2_nbits dut(data,complement);
initial
begin
$monitor("data=%b   2's complment of data=%b",data,complement);
$dumpfile("complment_2_nbits_tb.vcd");
$dumpvars(0,complment_2_nbits_tb);
for(i=0;i<2**N;i=i+1)
begin
#10;	data=i;
end
$finish();
end
endmodule
