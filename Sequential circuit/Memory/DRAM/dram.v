module dram (
    input clk,
    input we_a, we_b,
    input [7:0] din_a, din_b,
    input [3:0] addr_a, addr_b,
    output reg [7:0] dout_a, dout_b);
reg [7:0] mem [15:0];
always @(posedge clk) begin
        if (we_a) begin
            mem[addr_a] <= din_a;
        end
        dout_a = mem[addr_a];
        if (we_b) begin
            mem[addr_b] <= din_b;
        end
        dout_b <= mem[addr_b];
    end
  endmodule
