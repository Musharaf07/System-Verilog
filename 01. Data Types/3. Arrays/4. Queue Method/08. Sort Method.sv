// Queue Method
// Sort Method
module sort_method;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"S", "Z", "A", "R"};
    
    q.sort();
    $display("Sorted q = %p", q);
    
    q1.sort();
    $display("Sorted q1 = %p", q1);
    
  end
endmodule
