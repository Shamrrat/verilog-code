module register(input [3:0]in,input clk,reset,en,output reg [3:0]register);
always@(posedge clk) begin
	if(en) begin
		if(reset) begin
			register<=4'b0000;
		end
		else
			register<=in;
	end
	else
		register<=register;
end
endmodule
