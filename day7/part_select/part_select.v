module part_select;
reg [7:0]a,b;
initial
begin
a=8'b00001111;
b=8'b00000001;
b[7:4]=a[3:0];
$display("a=%b b=%b \n lower 4 bit of a=%b \n upper 4 bbit of b=%b",a,b,a[3:0],b[7:4]);
end 
endmodule
