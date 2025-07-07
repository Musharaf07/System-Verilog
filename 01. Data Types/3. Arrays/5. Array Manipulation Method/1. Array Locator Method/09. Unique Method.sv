// Array Locator Method
//Unique Method
module Unique_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("Unique : %p", dt.unique(x) with (x < 3));
    
  end
endmodule

// KERNEL: Unique : '{10, 2}
