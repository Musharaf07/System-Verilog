// Inverted Inside Constraint
class Packet;
  randc bit [3:0] addr;
  constraint c1 {!(addr inside {[5:10]});}  
endclass

module Packet1;
  
  initial begin
    Packet p1 = new();
    
    for (int i = 0; i < 20; i++) begin
      p1.randomize();
      $display (" i[%0d] -- addr =  %0d ",i, p1.addr);
    end
  end
endmodule
