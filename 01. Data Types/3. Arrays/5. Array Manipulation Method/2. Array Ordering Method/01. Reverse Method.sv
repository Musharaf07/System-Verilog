// Array Ordering Method
//Reverse Method
module reverse_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,9,12};
    dt.reverse();
    $display("Reverse : %p", dt);
    
  end
endmodule

// KERNEL: Reverse : '{12, 9, 11, 10, 8, 5, 9, 2, 6, 4, 3, 7}
