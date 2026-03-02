
module test;
  reg [1:0]x,y;
  reg [2:0]z;
  task add_number;
    input[1:0]a,b;
    output [2:0]c;
  begin  c=a+b;
  end
    endtask
  initial begin 
    x=2;
    y=2;
    add_number(x,y,z);
    $display("x=%d y=%d z=%d",x,y,z);
  end
endmodule
