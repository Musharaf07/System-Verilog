// Queue Method
//Pop Back Method
module pop_back_method;
  int q[$];
  string q1[$:3];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};
    
    $display("popped = %p, q = %p", q.pop_back(), q);
    $display("popped = %p, q1 = %p", q1.pop_back(), q1);
    
  end
endmodule
