module modup_down(input clk,rst,n,output reg [3:0]q);
always@(posedge clk)
begin 
if(rst)
  q<=0;
else if(n)
  q<=q+1;
else
  q<=q-1;
end
endmodule
