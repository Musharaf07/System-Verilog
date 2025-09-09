// 2 State Data type
module longint_datatype;
  longint a,b,c;
  
  initial begin
    $display("Before Initialization, Default Values of a = %0d , b = %0d, c = %0d",a,b,c);
    
    a = 64'd46583465;
    b = 64'd0125545;
    c = a + b;
    
    $display (" After Initialization, Value of a = %0d , b = %0d, c = %0d",a,b,c);
    
    #10;
    b = c;
    c = a;
    
    $display (" After Initialization, Value of a = %0d , b = %0d, c = %0d",a,b,c);
    
  end
endmodule

/*# KERNEL: Before Initialization, Default Values of a = 0 , b = 0, c = 0
# KERNEL:  After Initialization, Value of a = 46583465 , b = 125545, c = 46709010
# KERNEL:  After Initialization, Value of a = 46583465 , b = 46709010, c = 46583465 */
