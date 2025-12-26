module updown_counter(input clk,reset,up,output reg [3:0]count);
always@(posedge clk or posedge reset) begin
	if (reset)
		count<=4'b0000;
	else begin
		if(up)
		count<=count+1;
	        else
        	count<=count-1;
	end
end 
endmodule



