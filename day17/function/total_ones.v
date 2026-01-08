// Finding the number of one in the input
module func;
reg [3:0] a;
reg [2:0]ones;
function [2:0]out;
	input [3:0]in;
	integer i;
	
	begin 
	 	 out=0;
 for (i=0;i<4;i=i+1)
	 begin
		 if(in[i]==1'b1)
			 out=out+1;
		end
 end
endfunction
initial begin
	a=4'b1101;
 ones=out(a);
$display("ones=%d",ones);
 a=4'b1100;
 ones=out(a);
 $display("ones=%d",ones);
end
endmodule
