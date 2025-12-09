module time_example;
time s,e,diff;
initial
begin
$display(" time=%t",$time);
#5;
s=$time;
$display("start time=%t",s);
#5;
e=$time;
$display("end time=%t",e);
diff=e-s;
$display("difference=%t",diff);
end 
endmodule


