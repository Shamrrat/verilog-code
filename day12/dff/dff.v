module d_ff(input d,clk,reset,output reg q,q_bar);
always@(posedge clk)
begin
	if(reset)begin
		q<=1'b0;
		q_bar<=1'b1;
	end
	else begin
               q<=d;
               q_bar<=~d;
       end
 end
endmodule
