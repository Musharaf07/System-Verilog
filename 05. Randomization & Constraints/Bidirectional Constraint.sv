// Bidirectional Constraints
class Packet;  
  rand bit [3:0] addr;  

  constraint Packet2{ addr > 7; addr < 14; }  
  constraint Packet1 { addr < 10; }
  
endclass  

module packetn;  
  initial begin    
    Packet p1;  
    p1 = new();  

    for (int i = 0; i < 10; i++) begin  
      p1.randomize();  
      $display("iteration %0d ---> addr = %0d", i, p1.addr);
    end
  end  
endmodule
