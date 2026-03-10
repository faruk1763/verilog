module sram(input clk,we,input [7:0]din,input [3:0]addr,output reg[7:0]dout=0);
  reg [7:0]mem[15:0];
  always@(posedge clk)
    begin 
      if(we) 
        mem[addr]<=din;
      else
        dout<=mem[addr];
    end
endmodule
