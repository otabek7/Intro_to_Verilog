module mux2(input [3:0] d0, d1,  input            s,  output reg [3:0] y);

  always @(/*posedge*/ s, d0, d1)//remove posedge and add d0 and d1 as triggers
    begin
        if (s) y = d1;
        else   y = d0;
    end
endmodule

