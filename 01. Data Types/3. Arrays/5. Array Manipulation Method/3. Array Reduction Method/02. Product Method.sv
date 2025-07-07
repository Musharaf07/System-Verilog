// Array Reduction Method
//Product Method
module product_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,10,11};
    
    $display("Product : %p", dt.product());
    
  end
endmodule

// KERNEL: Product : 2310
