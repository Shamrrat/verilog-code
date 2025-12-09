module corrected_read_write;
    reg [7:0] mem [0:15];
    reg w;
    reg [3:0] address;
    reg [7:0] din;
    reg [7:0] dout;
    reg clk;
    initial clk = 0;
    always #1 clk = ~clk;

    // Write on clock edge
    always @(posedge clk)
    begin
        if (w)
            mem[address] <= din;
    end
    // Async read
    always @(*) 
    begin
        if (!w)
            dout = mem[address];
        else
            dout = 8'b0;
    end
    initial begin
        // WRITE
        w = 1'b1;
        address = 4;
        din = 8'b10101010;
        #3; 
        $display("write: w=%b address=%d din=%b mem[%d]=%b",
                   w, address, din,address, mem[address]);
        // READ
        w = 1'b0;
        #1; 
        $display("read:  w=%b address=%d  mem[%d]=%b dout=%b",
                   w, address,address,mem[address],dout);
    end
endmodule
