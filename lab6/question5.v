module and3(input      a, b, c,   output reg y);
  reg tmp;
  always @ (a, b, c)
    begin
      tmp = a & b; //change to a blocking statement
      y   <= tmp & c;
    end
endmodule
