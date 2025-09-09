// 2 State Data type
module int_datatype;
  int a,b,c;
  
  
  initial begin
    $display("Before Initialization, Default Values of a = %0d , b = %0d, c = %0d",a,b,c);
    
    a = 32'd46583465;
    b = -16'd00005;
    c = a / b;
    
    $display (" After Initialization, Value of a = %0d , b = %0d, c = %0d",a,b,c);
  end
endmodule

/*# KERNEL: Before Initialization, Default Values of a = 0 , b = 0, c = 0
# KERNEL:  After Initialization, Value of a = 46583465 , b = -5, c = -9316693 */
