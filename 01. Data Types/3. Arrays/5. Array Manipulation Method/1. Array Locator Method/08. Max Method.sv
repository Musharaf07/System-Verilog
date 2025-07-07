// Array Locator Method
//Max Method
module max_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("max : %p", dt.max());
    
  end
endmodule

// KERNEL: max : '{12}
