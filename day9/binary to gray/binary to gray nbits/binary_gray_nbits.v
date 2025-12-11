
module binary_gray_nbits #(parameter N=3)(input  [N-1:0]binary,output reg [N-1:0]gray);
integer i;
always@(*)begin
	gray[0]=binary[0];
	for (i=1;i<N;i=i+1)
		gray[i]=binary[i-1]^binary[i];
end
endmodule

