module top_module(
    input clk,
    input areset,    // Freshly brainwashed Lemmings walk left.
    input bump_left,
    input bump_right,
    input ground,
    input dig,
    output walk_left,
    output walk_right,
    output aaah,
    output digging ); 
 parameter LEFT=0,RIGHT=1,FALL_R=2,FALL_L=3,DIG_R=4,DIG_L=5;
    reg[2:0]present_state,next_state;
   always@(posedge clk or posedge areset)begin
        if(areset)
             present_state<=LEFT;
     else
         present_state<=next_state; end
    always@(*) begin
        next_state=present_state;
    case(present_state)
        LEFT : if(ground==0)
               next_state=FALL_L;
            else if (dig)
            next_state=DIG_L;
            else if (bump_left)
                next_state=RIGHT; 
        RIGHT:  if(ground==0)
               next_state=FALL_R;
            else if (dig)
            next_state=DIG_R;
            else if (bump_right)
                next_state=LEFT; 
        FALL_R:if(ground==1)
            next_state=RIGHT; 
        FALL_L: if(ground==1)
            next_state=LEFT;  
        DIG_L:  begin if(ground==0)
            next_state=FALL_L;
            else 
                next_state=DIG_L; end
        DIG_R :begin 
               if(ground==0)
            next_state=FALL_R;
            else 
                next_state=DIG_R; end
        default : next_state=LEFT;
    endcase  end
    always@(*) begin
        walk_left=0;
        walk_right=0;
        aaah=0;
        digging=0;
    case(present_state)
        LEFT: walk_left=1;
        RIGHT: walk_right=1;
        FALL_R:aaah=1;
        FALL_L: aaah=1;
        DIG_L : digging=1; 
        DIG_R : digging=1;   
      
    endcase
    end
    
endmodule
