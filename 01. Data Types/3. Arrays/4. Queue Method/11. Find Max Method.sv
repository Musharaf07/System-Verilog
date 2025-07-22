// Queue Method
// Find Max Method
module max_method;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"S", "Z", "A", "R"};
   
    $display("Max of q = %p", q.max());
    $display("Max of q1 = %p", q1.max());
    
  end
endmodule
