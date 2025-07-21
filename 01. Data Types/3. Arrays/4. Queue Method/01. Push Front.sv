// Queue Method
//Push Front Method
module push_front_method;
  int q[$];
  string q1[$:3];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};
    
    q.push_front(4);
    $display("q = %p", q);
    q1.push_front("W");
    $display("q1 = %p", q1);
    q1.push_front("V");
    $display("q1 = %p", q1);
  
  end
endmodule
