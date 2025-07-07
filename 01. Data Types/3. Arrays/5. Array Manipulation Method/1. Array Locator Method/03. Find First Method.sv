// Array Locator Method
//find First Method
module find_first_method;
  int dt[];
  int r[$];

  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("S : %p", dt.find_first(x) with (x > 4));
    $display("T : %p", dt.find_first(x) with (x > 8));
  end
endmodule

// KERNEL: S : '{7}
// KERNEL: T : '{9}
