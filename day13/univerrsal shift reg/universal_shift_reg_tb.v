
module universal_shift_reg_tb;
reg serial_in;
reg clk,reset;
reg[3:0]parallel_in;
wire [3:0]parallel_out;
reg[1:0]mode;
wire serial_out;

universal_shift_reg dut (.serial_in(serial_in),.clk(clk),.reset(reset),.mode(mode),.parallel_in(parallel_in),.parallel_out(parallel_out),.serial_out(serial_out));
always begin
        #2; clk=~clk;
end
initial
begin
        clk=0;
        reset=1;
        serial_in=0;
        parallel_in=0;
	$dumpfile("universal_shift_reg_tb.vcd");
        $dumpvars(0,universal_shift_reg_tb);
        #5; reset=0;
        #4; mode=2'b00;
        #3; serial_in=1;
        #4; serial_in=0;
        #4; serial_in=1;
        #4; serial_in=1;
        #4; serial_in=0;
        #4; mode=2'b11;
        #4; mode=2'b10;
        #50; $finish();
end
always@(posedge clk)
	 $display(" clk=%b reset=%b mode=%b parallel_in=%b serial_in=%b parallel_out=%b serial_out=%b",clk,reset,mode,parallel_in,serial_in,parallel_out,serial_out);

endmodule
