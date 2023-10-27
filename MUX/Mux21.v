module Mux21(out, in, sel);
    input [1:0] in;//2 bit input
    input sel;
    output out;

    wire notSel, out1, out2;//3 wires

    not not0(notSel, sel); //calling not function with 2 paremeters
    and and0(out1, notSel, in[0]);//calling and function with 3 paremeters
    and and1(out2, sel, in[1]);//calling and function with 3 paremeters
    or or0(out, out1, out2);//calling or function with 3 paremeters

endmodule