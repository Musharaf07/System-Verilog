// Queue Method
// Unique Method
module unique_method;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1,1,5,8,8,9,11};
    q1 = {"S", "Z", "A", "R", "Z",  "A"};
   
    $display("Unique of q = %p", q.unique());
    $display("Unique of q1 = %p", q1.unique());
    
  end
endmodule
