// Solve Before Constraint
class solve_before;
  rand bit  addr;
  rand bit [3:0] data;
   constraint sb1 { solve addr before data;}
   constraint sb2 { (addr == 1) -> (data == 0);}
 
endclass

module packetn;
  initial begin
    solve_before p1;
    p1 = new();
    
    for (int i = 0; i < 150; i++) begin
      if (p1.randomize()==1)
      $display("Iteration = %0d, addr = %0d, data = %0d", i, p1.addr, p1.data);
    else
      $display("Randomization failed!");
    end
  end
endmodule
