// Queue Method
//Push Back Method
module push_back_method;
  int q[$];
  string q1[$:3];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};
    
    q.push_back(2);
    $display("q = %p", q);
    q1.push_back("A");
    $display("q1 = %p", q1);
    q1.push_back("B");
    $display("q1 = %p", q1);
  
  end
endmodule
