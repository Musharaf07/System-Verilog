// Queue Method
// Reverse Method
module reverse_method;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"S", "Z", "A", "R"};
    
    q.reverse();
    $display("Reverse of q = %p", q);
    
    q1.reverse();
    $display("Reverse of q1 = %p", q1);
    
  end
endmodule
