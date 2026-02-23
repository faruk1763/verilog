module bitsub(input [3:0]a,b,input c,output [3:0]diff,br);
  wire w4,w5,w6;
  full_sub(a[0],b[0],c,[0]diff,w4);
  full_sub(a[1],b[1],w4,[1]diff,w5);
  full_sub(a[2],b[2],w5,[2]diff,w6);
  full_sub(a[3],b[3],w6,[3]diff,br);
endmodule
