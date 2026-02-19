module tb_counter;
  reg clk;
  reg rst;
  wire [3:0] q;
  counter uut (
    .clk(clk),
    .rst(rst),
    .q(q)
  );
initial begin
    #5;clk = 0;#5;rst=1;
    #5;clk=1;#5;rst=0;
    forever #5 clk = ~clk; 
  end

initial begin
    $monitor("Time=%0t | rst=%b | q=%b (%0d)", $time, rst, q, q);
  #200;$finish;
  end
  initial begin
    $dumpfile("gtkwave wave.vcd");     
    $dumpvars(0, tb_counter);  
  end

endmodule
