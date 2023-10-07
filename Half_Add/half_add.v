/*
half adder module
Auther: R Ansh Joseph
Date: Oct7 2023
Time: 8:35PM
*/
module half_adder(bit1,bit2,sum,carry);
    input bit1,bit2;
    output carry,sum;
    xor  G1 (sum,bit1,bit2);
    and  G2 (carry,bit1,bit2);
endmodule