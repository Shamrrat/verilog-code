module mod_n(input clk,reset,output reg [3:0]count);
always@(posedge clk) begin
	if (reset)
		count<=4'b0000;
	else if(count==4'b1001)
		count<=4'b0000;
	else
		count<=count+1;
end 
endmodule



