// Queue Method
// Find Min Method
module min_method;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"S", "Z", "A", "R"};
   
    $display("Min of q = %p", q.min());
    $display("Min of q1 = %p", q1.min());
    
  end
endmodule
