module priority_encoder_4 (input [3:0]d0,output reg [1:0]y);
always@(*)
begin
	casez(d0)
		4'b1??? : y=2'b11;
		4'b?1?? : y=2'b10;
		4'b??1? : y=2'b01;
		4'b???1 : y=2'b00;
		default : y=2'b00;
	endcase
end
endmodule


