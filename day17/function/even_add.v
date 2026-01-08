// adding even bits of in
module even_add;
parameter N=4;
reg [N-1:0]in;
reg [1:0]out;
function [1:0]even_sum;
	input [3:0]a;
	integer i;

	begin
			even_sum=0;
		for(i=0;i<N;i=i+2)
			even_sum=even_sum+a[i];
	end
endfunction
initial begin
	in=4'b0001;
	out=even_sum(in);
	$display("even_add=%d",out);
	in=4'b0000;
	out=even_sum(in);
	$display("even_add=%d",out);
end 
endmodule
	
