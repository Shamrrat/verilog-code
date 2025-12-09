module switch_level_tb;
reg a;
wire y;
switch_level dut (.a(a),.y(y));
initial
begin
   $monitor("time =%0t a=%b y=%b",$time,a,y);	
   $dumpfile("switch_level.vcd");
   $dumpvars(0,switch_level_tb);

        a = 0;  #10;
        a = 1;  #10;
        a = 0;  #10;
        a = 1;  #10;

        $finish;
end
endmodule
