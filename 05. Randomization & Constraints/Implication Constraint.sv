// Implication Constraints
class Packet;  
  rand bit [3:0] addr;
  rand bit [3:0] data;
  
  constraint packet0 { addr inside {[7:10]};}
  constraint packet1 { (addr > 8) -> (data <= 1); }  
endclass  

module packetn;  
  initial begin    
    Packet p1;  
    p1 = new();  

    for (int i = 0; i < 10; i++) begin  
      p1.randomize();  
      $display("iteration %0d ---> addr = %0d, data = %0d", i, p1.addr, p1.data);
    end
  end  
endmodule
