module switch_level(input a,output y);
supply1 vdd;
supply0 gnd;
pmos(y,vdd,a);
nmos(y,gnd,a);
endmodule
