// Array Locator Method
//Unique Method
module Unique_method;
  int dt[];
  
  initial begin
    
    dt = '{5,6,3,7,3,3,9};
    $display("Unique : %p", dt.unique());
    
  end
endmodule

// KERNEL: Unique : '{3, 5, 6, 7, 9}
