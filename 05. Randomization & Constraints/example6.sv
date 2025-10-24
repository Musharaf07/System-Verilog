/* 6.)   Write a constraint for the 8-bit variable that provides distribution 80% for range 0-100 and the remaining 20% for range 101-255. 
*/

class packet;
  rand bit [7:0] a;
  constraint const1 { a dist  { [0:100] :/ 80, [101:255] :/20};}
endclass

module packetss;
  packet p1;
  
  initial begin
    p1 = new();
    
    repeat (10) begin
      if(p1.randomize())
        $display("a =  %0d",p1.a);
    end
  end
endmodule

/*
# a =  210
# a =  36
# a =  71
# a =  12
# a =  47
# a =  1
# a =  185
# a =  26
# a =  54
# a =  85
*/
