
module cmoss(input a,b,output out);
  supply1 vdd;
  supply0 gd;
  wire w1;
  pmos(out,vdd,a);
  pmos(out,vdd,b);
  nmos(out,w1,a);
  nmos(w1,gnd,b);
endmodule
