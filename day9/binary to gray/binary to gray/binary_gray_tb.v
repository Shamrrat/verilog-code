module binary_gray_tb;
reg [3:0]binary;
wire [3:0]gray;
integer i;
binary_gray dut(.binary(binary),.gray(gray));
initial
begin
$monitor("time=%0t binary=%b gray=%b",$time,binary,gray);
$dumpfile("binary_gray.vcd");
$dumpvars(0,binary_gray_tb);
for(i=0;i<16;i=i+1)
begin
#10;	binary=i;
end
$finish();
end
endmodule
