module sipo_reg(input clk,reset,serial_in,enable,output [3:0]parallel_out);
reg [3:0]shift_reg;
assign parallel_out=shift_reg[3:0];
always@(posedge clk or posedge reset) begin
	if (reset) 
		shift_reg<=4'b0000;
	else if(enable)
		shift_reg<={serial_in,shift_reg[3:1]};

end
endmodule

