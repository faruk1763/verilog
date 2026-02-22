module graycodecounter#(parameter n=4)(input clk,rst,output [n-1:0]g);
  reg [n-1:0]b;
  always@(posedge clk or posedge rst)
   begin if(rst)
      b<=0;
  else
    b<=b+1;
   end
  assign g=b^(b>>1);
endmodule
