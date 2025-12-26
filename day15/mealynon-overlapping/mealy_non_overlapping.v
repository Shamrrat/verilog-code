module mealy_non_overlapping_101_seq(input in,clk,reset,output reg y);
parameter S0=2'b00,S1=2'b01,S2=2'b10;
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
	        S2: if(in) begin
	              y=1'b1;
		      next_state=S0;
	              end
	      else
		      next_state=S0;
		     default: next_state=S0;
	     endcase
     end
     endmodule
