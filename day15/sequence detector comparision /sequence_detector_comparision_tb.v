module seq_detector_compar_tb;
reg in,clk,reset;
wire moore_y,mealy_y,non_overlapping_moore_y,non_overlapping_mealy_y;
seq_detector_compar dut(.clk(clk),.in(in),.reset(reset),.moore_y(moore_y),.mealy_y(mealy_y),.non_overlapping_moore_y(non_overlapping_moore_y),.non_overlapping_mealy_y(non_overlapping_mealy_y));
always #5 clk=~clk;
always@(posedge clk) 
	$display("time=%0d | clk=%b | reset=%b  | moore_y=%b | mealy_y=%b | non_overlapping_moore_y=%b | non_overlapping_mealy_y=%b",$time,clk,reset,moore_y,mealy_y,non_overlapping_moore_y,non_overlapping_mealy_y);
initial begin
	clk=0;
	reset=1;
	in=0;
	$dumpfile("seq_detector_compar.vcd");
	$dumpvars(0,seq_detector_compar_tb);
	#10;reset=1;
	#10;reset=0;
	#10; in=1; 
  #10; in=0;
	#10; in=1;
	#10; in=0;
	#10; in=1;
	#10; in=0;
	#10; in=1;
	#10; in=1;
	#10; in=0;
	#10; in=1;
	#10; in=1;
	#10; $finish;

	
end
endmodule
