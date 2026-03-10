module fifo_tb;
    reg clk, rst, wr_en, rd_en;
    reg [3:0] din;
    wire [3:0] dout;
    wire full, empty;
fifo uut (.clk(clk), .rst(rst),.wr_en(wr_en),.rd_en(rd_en),.din(din),.dout(dout),.full(full),.empty(empty));
always #5 clk = ~clk;
    initial begin
        clk = 0; rst = 1; wr_en = 0; rd_en = 0; din = 0;
        #1 rst = 0; 
        repeat(4) begin
            @(posedge clk);
            #1; 
            wr_en = 1;
            din = din + 1; 
        end
        @(posedge clk);
        #1 wr_en = 0; 
        #20;repeat(4) begin
            @(posedge clk);
            #1 rd_en = 1;
        end
        @(posedge clk);
        #1 rd_en = 0; 
       #50; $finish;
    end
    initial begin
        $monitor("Time=%0t | rst=%b | wr=%b rd=%b | Din=%h | Dout=%h | Full=%b | Empty=%b", 
                 $time, rst, wr_en, rd_en, din, dout, full, empty);
    end
initial begin
  $dumpfile("a.vcd");
  $dumpvars;
end
endmodule
