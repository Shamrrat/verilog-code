module read_write;
reg [7:0]mem[0:15];
reg w;
reg [3:0]address;
reg [7:0]din;
reg [7:0] dout;
always @(*)
begin
	if (w)
          	mem[address]=din;  //write
	else
		
		dout=mem[address]; // read

end
initial
begin
w=1'b1;
address=4;
din=8'b10101010;
$display("write=%b address=%d din=%b memory[address]=%b",w,address,din,mem[address]);
#5;
w=1'b0;
address=4;
$display("read =%b address=%d dout=%b memory[address]=%b",w,address,dout,mem[address]);
end
endmodule


