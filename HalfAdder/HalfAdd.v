module HalfAdd(Cout, Sum, A, B); //initiaizing the Half Add function with 4 input
    input A, B; //two inputs A and B
    output Cout, Sum;//two outputs carry and sum

    wire AnandB, sum1, sum2; //3 wires intiailized with the values of sum1, sum2, and the nand of inputs A and B

    nand nand0(AnandB, A, B); //declaring the nand function with 3 parameters
    nand nand1(sum1, A, AnandB); //declaring the nand function with 3 parameters
    nand nand2(sum2, B, AnandB);//declaring the nand function with 3 parameters
    nand nand3(Cout, AnandB, AnandB);//declaring the nand function with 3 parameters
    nand nand4(Sum, sum1, sum2);//declaring the nand function with 3 parameters
endmodule //END OF MODULE