module asy_up_counter(input clk,rst,output reg [1:0]q);
  always@(posedge clk or posedge rst)
begin
  if(rst)
    q[0]<=0;
  else
    q[0]<=~q[0];
end
  always@(negedge q[0]or posedge rst)
    begin
      if(rst)
        q[1]<=0;
    else
      q[1]<=~q[1];
  end
endmodule
      
