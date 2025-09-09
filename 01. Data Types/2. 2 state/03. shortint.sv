// 2 State Data type
module shortint_datatype;
  shortint a,b,c;
  
  
  initial begin
    $display("Before Initialization, Default Values of a = %0d , b = %0d, c = %0d",a,b,c);
    
    a = 16'd06554;
    b = 16'd00003;
    c = a * b;
    
    $display (" After Initialization, Value of a = %0d , b = %0d, c = %0d",a,b,c);
  end
endmodule

/*# KERNEL: Before Initialization, Default Values of a = 0 , b = 0, c = 0
# KERNEL:  After Initialization, Value of a = 6554 , b = 3, c = 19662 */
