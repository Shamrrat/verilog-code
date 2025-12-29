module seq_detector_compar(input  in, clk, reset,output reg moore_y,output reg mealy_y,output reg non_overlapping_moore_y,output reg non_overlapping_mealy_y);

parameter S0=2'b00, S1=2'b01, S2=2'b10, S3=2'b11;

/* ---------------- MOORE FSM ---------------- */
reg [1:0] ps_moore, ns_moore;

always @(posedge clk or posedge reset) begin
    if (reset) ps_moore <= S0;
    else       ps_moore <= ns_moore;
end

always @(*) begin
    ns_moore = ps_moore;
    moore_y  = 1'b0;

    case (ps_moore)
        S0: if (in) ns_moore = S1;
        S1: if (in) ns_moore = S1; else ns_moore = S2;
        S2: if (in) ns_moore = S3; else ns_moore = S0;
        S3: begin
                moore_y = 1'b1;
                if (in) ns_moore = S1;
                else    ns_moore = S2;
            end
        default: ns_moore = S0;
    endcase
end

/* ---------------- MEALY FSM ---------------- */
reg [1:0] ps_mealy, ns_mealy;

always @(posedge clk or posedge reset) begin
    if (reset) ps_mealy <= S0;
    else       ps_mealy <= ns_mealy;
end

always @(*) begin
    ns_mealy = ps_mealy;
    mealy_y  = 1'b0;

    case (ps_mealy)
        S0: if (in) ns_mealy = S1;
        S1: if (in) ns_mealy = S1; else ns_mealy = S2;
        S2: if (in) begin
                    mealy_y = 1'b1;
                    ns_mealy = S1;
                end
            else ns_mealy = S0;
        default: ns_mealy = S0;
    endcase
end

/* -------- NON-OVERLAPPING MOORE FSM -------- */
reg [1:0] ps_nom, ns_nom;

always @(posedge clk or posedge reset) begin
    if (reset) ps_nom <= S0;
    else       ps_nom <= ns_nom;
end

always @(*) begin
    ns_nom = ps_nom;
    non_overlapping_moore_y = 1'b0;

    case (ps_nom)
        S0: if (in) ns_nom = S1;
        S1: if (in) ns_nom = S1; else ns_nom = S2;
        S2: if (in) ns_nom = S3; else ns_nom = S0;
        S3: begin
                non_overlapping_moore_y = 1'b1;
                ns_nom = S0;
            end
        default: ns_nom = S0;
    endcase
end

/* -------- NON-OVERLAPPING MEALY FSM -------- */
reg [1:0] ps_nmealy, ns_nmealy;

always @(posedge clk or posedge reset) begin
    if (reset) ps_nmealy <= S0;
    else       ps_nmealy <= ns_nmealy;
end

always @(*) begin
    ns_nmealy = ps_nmealy;
    non_overlapping_mealy_y = 1'b0;

    case (ps_nmealy)
        S0: if (in) ns_nmealy = S1;
        S1: if (in) ns_nmealy = S1; else ns_nmealy = S2;
        S2: if (in) begin
                    non_overlapping_mealy_y = 1'b1;
                    ns_nmealy = S0;
                end
            else ns_nmealy = S0;
        default: ns_nmealy = S0;
    endcase
end
endmodule
