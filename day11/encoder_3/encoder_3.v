module encoder_3 (input [3:0]d0,output reg [1:0]y);
always@(*)begin
	if(d0==4'b1000)
		y=2'b11;
	else if(d0==4'b0100)
	y=2'b10;
	else if(d0==4'b0010)
	y=2'b01;
	else
		y=2'b00;
end
  endmodule

