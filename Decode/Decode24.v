module Decode24(out, in);
input[1:0] in;//2 bit input
output[3:0] out;//4 bit output

wire notA, notB;//2 wires

not not0(notA, in[0]);//calling not function with 2 paremeters
not not1(notB, in[1]);//calling not function with 2 paremeters
and and0(out[0], notA, notB);//calling and function with 3 paremeters
and and1(out[1], in[0], notB);//calling and function with 3 paremeters
and and2(out[2], in[1], notA);//calling and function with 3 paremeters
and and3(out[3], in[0], in[1]);//calling and function with 3 paremeters


endmodule