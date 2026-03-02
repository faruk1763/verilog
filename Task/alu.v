module test(
  input[1:0]a,b,
  output reg [3:0]out,
  input [1:0]mode);
  task alu;
    input[1:0]a,b;
    output[3:0]out;
    begin
      case(mode)
        0:out=a+b;
        1:out=a-b;
        2:out=a*b;
        3:out=a/b;
      endcase
    end
  endtask
  always@(*)
    begin
      alu(a,b,out);
    end
endmodule
  
