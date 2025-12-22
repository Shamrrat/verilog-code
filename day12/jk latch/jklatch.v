module jk_latch (input  wire j,input  wire k,input  wire en,output reg  q,output reg  q_bar);
always @(*) begin
    if (en) begin
        q     = (j & ~q) | (~k & q);  
        q_bar = ~q;
    end
end
endmodule
