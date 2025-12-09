 module string;
 reg [2000:0] a;
 initial
 begin
	 a=" string in verilog";
 $display("a=%s",a);
end 
endmodule
