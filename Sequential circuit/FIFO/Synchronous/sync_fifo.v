module fifo(input clk,rst,wr_en,rd_en,input [3:0]din,output reg [3:0]  dout,output  full,empty);
  reg [2:0]wr_pt=0;
  reg[2:0] rd_pt=0;
  reg [3:0]mem[3:0];
  always@(posedge clk)
    begin
      if(rst)begin
       dout<=0;
      end
      else if(wr_en&&!full) begin
        mem[wr_pt]<=din;
      wr_pt<=wr_pt+1;
      end
      else if(rd_en&&!empty)begin
        dout<=mem[rd_pt];
        rd_pt<=rd_pt+1;end
    end
    assign full  = (wr_pt[2] != rd_pt[2]) && (wr_pt[1:0] == rd_pt[1:0]);
    assign empty = (wr_pt == rd_pt);
endmodule
  
      
        
       
        
  
