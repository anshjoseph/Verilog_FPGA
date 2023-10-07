/*
half adder module test banch
Auther: R Ansh Joseph
Date: Oct7 2023
Time: 8:39PM
*/
`include "./half_add.v"

module half_add_test_banch;
    reg bit1,bit2;
    wire sum,carry;

    half_adder HA1(bit1,bit2,sum,carry);

    initial begin
        $dumpfile("half_adder.vcd");
        $dumpvars(0,half_add_test_banch);
        /*
        To control the variable to dump in test file
        $dumpvars(0,half_add_test_banch);
        0: all variable
        */

        bit1 = 0;bit2 = 0;
        #1
        bit1 = 0;bit2 = 1;
        #1
        bit1 = 1;bit2 = 0;
        #1
        bit1 = 1;bit2 = 1;
    end

endmodule