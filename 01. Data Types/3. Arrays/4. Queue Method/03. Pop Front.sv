// Queue Method
//Pop Front Method
module pop_front_method;
  int q[$];
  string q1[$:3];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};
    
    $display("popped = %p, q = %p", q.pop_front(), q);
    $display("popped = %p, q1 = %p", q1.pop_front(), q1);
    
  end
endmodule
