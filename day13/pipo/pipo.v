module pipo_reg(input clk,reset,load,input [3:0] parallel_in, output reg [3:0]parallel_out);
reg [3:0]shift_reg;
always@(posedge clk or posedge reset) begin
	if (reset) begin
                shift_reg<=4'b0000;
	        parallel_out=4'b0000;
	end
        else begin
		if(load)
begin
                        shift_reg<=parallel_in;
		        parallel_out<=shift_reg;
		end
                else 
                        parallel_out<=shift_reg;
        end

end
endmodule


