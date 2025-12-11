module binary_gray_nbits_tb;
parameter N=3;
reg [N-1:0]binary;
wire [N-1:0]gray;
integer i;
binary_gray_nbits dut(.binary(binary),.gray(gray));
initial
begin
$monitor("time=%0t binary=%b gray=%b",$time,binary,gray);
$dumpfile("binary_gray_nbits.vcd");
$dumpvars(0,binary_gray_nbits_tb);
for(i=0;i<2**N;i=i+1)
begin
#10;	binary=i;
end
$finish();
end
endmodule
