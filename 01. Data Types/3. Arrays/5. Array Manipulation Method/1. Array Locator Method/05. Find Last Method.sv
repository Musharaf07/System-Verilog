// Array Locator Method
//find Last Method
module find_Last_method;
  int dt[];
  int r[$];

  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("S : %p", dt.find_last(x) with (x < 8));
    $display("T : %p", dt.find_last(x) with (x < 3));
  end
endmodule

// KERNEL: S : '{5}
// KERNEL: T : '{2}
