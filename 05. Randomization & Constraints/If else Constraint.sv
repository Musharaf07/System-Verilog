// if else Constraints
class Packet;  
  rand bit [3:0] addr;
  rand bit [3:0] data;

  constraint packet1 { 
    if (addr inside {[0:3]})
      data == 10;
    else 
      data == 13;
  }
endclass 

module packetn;  
  initial begin    
    Packet p1;  
    p1 = new();  

    for (int i = 0; i < 10; i++) begin  
      p1.randomize();  
      $display("iteration %0d ---> addr = %0d, data = %0h", i, p1.addr, p1.data);
    end
  end  
endmodule
