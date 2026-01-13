module top_module (
    input clk,
    input d,
    output q
);
    reg prev_clk;
  
    always@(*) begin
        if(prev_clk^clk) begin
        prev_clk<=clk;
        q<=d;
        end
        else
            q<=q;
    end

endmodule
