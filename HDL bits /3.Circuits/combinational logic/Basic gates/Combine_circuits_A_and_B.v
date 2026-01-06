
module top_module_b ( input x, input y, output z );
    assign z=~(x^y);
endmodule
module top_module_a (input x, input y, output z);
    assign  z = (x^y) & x;
endmodule
module top_module (input x, input y, output z);
    wire w,w1,w2,w3,w4,w_a;
    top_module_a uut1 (x,y,w1);
    top_module_b uut2 (x,y,w2);
    top_module_a uut3 (x,y,w3);
    top_module_b uut4 (x,y,w4);
    assign w=w1|w2;
    assign w_a=w3&w4;
    assign z=w^w_a;
endmodule
