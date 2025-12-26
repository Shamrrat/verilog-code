module moore_101_seq(input in,clk,reset,output reg y);
parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
reg [1:0] present_state,next_state;
always@(posedge clk or posedge reset) begin
	if(reset)
		present_state<=S0;
	else
		present_state<=next_state;
end
always@(*) begin
	next_state=present_state;
	y=1'b0;
	case(present_state)
		S0 : if(in)
		       next_state=S1;
	        S1:  if(in)
		      next_state=S1;
	      else 
		      next_state=S2;
	        S2:  if(in)
		      next_state=S3;
	      else
		      next_state=S0;
	      S3:begin y=1'b1;
		     if(in)
			     next_state=S1;
		     else 
			     next_state=S2;
	     end
		     default: next_state=S0;
	     endcase
     end
     endmodule



