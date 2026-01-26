module top_module(
    input clk,
    input [7:0] in,
    input reset,    // Synchronous reset
    output done); //
    parameter BYTE1=0,BYTE2=1,BYTE3=2,DONE=3;
    reg [1:0]cs,ns;
    

    // State transition logic (combinational)
    always@(*) begin
        ns=cs;
        case(cs)
            BYTE1:  if(in[3]==1)
                ns=BYTE2;
            else 
                ns=BYTE1;
            BYTE2: ns=BYTE3;
            BYTE3: ns=DONE;
            DONE:  if(in[3]==1)
                ns=BYTE2;
            else 
                ns=BYTE1;  
            
        endcase
    end
    // State flip-flops (sequential)
    always@(posedge clk)
        
        if(reset)
            cs<=BYTE1;
    else
        cs<=ns;
    
 
    // Output logic
            assign done=(cs==DONE);

endmodule
