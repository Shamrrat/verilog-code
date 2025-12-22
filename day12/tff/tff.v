module t_ff(input t,clk,reset,output reg q,q_bar);
always@(posedge clk)begin
	if(reset)begin
		q<=1'b0;
		q_bar<=1'b1;
	end
	else begin
    if(t)begin
               q<=~q;
               q_bar<=~q_bar;
       end
       else begin
	       q<=q;
	       q_bar<=q_bar;
  end
  end
 end
endmodule
