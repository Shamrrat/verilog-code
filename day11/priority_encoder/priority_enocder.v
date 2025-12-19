module priority_encoder (input [3:0]d0,output [1:0]y);
assign y = d0[3] ? 2'b11 :
	         d0[2] ? 2'b10 :
           d0[1] ? 2'b01 :
	                 2'b00 ;

endmodule

