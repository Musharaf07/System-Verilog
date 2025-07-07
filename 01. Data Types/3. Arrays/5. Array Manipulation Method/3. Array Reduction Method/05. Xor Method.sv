// Array Reduction Method
//Xor Method
module xor_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,10,11};
    
    $display("Xor: %p", dt.xor());
    
  end
endmodule

// KERNEL: Xor: 5
