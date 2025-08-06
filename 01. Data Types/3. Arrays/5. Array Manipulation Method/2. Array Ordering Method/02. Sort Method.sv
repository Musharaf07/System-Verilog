// Array Ordering Method
//Sort Method
module sort_method;
  int dt[];
  
  initial begin
    
    dt = '{7,3,4,6,2,9,5,8,10,11,12};
    dt.sort();
    $display("Sort : %p", dt);
    
  end
endmodule

//  Sort : '{2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12} 
