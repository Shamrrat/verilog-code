module all_basic_gates_tb;
reg a,b;
wire  and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out;
all_basic_gates dut (.a(a),.b(b),.and_out(and_out),.or_out(or_out),.not_out(not_out),.nand_out(nand_out),.nor_out(nor_out),.xor_out(xor_out),.xnor_out(xnor_out));
initial
begin 
$dumpfile("all_basic_gates_tb.vcd");
$dumpvars(0,all_basic_gates_tb);
$monitor("time=%t | a=%b | b=%b | and_out=%b | or_out=%b | not_out=%b | nand_out=%b | nor_out=%b | xor_out=%b | xnor_out=%b",$time,a,b,and_out,or_out,not_out,nand_out,nor_out,xor_out,xnor_out);
    #10 a = 0; b = 0;
    #10 a = 0; b = 1;
    #10 a = 1; b = 0;
    #10 a = 1; b = 1;
    $finish;
end
endmodule
