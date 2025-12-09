module and_using_nand(input a,b,output y);
wire c;
nand(c,a,b);
nand(y,c,c);
endmodule 
