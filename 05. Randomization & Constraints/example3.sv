/* 3.) Create a class "RandClass". Declare two-variable var1 and var2 of 8 bits and Write a constraint to generate a random value for a var1 within 50 and var2 [7:0] with the non repeated value in every randomization? Also, write an inline constraint for the variable var1 to generate the value 40.  
*/

class RandClass;
  rand bit [7:0] var1;
  rand bit [7:0] var2;
  
  constraint const1 { var1 < 50;}
  constraint const2 { unique{var2};}
endclass

module packetss;
  RandClass r1;
  
  initial begin
    r1 = new();
    
    repeat (10) begin
      if(r1.randomize())
        $display("a =  %0d, b = %0d",r1.var1, r1.var2);
    end
    
    if(r1.randomize() with {var1 == 40;}) begin
        $display("a =  %0d, b = %0d",r1.var1, r1.var2);
    end
    
  end
endmodule


/*
# a =  38, b = 75
# a =  45, b = 217
# a =  35, b = 64
# a =  2, b = 231
# a =  35, b = 239
# a =  10, b = 208
# a =  38, b = 254
# a =  5, b = 167
# a =  20, b = 45
# a =  27, b = 30
# a =  40, b = 48
*/
