module moore_overlap(input in,clk,reset,output reg y);
parameter S0=3'b000,S1=3'b001,S2=3'b010,S3=3'b011,S4=3'b101,S5=3'b110;
reg [2:0] present_state,next_state;
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
	        S3:  if(in)
		      next_state=S4;
	      else 
		      next_state=S2;
                S4:  if(in)
		      next_state=S2;
	      else 
		      next_state=S5;

	        S5:begin y=1'b1;
		     if(in)
			     next_state=S3;
		     else 
			     next_state=S0;
	     end
		     default: next_state=S0;
	     endcase
     end
     endmodule
