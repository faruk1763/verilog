module asy_up_counter_tb;
  reg clk;
  reg rst;
  wire [1:0] q;
  asy_up_counter uut (
    .clk(clk), 
    .rst(rst), 
    .q(q)
  );
  always #5 clk = ~clk;

initial begin
    
  #5;  clk = 0;
   #5; rst = 1;
  #5;clk=1;
    #20 ;rst = 0;
 
    
    #200 $finish;
  end
  initial begin
    $monitor("Time=%0t | rst=%b | q[1]q[0]=%b (%0d)", $time, rst, q, q);
  end
  
 initial begin
   $dumpfile("a.vcd");  
        $dumpvars(0,asy_up_counter_tb);
    end
  
endmodule
