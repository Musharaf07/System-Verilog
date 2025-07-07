// Array Locator Method
//find first Index Method
module find_first_index_method;
  int dt[];
  int r[$];

  initial begin
   
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("S : %p", dt.find_first_index(x) with (x > 10));
    $display("T : %p", dt.find_first_index(x) with (x > 6));
  end
endmodule

// KERNEL: S : '{9}
// KERNEL: T : '{0}
