module scalar_vector;
reg flag;
reg [7:0]data;
initial
begin
data=8'b10100101;
flag=data[7];
$display("data=%b  flag=%b",data,flag);
end
endmodule

