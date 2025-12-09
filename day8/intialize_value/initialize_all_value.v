module initialize_memory;
reg [7:0]mem[0:7];
reg [7:0]data;
integer i;
initial
begin
data=8'h33;
$display("data=%h",data);
for(i=0;i<8;i=i+1) begin
	mem[i]=data;
	$display("memory[%0d]=%h",i,mem[i]);
end
end
endmodule
	



