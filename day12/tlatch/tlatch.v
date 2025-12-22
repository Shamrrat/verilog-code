module t_latch (input  wire t,input  wire en,output reg  q,output reg  q_bar);
always @(*) begin
    if (en) begin
        q     = (t & ~q) | (~t & q);  
        q_bar = ~q;
    end
end
endmodule
