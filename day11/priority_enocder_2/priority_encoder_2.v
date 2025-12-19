module priority_encoder_2 (input [3:0]d0,output reg [1:0]y);
always@(*)begin
	if(d0[3])
		y=2'b11;
	else if(d0[2])
	y=2'b10;
	else if(d0[1])
	y=2'b01;
	else
		y=2'b00;
end
endmodule


