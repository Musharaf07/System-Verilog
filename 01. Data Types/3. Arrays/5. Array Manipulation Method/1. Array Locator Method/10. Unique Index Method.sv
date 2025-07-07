// Array Locator Method
//Unique Index Method
module Unique_index_method;
  int dt[];
  int r[$];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("Unique : %p", dt.unique_index(x) with (x < 6));
    
  end
endmodule

// KERNEL: Unique : '{8, 1}
