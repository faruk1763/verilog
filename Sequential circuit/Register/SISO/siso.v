module siso #(parameter n = 4)(input clk,input rst,input load,input sin,output reg sout,output reg [n-1:0] q);
always @(posedge clk) begin
    if (rst) begin
        q <= 0;
        sout <= 0;
    end
    else if (load) begin
    sout <= q[n-1];
    q <= {q[n-2:0], sin};
   end
    end
endmodule
