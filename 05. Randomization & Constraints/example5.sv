/* 5.)  Write a constraint for count 0 to 40 [ skip 10,20,30,40] */
class packet;
  rand int a;
  constraint const1 { (a inside {[0:40]});
                     !(a inside {10,20,30,20});  }
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
# a =  37
# a =  35
# a =  22
# a =  15
# a =  21
# a =  2
# a =  6
# a =  3
# a =  35
# a =  25
*/
