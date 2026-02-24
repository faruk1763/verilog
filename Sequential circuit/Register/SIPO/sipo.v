module sipo#(parameter n=4)(input clk,rst,load,sin,output reg [n-1:0]q);
 always @(posedge clk )
begin
if(rst)
 q<=1'b0;
else if(load)
 q<={sin,q[n-1:1]};
end
endmodule
