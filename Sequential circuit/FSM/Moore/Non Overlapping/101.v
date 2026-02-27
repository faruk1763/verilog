module moorenonover(input x,clk,rst,output reg y);
  reg [1:0]state,nstate;
  parameter s1=2'b00,
            s2=2'b01,
            s3=2'b10,
            s4=2'b11;
  always @(posedge clk or posedge rst)
   begin if(rst)
      state<=s1;
  else
    state<=nstate;
   end 
  always@(*)begin
    case(state)
      s1:nstate=(x)?s2:s1;
      s2:nstate=(x)?s2:s3;
      s3:nstate=(x)?s4:s1;
      s4:nstate=s1;
      default :nstate=s1;
    endcase
  end
    always@(*)begin
      case(state)
        s4:y=1;
        default:y=0;
      endcase
  end
endmodule
