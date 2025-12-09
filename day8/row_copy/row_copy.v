module row_copy;
reg [7:0]mem[0:7];
reg [7:0]reg_a;
initial
begin
mem[0]=8'b11111111;
mem[1]=8'b00000000;
mem[2]=8'b10101010;
mem[3]=8'b01101101;
mem[4]=8'b11110000;
reg_a=mem[2];
$display("mem content \nmem[0]=%b \nmem[1]=%b\nmem[2]=%b\nmem[3]=%b\n copied content of mem[2] in reg_a=%b",mem[0],mem[1],mem[2],mem[3],reg_a);
end
endmodule

