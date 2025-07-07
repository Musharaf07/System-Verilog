// Array Reduction Method
//Or Method
module or_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,10,11};
    
    $display("Or: %p", dt.or());
    
  end
endmodule

// KERNEL: Or: 15
