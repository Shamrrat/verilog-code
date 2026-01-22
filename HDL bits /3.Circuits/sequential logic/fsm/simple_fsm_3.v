module top_module(
    input clk,
    input in,
    input reset,
    output out); //
  parameter A=0,B=1,C=2,D=3;
    reg[1:0] present_state,next_state;
    // State transition logic
    always@(*) begin
        next_state=present_state;
        
        case(present_state)
            A : if(in)
                next_state=B;
            else
                next_state=A;
            B : if(in)    
                next_state=B;
            else 
                next_state=C;
            C :  if(in) 
               
                next_state=D; 
            else
                next_state=A;
            D :  if(in)
                next_state=B;
            else
                next_state=C;
default  : next_state=A;
        endcase end
    
    
    // State flip-flops with asynchronous reset
    always@(posedge clk )
        begin
            if(reset) 
            present_state<=A;
                
    else
        present_state=next_state;
        end

    // Output logic
    assign out=(present_state==D) ? 1'b1 : 1'b0;
    // State transition logic

    // State flip-flops with synchronous reset

    // Output logic

endmodule
