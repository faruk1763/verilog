module addsub(input [7:0]a,b,output reg[7:0]ad,sb);
  task asb;
    input [7:0]x,y;
    output [7:0]c,d;
    begin
      c=x+y;
      d=x-y;
    end
  endtask
  always@(*)
    begin
      asb(a,b,ad,sb);
    end
endmodule
      
