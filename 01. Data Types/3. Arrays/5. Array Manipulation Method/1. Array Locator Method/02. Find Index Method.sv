// Array Locator Method
//find index Method
module find_index_method;
  int dt[];
  int r[$];

  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("S : %p", dt.find_index(x) with (x == 5));
    $display("T : %p", dt.find_index(x) with (x == 9));
  end
endmodule

// KERNEL: S : '{6}
// KERNEL: T : '{5, 10}
