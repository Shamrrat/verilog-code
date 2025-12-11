module complment_2_tb;
reg [3:0]data;
wire [3:0]complement;
complement_2 dut(data,complement);
initial
begin
$monitor("data=%b   2's complment of data=%b",data,complement);
$dumpfile("complment_2_tb.vcd");
$dumpvars(0,complment_2_tb);
#10 data=4'b1010;
#10 data=4'b1110;
#10 data=4'b0010;
#10 data=4'b1111;
$finish();
end
endmodule
