module srff (
    input  clk,
    input  rst,
    input  s,
    input  r,
    output reg q
);

always @(posedge clk or posedge rst) begin
    if (rst)
        q <= 1'b0;
    else if (s & r)
        q <= 1'bx;   // invalid state
    else if (s)
        q <= 1'b1;   // set
    else if (r)
        q <= 1'b0;   // reset
    // else hold state
end

endmodule
