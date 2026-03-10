module tb;
  reg clk=1;
  reg we=0;
  reg [7:0]din=0;
  reg [3:0]addr=0;
  wire [7:0]dout;
  sram dut(clk,we,din,addr,dout);
  always #5 clk=~clk;
  initial begin
   #10;
    we=1;  din=8'h5;addr=4'b0010;
    #45 we=0;addr=4'b0010;
      #200 $finish;
  end
  initial begin
    $monitor("t=%0t clk=%b we=%b din=%h addr=%b  dout=%b",
           $time,clk,we,din,addr,dout);
end
  initial begin
    $dumpfile("a.vcd");
    $dumpvars;
  end

endmodule 
