module FSM(input      clk,
   input      a,
   input reset, //ADDED a reset
   output reg out1, out2);
   reg  state, nextstate;

   // state register
   always @(posedge clk, posedge reset) //is missing the reset input initialization
   begin
     if (reset)
       state <= 1'b0;
     else
       state <= nextstate;
   end
   // next state logic
   always @(*)
   begin
     case (state)
       1'b0: if (a) nextstate <= 1'b1;
             else nextstate <= 1'b0;
       1'b1: if (~a) nextstate <= 1'b1; //swapped the nextstate values
             else nextstate <= 1'b0;
     endcase
   end

   // output logic (combinational)
   always @ (*)
   begin
     if (state == 1'b0) out1 = 1'b0;
     else            out2 = 1'b1;
   end
endmodule
