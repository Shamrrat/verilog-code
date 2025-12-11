
module full_sub(input a,b,cin,output s,borrow);
assign {borrow,s}=a-b-cin;
endmodule
