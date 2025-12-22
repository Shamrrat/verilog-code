module d_latch_2(input d,en,output reg q,q_bar);
always@(*)
begin
	if(en)
	begin
 q<=d;
 q_bar<=~d;
 end
 else
 begin
	 q<=1'bx;
         q_bar<=1'bx;
 end
 end
endmodule
