// Array Reduction Method
//Sum Method
module sum_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,12};
    
    $display("Sum : %p", dt.sum());
    
  end
endmodule

// KERNEL: Sum : 77
