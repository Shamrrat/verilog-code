module bit_select(input wire [0:2]a,b,output wire and_o,or_o,not_o);
and(and_o,a[0],b[0]);
or(or_o,a[0],b[0]);
not(not_o,a[0]);
endmodule



 
