// Four State Data Types
module four_state_datatype_integer;
  integer a, b, c;
  
  assign c = a + b; 
  
  initial begin
    $display("Before Initializing, Default value of Integer a = %0d, b = %0d, c = %0d",a,b,c);
    a = 'd1350;
    b = 'd2655;
    #5;
    $display("After Initializing Value of Integer");         
    $display("a = %0d, b = %0d, c = %0d",a,b,c);
    
    a = 'hx;
    b = 'd2333;
    #5;
    $display("a = %0d, b = %0d, c = %0d",a,b,c);
   
    a = 'hz;
    b = 'd1111;
    #5;
    $display("a = %0d, b = %0d, c = %0d",a,b,c);         
    
  end
endmodule

/* # Before Initializing, Default value of Integer a = x, b = x, c = x
# After Initializing Value of Integer
# a = 1350, b = 2655, c = 4005
# a = x, b = 2333, c = x
# a = z, b = 1111, c = x */
