//Static Constraint
class Packet;
  rand bit [2:0] addr;
  rand bit [2:0] data;
  
  constraint c1 { addr inside {[0:3]};}
  static constraint c2 { data inside {[4:7]};}
endclass

module Packetn;
  Packet p1, p2;
  initial begin
    p1 = new();
    p2 = new();
    
    $display(" Before Disable Constraint ");
    
    for (int i = 0; i < 2; i++) begin
    p1.randomize();
    p2.randomize();
      $display("p1.  addr = %0d, data = %0d ", p1.addr, p1.data);
      $display("p2.  addr = %0d, data = %0d ", p2.addr, p2.data);
    end
    
    
    $display(" After Disable Constraint ");
    p1.c1.constraint_mode(0);
    p2.c2.constraint_mode(0);
    
    for(int i = 0; i < 2;i++) begin
      p1.randomize();
      p2.randomize();
      $display("p1.  addr = %0d, data = %0d ", p1.addr, p1.data);
      $display("p2.  addr = %0d, data = %0d ", p2.addr, p2.data);
    end
  end
endmodule
  
