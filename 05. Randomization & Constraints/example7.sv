//  Write a constraint to generate 18 zeros and no consecutive ones in a 32 bit variable. 
class Packet;
  rand bit [31:0] a;
  
  constraint cont1 { ($countones(a) == 14);
                    foreach(a[i])
                      if( i <= 30)
                        !(a[i] && a[i+1]);}
endclass

module Packets;
  Packet p;
  
  initial begin
    p = new();
    
    repeat(10) begin
      if(!(p.randomize()))
        $display(" Randomization Failed");
      else
        $display(" a = %b, (No.of ones = %0d) (No.of Zeros = %0d)",p.a,$countones(p.a), (32-$countones(p.a)));
    end
  end
endmodule                

/*
 a = 10101000100101010100010101010101, (No.of ones = 14) (No.of Zeros = 18)
 a = 01010100100101010101010100010101, (No.of ones = 14) (No.of Zeros = 18)
 a = 01001010101010100101010100010101, (No.of ones = 14) (No.of Zeros = 18)
 a = 01010101010100010101001001010101, (No.of ones = 14) (No.of Zeros = 18)
 a = 10101010101010100100100101010001, (No.of ones = 14) (No.of Zeros = 18)
 a = 10010101010010101010010100101001, (No.of ones = 14) (No.of Zeros = 18)
 a = 01010101001010101001010101000101, (No.of ones = 14) (No.of Zeros = 18)
 a = 01001010100101010101010100101010, (No.of ones = 14) (No.of Zeros = 18)
 a = 10101010100010101010001010101010, (No.of ones = 14) (No.of Zeros = 18)
 a = 01010101010010100010010101010101, (No.of ones = 14) (No.of Zeros = 18)
 */
