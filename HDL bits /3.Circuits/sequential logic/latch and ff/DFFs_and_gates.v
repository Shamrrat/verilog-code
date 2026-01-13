module top_module (
    input clk,
    input x,
    output z
); 
    reg w1,w2,w3,qc,qb,qa,qa_bar,qb_bar,qc_bar;
        assign    w1=qa^x;
        assign    w2=qb_bar&x;
        assign    w3=qc_bar|x;
        assign    qa_bar=~qa;
        assign    qb_bar=~qb;
        assign    qc_bar=~qc;
    assign    z=~(qa|qb|qc);
       always@(posedge clk)
        begin
            qa<=w1;
            qb<=w2;
            qc<=w3;
        end

endmodule
