module usr#(parameter n=4)(input clk, rst, load, input [1:0] mode,input sin,input [n-1:0] pin,output sout, output [3:0] pout);
  reg [n-1:0] q;
 always @(posedge clk or posedge rst) begin
   if (rst) q <= 0;
    else if (load) begin
      case (mode)
        2'b00: q <= q;
        2'b01: q <= {q[n-2:0], sin}; 
        2'b10: q <= {sin, q[n-1:1]};
        2'b11: q <= pin;          
      endcase
    end
  end
  assign sout = q[n-1];
  assign pout = q;

endmodule
