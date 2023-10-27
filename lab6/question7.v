module priority(input      [3:0] a,
   output reg [1:0] y); //updated reg size
   always @(*)
   begin //added begin end statements
/*     if      (a[3]) y = 4'b1000;
     else if (a[2]) y = 4'b0100;
     else if (a[1]) y = 4'b0010;
     else if (a[0]) y = 4'b0001;*/

    if       (a[3]) y = 2'b11;
     else if (a[2]) y = 2'b10;
     else if (a[1]) y = 2'b01;
     else if (a[0]) y = 2'b00;
   end

endmodule

