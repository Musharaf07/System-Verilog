// Array Locator Method
//find Method
module find_method;
  int dt[];
  int r[$];

  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("S : %p", dt.find(x) with (x > 7));
    $display("T : %p", dt.find(x) with (x < 5));
  end
endmodule

//KERNEL: S : '{9, 8, 10, 11, 9, 12}
//KERNEL: T : '{3, 4, 2}
