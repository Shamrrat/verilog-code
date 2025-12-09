module arrar_memory;
reg signed [7:0] mem[0:15];
integer i;
initial
begin
mem[0] ="he";
mem[1] = 4;
mem[2] = 32;
mem[3] = -7;
$display("mem= %c,  %d, %d, %d",mem[0],mem[1],mem[2],mem[3]);
$readmemb("memory.m",mem);
for (i=0;i<9;i=i+1)
	$display("mem[%0d]= %b",i,mem[i]);
end
endmodule
