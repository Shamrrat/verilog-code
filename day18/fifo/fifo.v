module fifo( input clk,reset,w_en,r_en,
	     input [7:0]w_data,
	     output full,empty,
	     output reg [7:0] r_data);

reg [7:0]mem[15:0];
reg[4:0]w_ptr;
reg[4:0]r_ptr;
reg[4:0]count;

// WRITE LOGIC
always@(posedge clk or posedge reset) begin
	if(reset)
		w_ptr<=5'b0;
	else if (w_en && !full) begin
		mem[w_ptr[3:0]]<=w_data;
                w_ptr<=w_ptr+1;
	end
end
//READ LOGIC
always@(posedge clk or posedge reset) begin
	if (reset) begin
		r_ptr<=5'b0;
		r_data<=8'b0; end
	else if (r_en && !empty) begin
		r_data<=mem[r_ptr[3:0]];
		r_ptr<=r_ptr+1;
	end
end
//COUNT LOGIC
always@(posedge clk or posedge reset) begin
	if(reset)
		count<=5'b0;
	else begin 
		case({w_en && !full,r_en && !empty})
			2'b10 : count<=count +1;
			2'b01 : count<=count-1;
			default : count<=count;
		endcase
	end
end
assign full=(count == 5'd16);
assign empty=(count == 5'b0);
endmodule
