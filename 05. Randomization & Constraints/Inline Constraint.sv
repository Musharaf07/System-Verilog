//Inline Constraint
class Packet;
  rand bit [3:0] addr;
  
  constraint c1 { addr inside {[4:8]};}
  
endclass

module packetn;
  Packet p1 = new();
  
  initial begin
    repeat(5) begin
    p1.randomize() with {addr == 6;};
    $display ("inline addr = %0d",p1.addr);
    
    p1.randomize();
      $display("Class addr = %0d",p1.addr);
    end
  end
endmodule
