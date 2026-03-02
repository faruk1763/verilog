module add(input[2:0] a,b,output reg[3:0] c);
  function [3:0]d;
    input [2:0]a,b;
    begin
      d=a+b;
    end
  endfunction
  always@(*)
    begin
      c=d(a,b);
    end
endmodule
