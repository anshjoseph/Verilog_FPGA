/*
Auther: R Ansh Joseph
Date: Oct 8 2023
version: 0.0.1
Module: Full Adder
Dependency: Half Adder
*/
`include "../Half_Add/half_add.v"

module full_adder(bit1,bit2,cbit,sum,carry);
    input bit1,bit2,cbit;
    output sum,carry;

    wire inter1_sum,inter1_carry;
    half_adder M1(bit1,bit2,inter1_sum,inter1_carry);
    half_adder M2(inter1_sum,cbit,sum,carry);
endmodule