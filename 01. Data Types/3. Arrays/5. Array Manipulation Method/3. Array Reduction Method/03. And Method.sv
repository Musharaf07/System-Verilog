// Array Reduction Method
//And Method
module and_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,10,11};
    
    $display("And : %p", dt.and());
    
  end
endmodule

// KERNEL: And : 2
