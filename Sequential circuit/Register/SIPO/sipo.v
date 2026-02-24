module sipo#(parameter n=4)(input clk,rst,load,sin,output reg [n-1:0]pout);
 always @(posedge clk )
begin
if(rst)
 pout<=0;
else if(load)
 pout<={sin,pout[n-1:1]};
end
endmodule
