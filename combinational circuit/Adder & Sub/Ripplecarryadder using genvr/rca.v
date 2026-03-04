
module fa(input a,b,cin,output sum,carry);
assign sum  = a ^ b ^ cin;
assign carry = (a & b) | (b & cin) | (a & cin);
endmodule
module ra(input[3:0] aa,bb,
          input cc,output[3:0] ss,
          output cout);
  wire [4:0]w;
  genvar i;
  generate
    for (i=0;i<4;i=i+1)
      begin: rca
        if(i==0)
          fa rc(aa[i],bb[i],cc,ss[i],w[1]);
        else 
          fa rc(aa[i],bb[i],w[i],ss[i],w[i+1]);
      end
  endgenerate
  assign cout=w[4];
endmodule
