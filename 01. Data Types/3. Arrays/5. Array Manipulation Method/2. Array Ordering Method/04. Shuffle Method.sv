// Array Ordering Method
//Shuffle Method
module shuffle_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,12};
    dt.shuffle();
    $display("Shuffle : %p", dt);
    
  end
endmodule

// KERNEL: Shuffle : '{10, 8, 7, 9, 6, 12, 4, 3, 2, 5, 11}
