// Queue Method
// Determine Size
module size_determine;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};
    
    $display("Size of q = %0d", q.size());
    $display("Size of q1 = %0d", q1.size());
    
  end
endmodule
