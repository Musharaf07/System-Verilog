// Array Ordering Method
//Rsort Method
module rsort_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,12};
    dt.rsort();
    $display("Rsort : %p", dt);
    
  end
endmodule

// KERNEL: Rsort : '{12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2}
