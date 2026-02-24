module piso #(parameter n = 4)(input clk,input rst,input load,input [n-1:0] pin,output reg sout,output reg [n-1:0] q);
always @(posedge clk)begin
    if (rst) begin
        q <= 0;
        sout <= 0;
    end
    else if (load) begin
        q <= pin;
    end
    else begin
        sout <= q[n-1];
        q <= {q[n-2:0], 1'b0};
    end
end
endmodule
