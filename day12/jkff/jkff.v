module jk_ff (input  wire j,k,reset,clk,output reg  q,q_bar);
always @(posedge clk) begin
    if (reset) begin
        q<=1'b0;
	q_bar<=1'b1;
end
else begin
	case({j,k})
		2'b00 : begin q<=q;    q_bar<=q_bar; end
		2'b01 : begin q<=1'b0;   q_bar<=1'b1; end
		2'b10 : begin q<=1'b1;   q_bar<=1'b0; end
		2'b11 : begin q<=~q;   q_bar<=~q_bar; end 

default : q<=1'bx;
endcase
    end
     end

endmodule
