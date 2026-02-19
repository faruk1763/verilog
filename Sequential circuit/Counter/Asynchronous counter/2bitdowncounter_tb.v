module tb_asy_down_counter;
    reg clk;
    reg rst;
    wire [1:0] q;
    asy_down_counter uut (
        .clk(clk),
        .rst(rst),
        .q(q)
    );
   initial begin
        clk = 0;
      forever #5 clk = ~clk;  end

    
    initial begin
       #5; rst = 1;            
        #12;                
        rst = 0;
        #200;
      $finish;               
    end
  initial begin
        $monitor("Time=%0t clk=%b rst=%b q=%b", $time, clk, rst, q);
    end
      initial begin
        $dumpfile("a.vcd"); 
        $dumpvars(0, tb_asy_up_counter);  
    end

endmodule

