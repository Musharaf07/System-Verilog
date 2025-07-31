// Foreach Constraint
class packet;
  rand bit [7:0] addr[];
  rand bit [7:0] data[];
  
  constraint addr1 {
    foreach (addr[i])
      addr[i] == i + 1; }
  constraint data1 {
    foreach (data[i])
      data[i] < 2 * (i+1); }
endclass

module packetn;
  initial begin
    packet p1;
    p1 = new();
    p1.addr = new[5];
    p1.data = new[5];
    
    if (p1.randomize()==1)
      for (int i = 0; i < 5; i++)
        $display("Iteration = %0d, addr = %0d, data = %0d", i, p1.addr[i], p1.data[i]);
    else
      $display("Randomization failed!");
  end
endmodule
