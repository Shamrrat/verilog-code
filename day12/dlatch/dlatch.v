module d_latch(input d,output reg q,q_bar);
always@(*)
begin
 q<=d;
 q_bar<=~d;
 end
endmodule
