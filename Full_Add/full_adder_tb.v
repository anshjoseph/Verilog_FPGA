/*
Auther: R Ansh Joseph
Date: Oct 8 2023
version: 0.0.1
Module: Full Adder Test banch
Dependency: Half Adder, Full Adder
*/
`include "./full_adder.v"

module full_adder_test_banch;
    reg bit1,bit2,cbit;
    wire sum,carry;
    full_adder M1(bit1,bit2,cbit,sum,carry);
    initial begin
      $dumpfile("full_adder.vcd");
      $dumpvars(0,full_adder_test_banch);

      bit1=0;bit2=0;cbit=0;
      #1
      bit1=0;bit2=0;cbit=1;
      #1
      bit1=0;bit2=1;cbit=0;
      #1
      bit1=0;bit2=1;cbit=1;
      #1
      bit1=1;bit2=0;cbit=0;
      #1
      bit1=1;bit2=0;cbit=1;
      #1
      bit1=1;bit2=1;cbit=0;
      #1
      bit1=1;bit2=1;cbit=1;
    end

endmodule