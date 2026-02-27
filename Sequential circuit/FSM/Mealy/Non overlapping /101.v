module mealynonover(input x,clk,rst,output reg y);
  reg [1:0]state,nstate;
  parameter s1=2'b00,
            s2=2'b01,
            s3=2'b10;
  always @(posedge clk or posedge rst)
   begin if(rst)
      state<=s1;
  else
    state<=nstate;
   end 
  always@(*)begin
    nstate=state; 
    y=0;
     case(state)
       s1:begin
         if(x)
           nstate=s2;
         else
           nstate=s1;
       end
       s2:begin
         if(x)
           nstate=s2;
         else
           nstate=s3;
         end
       
       s3:begin
         if(x)begin
           y=1;
           nstate=s1;
         end 
         else  begin
            nstate=s1;
        end
       end
       default: nstate = s1;
     endcase
       end
       endmodule
