module floprsen(input            clk,
                input            reset,
                input            set,
                input      [3:0] d,
                output reg [3:0] q);

  always @(posedge clk, reset, set)//updated and removed posedge from reset
    begin//added begin and end statement
        if (reset)    q <= 0; //tested if statement
        else          q <= d;
        
        if(set) q<=1;

    end

endmodule

