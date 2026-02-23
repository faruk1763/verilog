module mux(input a,b,s,output y);
  assign y=s?a:b;
endmodule

mux using and gate

module and_mux(input a,b,output y);
  mux m1(.a(b),.b(1'b0),s(a),y(y));
endmodule

mux using or gate

module or_mux(input a,b,output y);
  mux m2(.a(1'b1),.b(b),.s(a),.y(y))
endmodule

mux using exor gate 

module exor_mux(input a,b,output y);
  mux m3(.a(~b),.b(b),.s(a),.y(y));
endmodule

mux using not gate

module not_mux(input a,b,s,output y);
  mux m4(.a(1'b0),.b(1'b1),.s(a),.y(y));
endmodule

mux using nand gate

module nand_mux(input a,b,s,output y);
  mux m5(.a(~b),.b(1'b1),.s(a),.y(y));
endmodule

mux using nor gate

module nor_mux(input a,b,s,output y);
  mux m6(.a(1'b0),.b(~b),.s(a),.y(y));
endmodule
