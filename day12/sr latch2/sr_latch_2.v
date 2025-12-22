module sr_latch_2(input s,r,en,output reg q,q_bar);
always@(*)
begin
	if (en)
	begin
 q<=~(r&q_bar);
 q_bar<=~(s&q);
 end
 else
 begin
	 q<=0;
   q_bar<=0;
 end
 end
endmodule
