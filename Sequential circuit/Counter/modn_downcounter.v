module modn_down #(parameter n = 10, parameter w = 4)(
    input clk,
    input rst,             
    output reg [w-1:0] q);
always @(posedge clk) begin
    if (rst)
      q <= n-1;            
    else  begin
      if (q == 0)
        q <= n-1;          
      else
        q <= q-1;         
    end
  end
  endmodule
