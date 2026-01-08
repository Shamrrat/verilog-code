// finding the max of two number
module max;
reg [2:0]a,b;
reg [2:0]max;
function [2:0] max_no;
	input [2:0]a,b;
	begin 
	if(a>b)
		max_no=a;
	else
		max_no=b;
end
endfunction
initial begin
	a=4;
	b=1;
	max=max_no(a,b);
	$display("max is %d",max);
end
endmodule

