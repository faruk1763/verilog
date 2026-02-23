using switch level
module cmoss(input a,b,output out);
  supply1 vdd;
  supply0 gnd;
  wire w1;
  pmos(w1, vdd, a);
  pmos(out, w1, b);
  nmos(out, gnd, a);
  nmos(out, gnd, b);
endmodule

using gate level
module cmos_nor(input a,b,output y);
  nor n1(y,a,b);
endmodule
