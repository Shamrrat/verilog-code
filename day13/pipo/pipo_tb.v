module pipo_reg_tb;
reg [3:0]parallel_in;
reg clk,reset,load;
wire[3:0] parallel_out;
pipo_reg dut (.parallel_in(parallel_in),.clk(clk),.reset(reset),.load(load),.parallel_out(parallel_out));
always begin
        #2; clk=~clk;
end
initial
begin
        clk=0;
        reset=1;
        parallel_in=0;
        load=0;
        $monitor(" time=%0t clk=%b reset=%b load=%b parallel_in=%b  parallel_out=%b",$time,clk,reset,load,parallel_in,parallel_out);
        $dumpfile("pipo_reg_tb.vcd");
        $dumpvars(0,pipo_reg_tb);
        #5; reset=0;load=1;
        #3; parallel_in=4'b1011;
        #4; load=0;
        #10; reset=1;
        #5; $finish();
end
endmodule
