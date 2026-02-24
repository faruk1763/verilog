module sipo_tb;
parameter n = 4;
reg clk;
reg rst;
reg load;
reg sin;
wire [n-1:0] q;
sipo  uut (.clk(clk),.rst(rst),.load(load), .sin(sin), .q(q));
always #5 clk = ~clk;
initial begin
    clk = 0;
    rst = 1;
    load = 0;
    sin = 0;
    #10;
    rst = 0;
    load = 1;
    sin = 1; #10;
    sin = 0; #10;
    sin = 1; #10;
    sin = 1; #10;
    load = 0;
    #20;
    $finish;
end
initial begin
    $monitor("Time=%0t rst=%b load=%b sin=%b q=%b",
              $time, rst, load, sin, q);
end
  initial begin
    $dumpfile("a.vcd");
    $dumpvars(0,sipo_tb);
  end
endmodule
