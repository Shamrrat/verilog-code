module even_parity_tb;
reg [4:0]data;
wire [5:0]parity_generated;
even_parity dut (.data(data),.parity_generated(parity_generated));
initial
begin
	$display("//Even parity generator ");
	$monitor(" \ndata=%b \nparity_bit=%b\noutput=%b",data,parity_generated[0],parity_generated);
	$dumpfile("even_parity_tb.vcd");
        $dumpvars(0,even_parity_tb);
	#10 data=5'b01101;
	#10 data=5'b01010;
	#10 data=5'b01111;
	$finish;
end
endmodule
