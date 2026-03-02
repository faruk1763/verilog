module sq(input[7:0]a,output reg [15:0] q);
  task squ;
    input [7:0]x;
    output [15:0] y;
    begin
      y=x*x;
    end
  endtask
    always@(*)
      begin
        squ(a,q);
      end
    endmodule
