//Randomization Methods
// Pre Randomization and Post Randomization
class Packet;
  rand bit [3:0] addr;
  rand bit [1:0] data;
  bit i = 0; 
  
  constraint c1 { addr inside {[5:12]}; data <= 3;}

  function void pre_randomize();
    if (i % 2 != 0) begin
      addr.rand_mode(0); 
      $display("Randomization of addr Failed");
    end
    else begin
      addr.rand_mode(1);
    end
    i++;
  endfunction
    
  function void post_randomize();
    $display ("Post Randomization - addr &  data");
  endfunction
  
endclass

module packetn;
  Packet p1 = new();
  
  initial begin
    for (int i = 0; i < 7; i++) begin
      p1.randomize();
      $display("Iteration %0d - addr = %0d, data = %0d", i, p1.addr, p1.data);
    end
  end
endmodule
