// Array Locator Method
//find Last Index Method
module find_Last_index_method;
  int dt[];
  int r[$];

  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("S : %p", dt.find_last_index(x) with (x < 12));
    $display("T : %p", dt.find_last_index(x) with (x > 9));
  end
endmodule

// KERNEL: S : '{10}
// KERNEL: T : '{11}
