// Queue Method
//Insert Method
module insert_method;
  int q[$];
  string q1[$:4];

  initial begin
    
    q = {5,3,8,9,2,6,0,1};
    q1 = {"X", "Y", "Z"};
    
    q.insert(4, 12);
    $display("q = %p", q);
    
    q1.insert(1, "W");
    $display("q1 = %p", q1);
    
  end
endmodule
