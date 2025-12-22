module sr_latch(input s,r,output reg q,q_bar);
always@(*)
begin
 q=~(r&q_bar);
 q_bar=~(s&q);
 end
endmodule


