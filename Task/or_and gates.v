module gate(
  input[1:0]a,b,
  output reg [1:0]q_or,q_and);
  task or_and;
    input[1:0]a,b;
    output [1:0] q_or,q_and;
    begin
      q_or=a | b;
      q_and= a&b;
    end
  endtask
  always@(*)
    begin or_and(a,b,q_or,q_and);
    end
endmodule
    
