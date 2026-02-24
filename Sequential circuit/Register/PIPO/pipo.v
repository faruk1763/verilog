module pipo#(parameter n=4)(input clk, rst, load,input [n-1:0] pin, output reg [n-1:0] pout);
always @(posedge clk or posedge rst) begin
    if (rst)
        pout <= 0;
    else if (load)
        pout <= pin;
    else
        pout<=pout;
end
endmodule
