module pg(input a,b,c, d,output e);
  wire w1,w2;
  xor(w1,a,b);
  xor(w2,c,d);
  xor(e,w1,w2);
endmodule
