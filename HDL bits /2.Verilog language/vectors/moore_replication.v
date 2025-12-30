module top_module (
    input a, b, c, d, e,
    output [24:0] out );//
    wire [4:0]a1,b1,c1,d1,e1,all,o1,o2,o3,o4,o5;
    
    assign {a1,b1,c1,d1,e1}={{5{a}},{5{b}},{5{c}},{5{d}},{5{e}}};
    assign all={a,b,c,d,e};
    assign out = {o1,o2,o3,o4,o5};
    assign o1=~(a1^all);
    assign o2=~(b1^all);
    assign o3=~(c1^all);
    assign o4=~(d1^all);
    assign o5=~(e1^all);

        
    // concatenating and replicating the five inputs.
    // assign out = ~{ ... } ^ { ... };

endmodule
