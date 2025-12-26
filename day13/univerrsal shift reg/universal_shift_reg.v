module universal_shift_reg(input serial_in,reset,clk,input[3:0]parallel_in,input [1:0]mode,output reg [3:0]parallel_out,output reg serial_out);
reg [3:0]shift_reg;
always@(posedge clk) begin
        if(reset) begin
                shift_reg<=4'b0000;
                serial_out<=0;
                parallel_out<=4'b0000;
        end
        else
                case(mode)
                        2'b00 :shift_reg<={serial_in,shift_reg[3:1]};
                        2'b01 :shift_reg<=parallel_in;
			2'b10 :begin serial_out<=shift_reg[0]; shift_reg <= {1'b0, shift_reg[3:1]}; end
                        2'b11 :parallel_out<=shift_reg;
                        default : shift_reg<=4'b0000;
                endcase
        end
        endmodule

            
