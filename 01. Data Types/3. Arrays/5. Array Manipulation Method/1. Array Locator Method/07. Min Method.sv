// Array Locator Method
//Min Method
module min_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    $display("min : %p", dt.min());
    
  end
endmodule

//KERNEL: min : '{2}
