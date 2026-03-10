module dram_tb();
reg clk = 0;
reg we_a, we_b;
reg [7:0] din_a, din_b;
reg [3:0] addr_a, addr_b;
wire [7:0] dout_a, dout_b;
dram uut (
    .clk(clk),
    .we_a(we_a),
    .we_b(we_b),
    .din_a(din_a),
    .din_b(din_b),
    .addr_a(addr_a),
    .addr_b(addr_b),
    .dout_a(dout_a),
    .dout_b(dout_b)
);
always #5 clk = ~clk;
initial begin
    we_a = 0; we_b = 0;
    din_a = 0; din_b = 0;
    addr_a = 0; addr_b = 0;

    #10;
    we_a = 1; addr_a = 4; din_a = 8'hAA;
    we_b = 1; addr_b = 12; din_b = 8'hBB;
#10;we_a = 0; we_b = 0;
    addr_a = 4; addr_b = 12; #50;
    $finish;
end
initial begin
  $monitor("time=%0t clk=%b we_a=%b we_b=%b addr_a=%h addr_b=%h din_a=%h din_b=%h dout_a=%h dout_b=%h",
             $time,clk,we_a,we_b,addr_a,addr_b,din_a,din_b,dout_a,dout_b);
end
endmodule
