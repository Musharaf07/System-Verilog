// Inside Constraint
class Packet;
  randc bit [4:0] addr;
  constraint c1 {addr inside {[20:25]};}  
endclass

module Packet1;
  
  initial begin
    Packet p1 = new();
    
    for (int i = 0; i < 12; i++) begin
      p1.randomize();
      $display (" i[%0d] -- addr =  %0d ",i, p1.addr);
    end
  end
endmodule
