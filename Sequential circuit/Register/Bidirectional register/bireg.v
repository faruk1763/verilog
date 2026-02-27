module bireg #(parameter n=4)(input clk, input rst,input data_in, input c,output data_out);

reg [n-1:0] q;
always @(posedge clk or posedge rst) begin
    if (rst) begin
      q <= 0;
    end 
    else if (c) 
       q <= {q[n-2:0], data_in}; 
      else
        q <= {data_in, q[n-1:1]}; 
     end
  assign data_out = (c) ? q[n-1] : q[0];

endmodule
