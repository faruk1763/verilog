module bits(input[7:0]a,output reg [7:0]b);
  task reversed;
    input[7:0]x;
    output [7:0]y;
    integer i;
    begin
      for(i=0;i<8;i=i+1)begin
        y[i]=x[7-i];end
    end
  endtask
    always@(*)
      begin
        reversed(a,b);
      end
    endmodule
      
